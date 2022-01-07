
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* range_table; } ;
struct TYPE_4__ {TYPE_1__* range; } ;
struct TYPE_3__ {scalar_t__ min; } ;



__attribute__((used)) static inline bool comedi_range_is_unipolar(struct comedi_subdevice *s,
         unsigned int range)
{
 return s->range_table->range[range].min >= 0;
}
