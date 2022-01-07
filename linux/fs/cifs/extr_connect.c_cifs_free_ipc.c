
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cifs_tcon {int dummy; } ;
struct cifs_ses {struct cifs_tcon* tcon_ipc; TYPE_1__* server; } ;
struct TYPE_4__ {int (* tree_disconnect ) (int,struct cifs_tcon*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int FYI ;
 int cifs_dbg (int ,char*,int) ;
 int free_xid (int) ;
 int get_xid () ;
 int stub1 (int,struct cifs_tcon*) ;
 int tconInfoFree (struct cifs_tcon*) ;

__attribute__((used)) static int
cifs_free_ipc(struct cifs_ses *ses)
{
 int rc = 0, xid;
 struct cifs_tcon *tcon = ses->tcon_ipc;

 if (tcon == ((void*)0))
  return 0;

 if (ses->server->ops->tree_disconnect) {
  xid = get_xid();
  rc = ses->server->ops->tree_disconnect(xid, tcon);
  free_xid(xid);
 }

 if (rc)
  cifs_dbg(FYI, "failed to disconnect IPC tcon (rc=%d)\n", rc);

 tconInfoFree(tcon);
 ses->tcon_ipc = ((void*)0);
 return rc;
}
