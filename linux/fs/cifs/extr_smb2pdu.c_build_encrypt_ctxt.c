
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_encryption_neg_context {int * Ciphers; void* CipherCount; void* DataLength; int ContextType; } ;


 int SMB2_ENCRYPTION_AES128_CCM ;
 int SMB2_ENCRYPTION_AES128_GCM ;
 int SMB2_ENCRYPTION_CAPABILITIES ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static void
build_encrypt_ctxt(struct smb2_encryption_neg_context *pneg_ctxt)
{
 pneg_ctxt->ContextType = SMB2_ENCRYPTION_CAPABILITIES;
 pneg_ctxt->DataLength = cpu_to_le16(6);
 pneg_ctxt->CipherCount = cpu_to_le16(2);
 pneg_ctxt->Ciphers[0] = SMB2_ENCRYPTION_AES128_GCM;
 pneg_ctxt->Ciphers[1] = SMB2_ENCRYPTION_AES128_CCM;
}
