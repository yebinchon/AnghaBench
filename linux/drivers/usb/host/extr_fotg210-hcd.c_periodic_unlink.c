
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union fotg210_shadow {void* ptr; } ;
struct fotg210_hcd {int * periodic; union fotg210_shadow* pshadow; } ;
typedef int __hc32 ;


 int Q_NEXT_TYPE (struct fotg210_hcd*,int ) ;
 union fotg210_shadow* periodic_next_shadow (struct fotg210_hcd*,union fotg210_shadow*,int ) ;
 int * shadow_next_periodic (struct fotg210_hcd*,union fotg210_shadow*,int ) ;

__attribute__((used)) static void periodic_unlink(struct fotg210_hcd *fotg210, unsigned frame,
  void *ptr)
{
 union fotg210_shadow *prev_p = &fotg210->pshadow[frame];
 __hc32 *hw_p = &fotg210->periodic[frame];
 union fotg210_shadow here = *prev_p;


 while (here.ptr && here.ptr != ptr) {
  prev_p = periodic_next_shadow(fotg210, prev_p,
    Q_NEXT_TYPE(fotg210, *hw_p));
  hw_p = shadow_next_periodic(fotg210, &here,
    Q_NEXT_TYPE(fotg210, *hw_p));
  here = *prev_p;
 }

 if (!here.ptr)
  return;




 *prev_p = *periodic_next_shadow(fotg210, &here,
   Q_NEXT_TYPE(fotg210, *hw_p));

 *hw_p = *shadow_next_periodic(fotg210, &here,
   Q_NEXT_TYPE(fotg210, *hw_p));
}
