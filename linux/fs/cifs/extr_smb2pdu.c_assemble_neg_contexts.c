
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_preauth_neg_context {int dummy; } ;
struct smb2_posix_neg_context {int dummy; } ;
struct smb2_netname_neg_context {int dummy; } ;
struct smb2_negotiate_req {void* NegotiateContextCount; int NegotiateContextOffset; } ;
struct smb2_encryption_neg_context {int dummy; } ;
struct smb2_compression_capabilities_context {int dummy; } ;
struct TCP_Server_Info {int hostname; scalar_t__ compress_algorithm; } ;


 int DIV_ROUND_UP (int,int) ;
 int VFS ;
 int build_compression_ctxt (struct smb2_compression_capabilities_context*) ;
 int build_encrypt_ctxt (struct smb2_encryption_neg_context*) ;
 unsigned int build_netname_ctxt (struct smb2_netname_neg_context*,int ) ;
 int build_posix_ctxt (struct smb2_posix_neg_context*) ;
 int build_preauth_ctxt (struct smb2_preauth_neg_context*) ;
 int cifs_server_dbg (int ,char*) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (unsigned int) ;
 unsigned int roundup (unsigned int,int) ;

__attribute__((used)) static void
assemble_neg_contexts(struct smb2_negotiate_req *req,
        struct TCP_Server_Info *server, unsigned int *total_len)
{
 char *pneg_ctxt = (char *)req;
 unsigned int ctxt_len;

 if (*total_len > 200) {

  cifs_server_dbg(VFS, "Bad frame length assembling neg contexts\n");
  return;
 }





 *total_len = roundup(*total_len, 8);

 pneg_ctxt = (*total_len) + (char *)req;
 req->NegotiateContextOffset = cpu_to_le32(*total_len);

 build_preauth_ctxt((struct smb2_preauth_neg_context *)pneg_ctxt);
 ctxt_len = DIV_ROUND_UP(sizeof(struct smb2_preauth_neg_context), 8) * 8;
 *total_len += ctxt_len;
 pneg_ctxt += ctxt_len;

 build_encrypt_ctxt((struct smb2_encryption_neg_context *)pneg_ctxt);
 ctxt_len = DIV_ROUND_UP(sizeof(struct smb2_encryption_neg_context), 8) * 8;
 *total_len += ctxt_len;
 pneg_ctxt += ctxt_len;

 if (server->compress_algorithm) {
  build_compression_ctxt((struct smb2_compression_capabilities_context *)
    pneg_ctxt);
  ctxt_len = DIV_ROUND_UP(
   sizeof(struct smb2_compression_capabilities_context),
    8) * 8;
  *total_len += ctxt_len;
  pneg_ctxt += ctxt_len;
  req->NegotiateContextCount = cpu_to_le16(5);
 } else
  req->NegotiateContextCount = cpu_to_le16(4);

 ctxt_len = build_netname_ctxt((struct smb2_netname_neg_context *)pneg_ctxt,
     server->hostname);
 *total_len += ctxt_len;
 pneg_ctxt += ctxt_len;

 build_posix_ctxt((struct smb2_posix_neg_context *)pneg_ctxt);
 *total_len += sizeof(struct smb2_posix_neg_context);
}
