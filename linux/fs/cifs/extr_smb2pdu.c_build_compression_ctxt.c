
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_neg_context {int dummy; } ;
struct smb2_compression_capabilities_context {int * CompressionAlgorithms; void* CompressionAlgorithmCount; void* DataLength; int ContextType; } ;


 int SMB2_COMPRESSION_CAPABILITIES ;
 int SMB3_COMPRESS_LZ77 ;
 int SMB3_COMPRESS_LZ77_HUFF ;
 int SMB3_COMPRESS_LZNT1 ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static void
build_compression_ctxt(struct smb2_compression_capabilities_context *pneg_ctxt)
{
 pneg_ctxt->ContextType = SMB2_COMPRESSION_CAPABILITIES;
 pneg_ctxt->DataLength =
  cpu_to_le16(sizeof(struct smb2_compression_capabilities_context)
     - sizeof(struct smb2_neg_context));
 pneg_ctxt->CompressionAlgorithmCount = cpu_to_le16(3);
 pneg_ctxt->CompressionAlgorithms[0] = SMB3_COMPRESS_LZ77;
 pneg_ctxt->CompressionAlgorithms[1] = SMB3_COMPRESS_LZ77_HUFF;
 pneg_ctxt->CompressionAlgorithms[2] = SMB3_COMPRESS_LZNT1;
}
