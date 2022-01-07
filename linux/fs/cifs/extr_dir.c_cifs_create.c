
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_fid {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef int __u32 ;
struct TYPE_4__ {int (* close ) (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;int (* new_lease_key ) (struct cifs_fid*) ;} ;
struct TYPE_3__ {struct TCP_Server_Info* server; } ;


 int CIFS_SB (int ) ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 unsigned int O_CREAT ;
 unsigned int O_EXCL ;
 unsigned int O_RDWR ;
 int PTR_ERR (struct tcon_link*) ;
 int cifs_dbg (int ,char*,struct inode*,struct dentry*,struct dentry*) ;
 int cifs_do_create (struct inode*,struct dentry*,unsigned int,struct tcon_link*,unsigned int,int ,int *,struct cifs_fid*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (int ) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int stub1 (struct cifs_fid*) ;
 int stub2 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int cifs_create(struct inode *inode, struct dentry *direntry, umode_t mode,
  bool excl)
{
 int rc;
 unsigned int xid = get_xid();







 unsigned oflags = O_EXCL | O_CREAT | O_RDWR;
 struct tcon_link *tlink;
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *server;
 struct cifs_fid fid;
 __u32 oplock;

 cifs_dbg(FYI, "cifs_create parent inode = 0x%p name is: %pd and dentry = 0x%p\n",
   inode, direntry, direntry);

 tlink = cifs_sb_tlink(CIFS_SB(inode->i_sb));
 rc = PTR_ERR(tlink);
 if (IS_ERR(tlink))
  goto out_free_xid;

 tcon = tlink_tcon(tlink);
 server = tcon->ses->server;

 if (server->ops->new_lease_key)
  server->ops->new_lease_key(&fid);

 rc = cifs_do_create(inode, direntry, xid, tlink, oflags, mode,
       &oplock, &fid);
 if (!rc && server->ops->close)
  server->ops->close(xid, tcon, &fid);

 cifs_put_tlink(tlink);
out_free_xid:
 free_xid(xid);
 return rc;
}
