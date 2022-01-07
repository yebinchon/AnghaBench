
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_preauth_neg_context {int dummy; } ;
struct smb2_negotiate_rsp {scalar_t__ NegotiateContextCount; int NegotiateContextOffset; } ;
struct smb2_neg_context {scalar_t__ DataLength; scalar_t__ ContextType; } ;
struct smb2_encryption_neg_context {int dummy; } ;
struct smb2_compression_capabilities_context {int dummy; } ;
struct TCP_Server_Info {int posix_ext_supported; } ;


 int EINVAL ;
 int FYI ;
 scalar_t__ SMB2_COMPRESSION_CAPABILITIES ;
 scalar_t__ SMB2_ENCRYPTION_CAPABILITIES ;
 scalar_t__ SMB2_POSIX_EXTENSIONS_AVAILABLE ;
 scalar_t__ SMB2_PREAUTH_INTEGRITY_CAPABILITIES ;
 int VFS ;
 int cifs_dbg (int ,char*,unsigned int) ;
 int cifs_server_dbg (int ,char*,...) ;
 int decode_compress_ctx (struct TCP_Server_Info*,struct smb2_compression_capabilities_context*) ;
 int decode_encrypt_ctx (struct TCP_Server_Info*,struct smb2_encryption_neg_context*) ;
 int decode_preauth_context (struct smb2_preauth_neg_context*) ;
 void* le16_to_cpu (scalar_t__) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static int smb311_decode_neg_context(struct smb2_negotiate_rsp *rsp,
         struct TCP_Server_Info *server,
         unsigned int len_of_smb)
{
 struct smb2_neg_context *pctx;
 unsigned int offset = le32_to_cpu(rsp->NegotiateContextOffset);
 unsigned int ctxt_cnt = le16_to_cpu(rsp->NegotiateContextCount);
 unsigned int len_of_ctxts, i;
 int rc = 0;

 cifs_dbg(FYI, "decoding %d negotiate contexts\n", ctxt_cnt);
 if (len_of_smb <= offset) {
  cifs_server_dbg(VFS, "Invalid response: negotiate context offset\n");
  return -EINVAL;
 }

 len_of_ctxts = len_of_smb - offset;

 for (i = 0; i < ctxt_cnt; i++) {
  int clen;

  if (len_of_ctxts == 0)
   break;

  if (len_of_ctxts < sizeof(struct smb2_neg_context))
   break;

  pctx = (struct smb2_neg_context *)(offset + (char *)rsp);
  clen = le16_to_cpu(pctx->DataLength);
  if (clen > len_of_ctxts)
   break;

  if (pctx->ContextType == SMB2_PREAUTH_INTEGRITY_CAPABILITIES)
   decode_preauth_context(
    (struct smb2_preauth_neg_context *)pctx);
  else if (pctx->ContextType == SMB2_ENCRYPTION_CAPABILITIES)
   rc = decode_encrypt_ctx(server,
    (struct smb2_encryption_neg_context *)pctx);
  else if (pctx->ContextType == SMB2_COMPRESSION_CAPABILITIES)
   decode_compress_ctx(server,
    (struct smb2_compression_capabilities_context *)pctx);
  else if (pctx->ContextType == SMB2_POSIX_EXTENSIONS_AVAILABLE)
   server->posix_ext_supported = 1;
  else
   cifs_server_dbg(VFS, "unknown negcontext of type %d ignored\n",
    le16_to_cpu(pctx->ContextType));

  if (rc)
   break;

  clen = (clen + 7) & ~0x7;
  offset += clen + sizeof(struct smb2_neg_context);
  len_of_ctxts -= clen;
 }
 return rc;
}
