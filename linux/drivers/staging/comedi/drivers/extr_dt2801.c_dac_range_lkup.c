
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_lrange {int dummy; } ;


 struct comedi_lrange const** dac_range_table ;
 struct comedi_lrange const range_unknown ;

__attribute__((used)) static const struct comedi_lrange *dac_range_lkup(int opt)
{
 if (opt < 0 || opt >= 5)
  return &range_unknown;
 return dac_range_table[opt];
}
