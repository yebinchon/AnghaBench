
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int mdelay (int) ;
 int msm_ps_hold ;
 int writel (int ,int ) ;

__attribute__((used)) static int deassert_pshold(struct notifier_block *nb, unsigned long action,
      void *data)
{
 writel(0, msm_ps_hold);
 mdelay(10000);

 return NOTIFY_DONE;
}
