
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_netname_neg_context {int DataLength; int NetName; int ContextType; } ;
struct smb2_neg_context {int dummy; } ;
struct nls_table {int dummy; } ;


 int DIV_ROUND_UP (scalar_t__,int) ;
 int SMB2_NETNAME_NEGOTIATE_CONTEXT_ID ;
 int cifs_strtoUTF16 (int ,char*,int,struct nls_table*) ;
 int cpu_to_le16 (int) ;
 scalar_t__ le16_to_cpu (int ) ;
 struct nls_table* load_nls_default () ;

__attribute__((used)) static unsigned int
build_netname_ctxt(struct smb2_netname_neg_context *pneg_ctxt, char *hostname)
{
 struct nls_table *cp = load_nls_default();

 pneg_ctxt->ContextType = SMB2_NETNAME_NEGOTIATE_CONTEXT_ID;


 pneg_ctxt->DataLength = cpu_to_le16(2 * cifs_strtoUTF16(pneg_ctxt->NetName, hostname, 100, cp));

 return DIV_ROUND_UP(le16_to_cpu(pneg_ctxt->DataLength) +
   sizeof(struct smb2_neg_context), 8) * 8;
}
