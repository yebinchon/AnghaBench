
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int snpsid; } ;
struct dwc2_hsotg {TYPE_1__ hw_params; } ;



__attribute__((used)) static inline bool dwc2_is_iot(struct dwc2_hsotg *hsotg)
{
 return (hsotg->hw_params.snpsid & 0xfff00000) == 0x55300000;
}
