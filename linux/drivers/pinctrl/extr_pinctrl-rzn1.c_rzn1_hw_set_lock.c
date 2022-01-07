
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rzn1_pinctrl {int lev1_protect_phys; int lev2_protect_phys; TYPE_1__* lev2; TYPE_2__* lev1; } ;
struct TYPE_4__ {int status_protect; } ;
struct TYPE_3__ {int status_protect; } ;


 int LOCK_LEVEL1 ;
 int LOCK_LEVEL2 ;
 int writel (int,int *) ;

__attribute__((used)) static void rzn1_hw_set_lock(struct rzn1_pinctrl *ipctl, u8 lock, u8 value)
{





 if (lock & LOCK_LEVEL1) {
  u32 val = ipctl->lev1_protect_phys | !(value & LOCK_LEVEL1);

  writel(val, &ipctl->lev1->status_protect);
 }

 if (lock & LOCK_LEVEL2) {
  u32 val = ipctl->lev2_protect_phys | !(value & LOCK_LEVEL2);

  writel(val, &ipctl->lev2->status_protect);
 }
}
