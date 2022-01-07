
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regulator_dev {TYPE_1__* desc; } ;
struct pcap_regulator {int index; int reg; } ;
struct TYPE_2__ {int n_voltages; } ;


 int ezx_pcap_read (void*,int ,int*) ;
 void* rdev_get_drvdata (struct regulator_dev*) ;
 size_t rdev_get_id (struct regulator_dev*) ;
 struct pcap_regulator* vreg_table ;

__attribute__((used)) static int pcap_regulator_get_voltage_sel(struct regulator_dev *rdev)
{
 struct pcap_regulator *vreg = &vreg_table[rdev_get_id(rdev)];
 void *pcap = rdev_get_drvdata(rdev);
 u32 tmp;

 if (rdev->desc->n_voltages == 1)
  return 0;

 ezx_pcap_read(pcap, vreg->reg, &tmp);
 tmp = ((tmp >> vreg->index) & (rdev->desc->n_voltages - 1));
 return tmp;
}
