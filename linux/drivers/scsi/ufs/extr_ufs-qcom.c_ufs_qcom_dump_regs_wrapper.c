
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int ufshcd_dump_regs (struct ufs_hba*,int,int,char const*) ;

__attribute__((used)) static void ufs_qcom_dump_regs_wrapper(struct ufs_hba *hba, int offset, int len,
           const char *prefix, void *priv)
{
 ufshcd_dump_regs(hba, offset, len * 4, prefix);
}
