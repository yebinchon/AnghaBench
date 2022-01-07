
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rza1_bidir_pin {unsigned int pin; unsigned int func; } ;
struct rza1_bidir_entry {unsigned int npins; struct rza1_bidir_pin* pins; } ;



__attribute__((used)) static inline bool rza1_pinmux_get_bidir(unsigned int port,
      unsigned int pin,
      unsigned int func,
      const struct rza1_bidir_entry *table)
{
 const struct rza1_bidir_entry *entry = &table[port];
 const struct rza1_bidir_pin *bidir_pin;
 unsigned int i;

 for (i = 0; i < entry->npins; ++i) {
  bidir_pin = &entry->pins[i];
  if (bidir_pin->pin == pin && bidir_pin->func == func)
   return 1;
 }

 return 0;
}
