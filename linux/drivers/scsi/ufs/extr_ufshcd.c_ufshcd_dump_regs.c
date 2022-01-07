
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kzalloc (size_t,int ) ;
 int ufshcd_hex_dump (char const*,int *,size_t) ;
 int ufshcd_readl (struct ufs_hba*,size_t) ;

int ufshcd_dump_regs(struct ufs_hba *hba, size_t offset, size_t len,
       const char *prefix)
{
 u32 *regs;
 size_t pos;

 if (offset % 4 != 0 || len % 4 != 0)
  return -EINVAL;

 regs = kzalloc(len, GFP_KERNEL);
 if (!regs)
  return -ENOMEM;

 for (pos = 0; pos < len; pos += 4)
  regs[pos / 4] = ufshcd_readl(hba, offset + pos);

 ufshcd_hex_dump(prefix, regs, len);
 kfree(regs);

 return 0;
}
