
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct otg_fsm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dr_mem_map; } ;
struct TYPE_3__ {int portsc; } ;


 int PORTSC_PORT_FORCE_RESUME ;
 int PORTSC_PORT_SUSPEND ;
 int PORTSC_W1C_BITS ;
 TYPE_2__* fsl_otg_dev ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;

void fsl_otg_loc_sof(struct otg_fsm *fsm, int on)
{
 u32 tmp;

 tmp = fsl_readl(&fsl_otg_dev->dr_mem_map->portsc) & ~PORTSC_W1C_BITS;
 if (on)
  tmp |= PORTSC_PORT_FORCE_RESUME;
 else
  tmp |= PORTSC_PORT_SUSPEND;

 fsl_writel(tmp, &fsl_otg_dev->dr_mem_map->portsc);

}
