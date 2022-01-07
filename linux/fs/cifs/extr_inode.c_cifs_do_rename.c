
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct TYPE_8__ {scalar_t__ name; } ;
struct dentry {scalar_t__ d_parent; TYPE_4__ d_name; int d_sb; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_sb_info {int local_nls; } ;
struct cifs_open_parms {char const* path; int reconnect; struct cifs_fid* fid; int disposition; int create_options; int desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_fid {int netfid; } ;
struct TCP_Server_Info {TYPE_3__* vals; TYPE_2__* ops; } ;
struct TYPE_7__ {scalar_t__ protocol_id; } ;
struct TYPE_6__ {int (* rename ) (unsigned int const,struct cifs_tcon*,char const*,char const*,struct cifs_sb_info*) ;} ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;


 int CIFSSMBClose (unsigned int const,struct cifs_tcon*,int ) ;
 int CIFSSMBRenameOpenFile (unsigned int const,struct cifs_tcon*,int ,char const*,int ,int ) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_open (unsigned int const,struct cifs_open_parms*,int*,int *) ;
 int CREATE_NOT_DIR ;
 int DELETE ;
 int EBUSY ;
 int ENOSYS ;
 int FILE_OPEN ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 int cifs_remap (struct cifs_sb_info*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int stub1 (unsigned int const,struct cifs_tcon*,char const*,char const*,struct cifs_sb_info*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int
cifs_do_rename(const unsigned int xid, struct dentry *from_dentry,
        const char *from_path, struct dentry *to_dentry,
        const char *to_path)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(from_dentry->d_sb);
 struct tcon_link *tlink;
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *server;
 struct cifs_fid fid;
 struct cifs_open_parms oparms;
 int oplock, rc;

 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);
 tcon = tlink_tcon(tlink);
 server = tcon->ses->server;

 if (!server->ops->rename)
  return -ENOSYS;


 rc = server->ops->rename(xid, tcon, from_path, to_path, cifs_sb);






 if (rc == 0 || rc != -EBUSY)
  goto do_rename_exit;


 if (server->vals->protocol_id != 0)
  goto do_rename_exit;


 if (to_dentry->d_parent != from_dentry->d_parent)
  goto do_rename_exit;

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;

 oparms.desired_access = DELETE;
 oparms.create_options = CREATE_NOT_DIR;
 oparms.disposition = FILE_OPEN;
 oparms.path = from_path;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 rc = CIFS_open(xid, &oparms, &oplock, ((void*)0));
 if (rc == 0) {
  rc = CIFSSMBRenameOpenFile(xid, tcon, fid.netfid,
    (const char *) to_dentry->d_name.name,
    cifs_sb->local_nls, cifs_remap(cifs_sb));
  CIFSSMBClose(xid, tcon, fid.netfid);
 }
do_rename_exit:
 cifs_put_tlink(tlink);
 return rc;
}
