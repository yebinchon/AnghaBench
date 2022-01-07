
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct writeback_control {int range_start; int range_end; scalar_t__ sync_mode; scalar_t__ nr_to_write; scalar_t__ range_cyclic; } ;
struct inode {int i_sb; } ;
struct cifs_credits {int dummy; } ;
struct cifs_writedata {int refcount; int * pages; struct cifs_credits credits; struct cifsFileInfo* cfile; } ;
struct cifs_sb_info {unsigned int wsize; } ;
struct cifsFileInfo {int dummy; } ;
struct address_space {int writeback_index; struct inode* host; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef int pgoff_t ;
struct TYPE_6__ {TYPE_1__* ses; } ;
struct TYPE_5__ {int (* wait_mtu_credits ) (struct TCP_Server_Info*,unsigned int,unsigned int*,struct cifs_credits*) ;} ;
struct TYPE_4__ {struct TCP_Server_Info* server; } ;


 int CIFS_I (struct inode*) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EAGAIN ;
 int EBADF ;
 int ENOMEM ;
 int LLONG_MAX ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int SetPageError (int ) ;
 int VFS ;
 scalar_t__ WB_SYNC_ALL ;
 int add_credits_and_wake_if (struct TCP_Server_Info*,struct cifs_credits*,int ) ;
 int cifsFileInfo_put (struct cifsFileInfo*) ;
 int cifs_dbg (int ,char*,int) ;
 int cifs_get_writable_file (int ,int,struct cifsFileInfo**) ;
 TYPE_3__* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int cifs_writedata_release ;
 int end_page_writeback (int ) ;
 int free_xid (unsigned int) ;
 int generic_writepages (struct address_space*,struct writeback_control*) ;
 unsigned int get_xid () ;
 scalar_t__ is_interrupt_error (int) ;
 scalar_t__ is_retryable_error (int) ;
 int kref_put (int *,int ) ;
 int mapping_set_error (struct address_space*,int) ;
 int min (unsigned int,int) ;
 int put_page (int ) ;
 int redirty_page_for_writepage (struct writeback_control*,int ) ;
 int stub1 (struct TCP_Server_Info*,unsigned int,unsigned int*,struct cifs_credits*) ;
 int unlock_page (int ) ;
 struct cifs_writedata* wdata_alloc_and_fillpages (int,struct address_space*,int,int*,unsigned int*) ;
 unsigned int wdata_prepare_pages (struct cifs_writedata*,unsigned int,struct address_space*,struct writeback_control*,int,int*,int*,int*) ;
 int wdata_send_pages (struct cifs_writedata*,unsigned int,struct address_space*,struct writeback_control*) ;

__attribute__((used)) static int cifs_writepages(struct address_space *mapping,
      struct writeback_control *wbc)
{
 struct inode *inode = mapping->host;
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct TCP_Server_Info *server;
 bool done = 0, scanned = 0, range_whole = 0;
 pgoff_t end, index;
 struct cifs_writedata *wdata;
 struct cifsFileInfo *cfile = ((void*)0);
 int rc = 0;
 int saved_rc = 0;
 unsigned int xid;





 if (cifs_sb->wsize < PAGE_SIZE)
  return generic_writepages(mapping, wbc);

 xid = get_xid();
 if (wbc->range_cyclic) {
  index = mapping->writeback_index;
  end = -1;
 } else {
  index = wbc->range_start >> PAGE_SHIFT;
  end = wbc->range_end >> PAGE_SHIFT;
  if (wbc->range_start == 0 && wbc->range_end == LLONG_MAX)
   range_whole = 1;
  scanned = 1;
 }
 server = cifs_sb_master_tcon(cifs_sb)->ses->server;
retry:
 while (!done && index <= end) {
  unsigned int i, nr_pages, found_pages, wsize;
  pgoff_t next = 0, tofind, saved_index = index;
  struct cifs_credits credits_on_stack;
  struct cifs_credits *credits = &credits_on_stack;
  int get_file_rc = 0;

  if (cfile)
   cifsFileInfo_put(cfile);

  rc = cifs_get_writable_file(CIFS_I(inode), 0, &cfile);


  if (rc)
   get_file_rc = rc;

  rc = server->ops->wait_mtu_credits(server, cifs_sb->wsize,
         &wsize, credits);
  if (rc != 0) {
   done = 1;
   break;
  }

  tofind = min((wsize / PAGE_SIZE) - 1, end - index) + 1;

  wdata = wdata_alloc_and_fillpages(tofind, mapping, end, &index,
        &found_pages);
  if (!wdata) {
   rc = -ENOMEM;
   done = 1;
   add_credits_and_wake_if(server, credits, 0);
   break;
  }

  if (found_pages == 0) {
   kref_put(&wdata->refcount, cifs_writedata_release);
   add_credits_and_wake_if(server, credits, 0);
   break;
  }

  nr_pages = wdata_prepare_pages(wdata, found_pages, mapping, wbc,
            end, &index, &next, &done);


  if (nr_pages == 0) {
   kref_put(&wdata->refcount, cifs_writedata_release);
   add_credits_and_wake_if(server, credits, 0);
   continue;
  }

  wdata->credits = credits_on_stack;
  wdata->cfile = cfile;
  cfile = ((void*)0);

  if (!wdata->cfile) {
   cifs_dbg(VFS, "No writable handle in writepages rc=%d\n",
     get_file_rc);
   if (is_retryable_error(get_file_rc))
    rc = get_file_rc;
   else
    rc = -EBADF;
  } else
   rc = wdata_send_pages(wdata, nr_pages, mapping, wbc);

  for (i = 0; i < nr_pages; ++i)
   unlock_page(wdata->pages[i]);


  if (rc != 0) {
   add_credits_and_wake_if(server, &wdata->credits, 0);
   for (i = 0; i < nr_pages; ++i) {
    if (is_retryable_error(rc))
     redirty_page_for_writepage(wbc,
          wdata->pages[i]);
    else
     SetPageError(wdata->pages[i]);
    end_page_writeback(wdata->pages[i]);
    put_page(wdata->pages[i]);
   }
   if (!is_retryable_error(rc))
    mapping_set_error(mapping, rc);
  }
  kref_put(&wdata->refcount, cifs_writedata_release);

  if (wbc->sync_mode == WB_SYNC_ALL && rc == -EAGAIN) {
   index = saved_index;
   continue;
  }


  if (is_interrupt_error(rc)) {
   done = 1;
   break;
  }

  if (rc != 0 && saved_rc == 0)
   saved_rc = rc;

  wbc->nr_to_write -= nr_pages;
  if (wbc->nr_to_write <= 0)
   done = 1;

  index = next;
 }

 if (!scanned && !done) {




  scanned = 1;
  index = 0;
  goto retry;
 }

 if (saved_rc != 0)
  rc = saved_rc;

 if (wbc->range_cyclic || (range_whole && wbc->nr_to_write > 0))
  mapping->writeback_index = index;

 if (cfile)
  cifsFileInfo_put(cfile);
 free_xid(xid);
 return rc;
}
