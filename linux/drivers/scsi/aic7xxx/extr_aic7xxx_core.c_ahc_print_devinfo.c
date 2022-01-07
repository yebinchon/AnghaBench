
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int lun; int target; int channel; } ;


 int ahc_name (struct ahc_softc*) ;
 int printk (char*,int ,int ,int ,int ) ;

void
ahc_print_devinfo(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
 printk("%s:%c:%d:%d: ", ahc_name(ahc), devinfo->channel,
        devinfo->target, devinfo->lun);
}
