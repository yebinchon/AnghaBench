
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sr_tmon {int tmon_id; struct sr_thermal* priv; } ;
struct sr_thermal {scalar_t__ regs; } ;


 scalar_t__ SR_TMON_TEMP_BASE (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int sr_get_temp(void *data, int *temp)
{
 struct sr_tmon *tmon = data;
 struct sr_thermal *sr_thermal = tmon->priv;

 *temp = readl(sr_thermal->regs + SR_TMON_TEMP_BASE(tmon->tmon_id));

 return 0;
}
