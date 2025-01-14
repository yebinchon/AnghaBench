
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct atmel_pioctrl {TYPE_1__** pins; } ;
struct TYPE_2__ {int ioset; int device; } ;



 int ATMEL_PIO_DRVSTR_MASK ;

 int ATMEL_PIO_DRVSTR_OFFSET ;
 int ATMEL_PIO_IFEN_MASK ;
 int ATMEL_PIO_OPD_MASK ;
 int ATMEL_PIO_PDEN_MASK ;
 int ATMEL_PIO_PUEN_MASK ;
 int ATMEL_PIO_SCHMITT_MASK ;
 int atmel_pin_config_read (struct pinctrl_dev*,unsigned int) ;
 struct atmel_pioctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int seq_printf (struct seq_file*,char*,char*,...) ;

__attribute__((used)) static void atmel_conf_pin_config_dbg_show(struct pinctrl_dev *pctldev,
        struct seq_file *s, unsigned pin_id)
{
 struct atmel_pioctrl *atmel_pioctrl = pinctrl_dev_get_drvdata(pctldev);
 u32 conf;

 if (!atmel_pioctrl->pins[pin_id]->device)
  return;

 if (atmel_pioctrl->pins[pin_id])
  seq_printf(s, " (%s, ioset %u) ",
      atmel_pioctrl->pins[pin_id]->device,
      atmel_pioctrl->pins[pin_id]->ioset);

 conf = atmel_pin_config_read(pctldev, pin_id);
 if (conf & ATMEL_PIO_PUEN_MASK)
  seq_printf(s, "%s ", "pull-up");
 if (conf & ATMEL_PIO_PDEN_MASK)
  seq_printf(s, "%s ", "pull-down");
 if (conf & ATMEL_PIO_IFEN_MASK)
  seq_printf(s, "%s ", "debounce");
 if (conf & ATMEL_PIO_OPD_MASK)
  seq_printf(s, "%s ", "open-drain");
 if (conf & ATMEL_PIO_SCHMITT_MASK)
  seq_printf(s, "%s ", "schmitt");
 if (conf & ATMEL_PIO_DRVSTR_MASK) {
  switch ((conf & ATMEL_PIO_DRVSTR_MASK) >> ATMEL_PIO_DRVSTR_OFFSET) {
  case 128:
   seq_printf(s, "%s ", "medium-drive");
   break;
  case 129:
   seq_printf(s, "%s ", "high-drive");
   break;

  default:
   seq_printf(s, "%s ", "low-drive");
  }
 }
}
