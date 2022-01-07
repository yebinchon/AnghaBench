
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct writeback_control {int sync_mode; } ;
struct cifs_writedata {unsigned int nr_pages; unsigned int pagesz; TYPE_2__* cfile; scalar_t__ bytes; int credits; int pid; scalar_t__ tailsz; int * pages; scalar_t__ offset; int sync_mode; } ;
struct address_space {int host; } ;
struct TCP_Server_Info {TYPE_3__* ops; } ;
typedef int loff_t ;
struct TYPE_8__ {TYPE_1__* ses; } ;
struct TYPE_7__ {int (* async_writev ) (struct cifs_writedata*,int ) ;} ;
struct TYPE_6__ {scalar_t__ invalidHandle; int pid; int tlink; } ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;


 int EAGAIN ;
 unsigned int PAGE_SIZE ;
 int adjust_credits (struct TCP_Server_Info*,int *,scalar_t__) ;
 int cifs_writedata_release ;
 scalar_t__ i_size_read (int ) ;
 scalar_t__ min (scalar_t__,int ) ;
 scalar_t__ page_offset (int ) ;
 int stub1 (struct cifs_writedata*,int ) ;
 TYPE_4__* tlink_tcon (int ) ;

__attribute__((used)) static int
wdata_send_pages(struct cifs_writedata *wdata, unsigned int nr_pages,
   struct address_space *mapping, struct writeback_control *wbc)
{
 int rc;
 struct TCP_Server_Info *server =
    tlink_tcon(wdata->cfile->tlink)->ses->server;

 wdata->sync_mode = wbc->sync_mode;
 wdata->nr_pages = nr_pages;
 wdata->offset = page_offset(wdata->pages[0]);
 wdata->pagesz = PAGE_SIZE;
 wdata->tailsz = min(i_size_read(mapping->host) -
   page_offset(wdata->pages[nr_pages - 1]),
   (loff_t)PAGE_SIZE);
 wdata->bytes = ((nr_pages - 1) * PAGE_SIZE) + wdata->tailsz;
 wdata->pid = wdata->cfile->pid;

 rc = adjust_credits(server, &wdata->credits, wdata->bytes);
 if (rc)
  return rc;

 if (wdata->cfile->invalidHandle)
  rc = -EAGAIN;
 else
  rc = server->ops->async_writev(wdata, cifs_writedata_release);

 return rc;
}
