
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bas_bc_state* bas; } ;
struct bc_state {TYPE_1__ hw; } ;
struct bas_bc_state {int loststatus; int isoinlock; int isooutlock; scalar_t__ numsub; int corrbytes; scalar_t__ running; } ;


 int EINPROGRESS ;
 int atomic_set (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void gigaset_reinitbcshw(struct bc_state *bcs)
{
 struct bas_bc_state *ubc = bcs->hw.bas;

 bcs->hw.bas->running = 0;
 atomic_set(&bcs->hw.bas->corrbytes, 0);
 bcs->hw.bas->numsub = 0;
 spin_lock_init(&ubc->isooutlock);
 spin_lock_init(&ubc->isoinlock);
 ubc->loststatus = -EINPROGRESS;
}
