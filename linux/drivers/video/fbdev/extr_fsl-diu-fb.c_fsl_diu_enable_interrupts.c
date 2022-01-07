
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_diu_data {TYPE_1__* diu_reg; } ;
struct TYPE_2__ {int int_mask; } ;


 int CONFIG_NOT_COHERENT_CACHE ;
 int INT_UNDRUN ;
 int INT_VSYNC ;
 scalar_t__ IS_ENABLED (int ) ;
 int clrbits32 (int *,int ) ;

__attribute__((used)) static inline void fsl_diu_enable_interrupts(struct fsl_diu_data *data)
{
 u32 int_mask = INT_UNDRUN;

 if (IS_ENABLED(CONFIG_NOT_COHERENT_CACHE))
  int_mask |= INT_VSYNC;

 clrbits32(&data->diu_reg->int_mask, int_mask);
}
