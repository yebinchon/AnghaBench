
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; scalar_t__ io_addr; } ;


 int PCWD_REVISION_A ;
 int PCWD_REVISION_C ;
 int inb (scalar_t__) ;
 TYPE_1__ pcwd_private ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int get_revision(void)
{
 int r = PCWD_REVISION_C;

 spin_lock(&pcwd_private.io_lock);


 if ((inb(pcwd_private.io_addr + 2) == 0xFF) ||
     (inb(pcwd_private.io_addr + 3) == 0xFF))
  r = PCWD_REVISION_A;
 spin_unlock(&pcwd_private.io_lock);

 return r;
}
