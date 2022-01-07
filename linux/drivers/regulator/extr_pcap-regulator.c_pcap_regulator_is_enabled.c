
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regulator_dev {int dummy; } ;
struct pcap_regulator {int en; int reg; } ;


 int EINVAL ;
 int NA ;
 int ezx_pcap_read (void*,int ,int*) ;
 void* rdev_get_drvdata (struct regulator_dev*) ;
 size_t rdev_get_id (struct regulator_dev*) ;
 struct pcap_regulator* vreg_table ;

__attribute__((used)) static int pcap_regulator_is_enabled(struct regulator_dev *rdev)
{
 struct pcap_regulator *vreg = &vreg_table[rdev_get_id(rdev)];
 void *pcap = rdev_get_drvdata(rdev);
 u32 tmp;

 if (vreg->en == NA)
  return -EINVAL;

 ezx_pcap_read(pcap, vreg->reg, &tmp);
 return (tmp >> vreg->en) & 1;
}
