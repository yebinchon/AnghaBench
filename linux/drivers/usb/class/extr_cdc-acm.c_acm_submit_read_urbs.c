
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm {int rx_buflimit; } ;
typedef int gfp_t ;


 int acm_submit_read_urb (struct acm*,int,int ) ;

__attribute__((used)) static int acm_submit_read_urbs(struct acm *acm, gfp_t mem_flags)
{
 int res;
 int i;

 for (i = 0; i < acm->rx_buflimit; ++i) {
  res = acm_submit_read_urb(acm, i, mem_flags);
  if (res)
   return res;
 }

 return 0;
}
