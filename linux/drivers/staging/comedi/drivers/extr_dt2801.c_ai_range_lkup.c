
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_lrange {int dummy; } ;


 struct comedi_lrange const range_bipolar10 ;
 struct comedi_lrange const range_dt2801_ai_pgl_bipolar ;
 struct comedi_lrange const range_dt2801_ai_pgl_unipolar ;
 struct comedi_lrange const range_unipolar10 ;
 struct comedi_lrange const range_unipolar5 ;
 struct comedi_lrange const range_unknown ;

__attribute__((used)) static const struct comedi_lrange *ai_range_lkup(int type, int opt)
{
 switch (type) {
 case 0:
  return (opt) ?
      &range_dt2801_ai_pgl_unipolar :
      &range_dt2801_ai_pgl_bipolar;
 case 1:
  return (opt) ? &range_unipolar10 : &range_bipolar10;
 case 2:
  return &range_unipolar5;
 }
 return &range_unknown;
}
