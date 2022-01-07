
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct cifs_credits {int dummy; } ;
struct cifs_readdata {unsigned int bytes; int refcount; struct cifs_credits credits; int list; TYPE_4__* cfile; } ;
struct cifs_aio_ctx {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_8__ {scalar_t__ invalidHandle; int tlink; } ;
struct TYPE_7__ {TYPE_1__* ses; } ;
struct TYPE_6__ {int (* wait_mtu_credits ) (struct TCP_Server_Info*,unsigned int,unsigned int*,struct cifs_credits*) ;int (* async_readv ) (struct cifs_readdata*) ;} ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;


 int EAGAIN ;
 int add_credits_and_wake_if (struct TCP_Server_Info*,struct cifs_credits*,int ) ;
 int adjust_credits (struct TCP_Server_Info*,struct cifs_credits*,unsigned int) ;
 int cifs_reopen_file (TYPE_4__*,int) ;
 int cifs_uncached_readdata_release ;
 int kref_put (int *,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int msleep (int) ;
 int stub1 (struct TCP_Server_Info*,unsigned int,unsigned int*,struct cifs_credits*) ;
 int stub2 (struct cifs_readdata*) ;
 TYPE_3__* tlink_tcon (int ) ;

__attribute__((used)) static int cifs_resend_rdata(struct cifs_readdata *rdata,
   struct list_head *rdata_list,
   struct cifs_aio_ctx *ctx)
{
 unsigned int rsize;
 struct cifs_credits credits;
 int rc;
 struct TCP_Server_Info *server =
  tlink_tcon(rdata->cfile->tlink)->ses->server;

 do {
  if (rdata->cfile->invalidHandle) {
   rc = cifs_reopen_file(rdata->cfile, 1);
   if (rc == -EAGAIN)
    continue;
   else if (rc)
    break;
  }






  do {
   rc = server->ops->wait_mtu_credits(server, rdata->bytes,
      &rsize, &credits);

   if (rc)
    goto fail;

   if (rsize < rdata->bytes) {
    add_credits_and_wake_if(server, &credits, 0);
    msleep(1000);
   }
  } while (rsize < rdata->bytes);
  rdata->credits = credits;

  rc = adjust_credits(server, &rdata->credits, rdata->bytes);
  if (!rc) {
   if (rdata->cfile->invalidHandle)
    rc = -EAGAIN;
   else
    rc = server->ops->async_readv(rdata);
  }


  if (!rc) {

   list_add_tail(&rdata->list, rdata_list);
   return 0;
  }


  add_credits_and_wake_if(server, &rdata->credits, 0);
 } while (rc == -EAGAIN);

fail:
 kref_put(&rdata->refcount, cifs_uncached_readdata_release);
 return rc;
}
