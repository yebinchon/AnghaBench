
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlynq_device {TYPE_1__* local; } ;
struct TYPE_2__ {int status; } ;


 int VLYNQ_STATUS_LINK ;
 int cpu_relax () ;
 int readl (int *) ;

__attribute__((used)) static int vlynq_linked(struct vlynq_device *dev)
{
 int i;

 for (i = 0; i < 100; i++)
  if (readl(&dev->local->status) & VLYNQ_STATUS_LINK)
   return 1;
  else
   cpu_relax();

 return 0;
}
