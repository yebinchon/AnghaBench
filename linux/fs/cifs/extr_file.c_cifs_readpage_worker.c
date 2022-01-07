
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct page {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_5__ {void* i_atime; void* i_mtime; } ;


 int FYI ;
 int PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int cifs_dbg (int ,char*,int) ;
 int cifs_read (struct file*,char*,int,int *) ;
 int cifs_readpage_from_fscache (TYPE_1__*,struct page*) ;
 int cifs_readpage_to_fscache (TYPE_1__*,struct page*) ;
 void* current_time (TYPE_1__*) ;
 TYPE_1__* file_inode (struct file*) ;
 int flush_dcache_page (struct page*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (char*,int ,int) ;
 scalar_t__ timespec64_compare (void**,void**) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int cifs_readpage_worker(struct file *file, struct page *page,
 loff_t *poffset)
{
 char *read_data;
 int rc;


 rc = cifs_readpage_from_fscache(file_inode(file), page);
 if (rc == 0)
  goto read_complete;

 read_data = kmap(page);


 rc = cifs_read(file, read_data, PAGE_SIZE, poffset);

 if (rc < 0)
  goto io_error;
 else
  cifs_dbg(FYI, "Bytes read %d\n", rc);


 file_inode(file)->i_atime = current_time(file_inode(file));
 if (timespec64_compare(&(file_inode(file)->i_atime), &(file_inode(file)->i_mtime)))
  file_inode(file)->i_atime = file_inode(file)->i_mtime;
 else
  file_inode(file)->i_atime = current_time(file_inode(file));

 if (PAGE_SIZE > rc)
  memset(read_data + rc, 0, PAGE_SIZE - rc);

 flush_dcache_page(page);
 SetPageUptodate(page);


 cifs_readpage_to_fscache(file_inode(file), page);

 rc = 0;

io_error:
 kunmap(page);
 unlock_page(page);

read_complete:
 return rc;
}
