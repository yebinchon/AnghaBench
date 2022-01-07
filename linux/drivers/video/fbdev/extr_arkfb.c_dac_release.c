
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dac_info {TYPE_1__* dacops; } ;
struct TYPE_2__ {int (* dac_release ) (struct dac_info*) ;} ;


 int stub1 (struct dac_info*) ;

__attribute__((used)) static inline void dac_release(struct dac_info *info)
{
 info->dacops->dac_release(info);
}
