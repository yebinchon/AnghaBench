
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TCP_Server_Info {int sec_mode; int sign; TYPE_1__* vals; } ;
struct TYPE_2__ {int signing_required; int signing_enabled; } ;


 int CIFSSEC_MAY_SIGN ;
 int CIFSSEC_MUST_SIGN ;
 int ENOTSUPP ;
 int VFS ;
 int cifs_dbg (int ,char*) ;
 scalar_t__ cifs_rdma_enabled (struct TCP_Server_Info*) ;
 int global_secflags ;

int
cifs_enable_signing(struct TCP_Server_Info *server, bool mnt_sign_required)
{
 bool srv_sign_required = server->sec_mode & server->vals->signing_required;
 bool srv_sign_enabled = server->sec_mode & server->vals->signing_enabled;
 bool mnt_sign_enabled = global_secflags & CIFSSEC_MAY_SIGN;





 if (!mnt_sign_required)
  mnt_sign_required = ((global_secflags & CIFSSEC_MUST_SIGN) ==
      CIFSSEC_MUST_SIGN);





 mnt_sign_enabled = mnt_sign_required ? mnt_sign_required :
    (global_secflags & CIFSSEC_MAY_SIGN);


 if (srv_sign_required) {
  if (!mnt_sign_enabled) {
   cifs_dbg(VFS, "Server requires signing, but it's disabled in SecurityFlags!");
   return -ENOTSUPP;
  }
  server->sign = 1;
 }


 if (mnt_sign_required) {
  if (!srv_sign_enabled) {
   cifs_dbg(VFS, "Server does not support signing!");
   return -ENOTSUPP;
  }
  server->sign = 1;
 }

 if (cifs_rdma_enabled(server) && server->sign)
  cifs_dbg(VFS, "Signing is enabled, and RDMA read/write will be disabled");

 return 0;
}
