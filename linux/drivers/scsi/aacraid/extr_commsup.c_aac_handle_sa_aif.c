
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fib {int hbacmd_size; } ;
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int IDR; } ;


 TYPE_1__ MUnit ;






 int aac_scan_host (struct aac_dev*) ;
 int pr_warn (char*,int,int) ;
 int src_readl (struct aac_dev*,int ) ;
 int ssleep (int) ;

__attribute__((used)) static void aac_handle_sa_aif(struct aac_dev *dev, struct fib *fibptr)
{
 int i;
 u32 events = 0;

 if (fibptr->hbacmd_size & 130)
  events = 130;
 else if (fibptr->hbacmd_size & 131)
  events = 131;
 else if (fibptr->hbacmd_size & 128)
  events = 128;
 else if (fibptr->hbacmd_size & 129)
  events = 129;
 else if (fibptr->hbacmd_size & 132)
  events = 132;
 else if (fibptr->hbacmd_size & 133)
  events = 133;

 switch (events) {
 case 130:
 case 131:
 case 128:
 case 129:
 case 133:

  aac_scan_host(dev);

  break;

 case 132:

  break;
 }

 for (i = 1; i <= 10; ++i) {
  events = src_readl(dev, MUnit.IDR);
  if (events & (1<<23)) {
   pr_warn(" AIF not cleared by firmware - %d/%d)\n",
    i, 10);
   ssleep(1);
  }
 }
}
