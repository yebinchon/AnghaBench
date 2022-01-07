
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dac_info {TYPE_1__* dacops; } ;
struct TYPE_2__ {int (* dac_set_freq ) (struct dac_info*,int,int ) ;} ;


 int stub1 (struct dac_info*,int,int ) ;

__attribute__((used)) static inline int dac_set_freq(struct dac_info *info, int channel, u32 freq)
{
 return info->dacops->dac_set_freq(info, channel, freq);
}
