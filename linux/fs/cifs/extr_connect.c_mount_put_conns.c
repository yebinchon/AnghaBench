
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_ses {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct TCP_Server_Info {int dummy; } ;


 int CIFS_MOUNT_POSIX_PATHS ;
 int cifs_put_smb_ses (struct cifs_ses*) ;
 int cifs_put_tcon (struct cifs_tcon*) ;
 int cifs_put_tcp_session (struct TCP_Server_Info*,int ) ;
 int free_xid (unsigned int) ;

__attribute__((used)) static inline void mount_put_conns(struct cifs_sb_info *cifs_sb,
       unsigned int xid,
       struct TCP_Server_Info *server,
       struct cifs_ses *ses, struct cifs_tcon *tcon)
{
 int rc = 0;

 if (tcon)
  cifs_put_tcon(tcon);
 else if (ses)
  cifs_put_smb_ses(ses);
 else if (server)
  cifs_put_tcp_session(server, 0);
 cifs_sb->mnt_cifs_flags &= ~CIFS_MOUNT_POSIX_PATHS;
 free_xid(xid);
}
