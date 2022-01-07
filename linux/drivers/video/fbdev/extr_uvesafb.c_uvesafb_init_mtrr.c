
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvesafb_par {int mtrr_handle; } ;
struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; struct uvesafb_par* par; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int arch_phys_wc_add (int,int) ;
 scalar_t__ mtrr ;
 int roundup_pow_of_two (int) ;

__attribute__((used)) static void uvesafb_init_mtrr(struct fb_info *info)
{
 struct uvesafb_par *par = info->par;

 if (mtrr && !(info->fix.smem_start & (PAGE_SIZE - 1))) {
  int temp_size = info->fix.smem_len;

  int rc;


  temp_size = roundup_pow_of_two(temp_size);


  do {
   rc = arch_phys_wc_add(info->fix.smem_start, temp_size);
   temp_size >>= 1;
  } while (temp_size >= PAGE_SIZE && rc == -EINVAL);

  if (rc >= 0)
   par->mtrr_handle = rc;
 }
}
