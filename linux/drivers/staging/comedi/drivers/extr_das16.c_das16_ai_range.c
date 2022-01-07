
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
typedef struct comedi_lrange {int length; struct comedi_krange* range; } const comedi_lrange ;
struct comedi_krange {unsigned int min; unsigned int max; int flags; } ;
struct comedi_device {int dummy; } ;
struct comedi_devconfig {unsigned int* options; } ;


 unsigned int DAS16_STATUS_UNIPOLAR ;
 int UNIT_volt ;
 struct comedi_lrange const* comedi_alloc_spriv (struct comedi_subdevice*,int) ;
 struct comedi_lrange const** das16_ai_bip_lranges ;
 struct comedi_lrange const** das16_ai_uni_lranges ;
 unsigned int das16_pg_none ;
 struct comedi_lrange const range_unknown ;

__attribute__((used)) static const struct comedi_lrange *das16_ai_range(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_devconfig *it,
        unsigned int pg_type,
        unsigned int status)
{
 unsigned int min = it->options[4];
 unsigned int max = it->options[5];


 if (pg_type == das16_pg_none && (min || max)) {
  struct comedi_lrange *lrange;
  struct comedi_krange *krange;


  lrange = comedi_alloc_spriv(s,
         sizeof(*lrange) + sizeof(*krange));
  if (!lrange)
   return &range_unknown;


  lrange->length = 1;
  krange = lrange->range;
  krange->min = min;
  krange->max = max;
  krange->flags = UNIT_volt;

  return lrange;
 }


 if (status & DAS16_STATUS_UNIPOLAR)
  return das16_ai_uni_lranges[pg_type];
 return das16_ai_bip_lranges[pg_type];
}
