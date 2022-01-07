
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ca91cx42_driver {int mbox_queue; } ;


 int CA91CX42_LINT_MBOX ;
 int wake_up (int *) ;

__attribute__((used)) static u32 ca91cx42_MB_irqhandler(struct ca91cx42_driver *bridge, int mbox_mask)
{
 wake_up(&bridge->mbox_queue);

 return CA91CX42_LINT_MBOX;
}
