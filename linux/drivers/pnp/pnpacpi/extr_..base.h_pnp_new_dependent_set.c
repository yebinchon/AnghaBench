
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int num_dependent_sets; int dev; } ;


 int PNP_OPTION_DEPENDENT ;
 int PNP_OPTION_PRIORITY_MASK ;
 int PNP_OPTION_PRIORITY_SHIFT ;
 int PNP_OPTION_SET_MASK ;
 int PNP_OPTION_SET_SHIFT ;
 int PNP_RES_PRIORITY_FUNCTIONAL ;
 int PNP_RES_PRIORITY_INVALID ;
 int dev_warn (int *,char*,int,int) ;

__attribute__((used)) static inline unsigned int pnp_new_dependent_set(struct pnp_dev *dev,
       int priority)
{
 unsigned int flags;

 if (priority > PNP_RES_PRIORITY_FUNCTIONAL) {
  dev_warn(&dev->dev, "invalid dependent option priority %d "
    "clipped to %d", priority,
    PNP_RES_PRIORITY_INVALID);
  priority = PNP_RES_PRIORITY_INVALID;
 }

 flags = PNP_OPTION_DEPENDENT |
     ((dev->num_dependent_sets & PNP_OPTION_SET_MASK) <<
  PNP_OPTION_SET_SHIFT) |
     ((priority & PNP_OPTION_PRIORITY_MASK) <<
  PNP_OPTION_PRIORITY_SHIFT);

 dev->num_dependent_sets++;

 return flags;
}
