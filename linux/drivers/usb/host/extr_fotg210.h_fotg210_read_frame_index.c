
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fotg210_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int frame_index; } ;


 int fotg210_readl (struct fotg210_hcd*,int *) ;

__attribute__((used)) static inline unsigned fotg210_read_frame_index(struct fotg210_hcd *fotg210)
{
 return fotg210_readl(fotg210, &fotg210->regs->frame_index);
}
