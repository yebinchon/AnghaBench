
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct geni_wrapper {scalar_t__ base; } ;
struct geni_se {struct geni_wrapper* wrapper; } ;


 scalar_t__ QUP_HW_VER_REG ;
 int readl_relaxed (scalar_t__) ;

u32 geni_se_get_qup_hw_version(struct geni_se *se)
{
 struct geni_wrapper *wrapper = se->wrapper;

 return readl_relaxed(wrapper->base + QUP_HW_VER_REG);
}
