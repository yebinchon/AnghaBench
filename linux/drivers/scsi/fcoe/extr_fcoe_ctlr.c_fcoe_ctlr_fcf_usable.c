
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fcoe_fcf {int flags; } ;


 int FIP_FL_AVAIL ;
 int FIP_FL_SOL ;

__attribute__((used)) static inline int fcoe_ctlr_fcf_usable(struct fcoe_fcf *fcf)
{
 u16 flags = FIP_FL_SOL | FIP_FL_AVAIL;

 return (fcf->flags & flags) == flags;
}
