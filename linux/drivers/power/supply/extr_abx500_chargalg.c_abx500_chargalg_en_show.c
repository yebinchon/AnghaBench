
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ usb_suspended; scalar_t__ ac_suspended; } ;
struct abx500_chargalg {TYPE_1__ susp_status; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t abx500_chargalg_en_show(struct abx500_chargalg *di,
           char *buf)
{
 return sprintf(buf, "%d\n",
         di->susp_status.ac_suspended &&
         di->susp_status.usb_suspended);
}
