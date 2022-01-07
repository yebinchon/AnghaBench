
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct madera_pin_private {struct madera_pin_chip* chip; } ;
struct madera_pin_chip {int n_pin_groups; TYPE_1__* pin_groups; } ;
struct TYPE_5__ {unsigned int func; int name; } ;
struct TYPE_4__ {int n_pins; unsigned int* pins; int name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* madera_mux_funcs ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void madera_pin_dbg_show_fn(struct madera_pin_private *priv,
       struct seq_file *s,
       unsigned int pin, unsigned int fn)
{
 const struct madera_pin_chip *chip = priv->chip;
 int i, g_pin;

 if (fn != 0) {
  for (i = 0; i < ARRAY_SIZE(madera_mux_funcs); ++i) {
   if (madera_mux_funcs[i].func == fn) {
    seq_printf(s, " FN=%s",
        madera_mux_funcs[i].name);
    return;
   }
  }
  return;
 }


 for (i = 0; i < chip->n_pin_groups; ++i) {
  for (g_pin = 0; g_pin < chip->pin_groups[i].n_pins; ++g_pin) {
   if (chip->pin_groups[i].pins[g_pin] == pin) {
    seq_printf(s, " FN=%s",
        chip->pin_groups[i].name);
    return;
   }
  }
 }
}
