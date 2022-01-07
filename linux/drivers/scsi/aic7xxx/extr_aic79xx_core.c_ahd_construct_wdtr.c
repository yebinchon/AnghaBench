
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int msgout_len; scalar_t__ msgout_index; scalar_t__ msgout_buf; } ;
struct ahd_devinfo {int lun; int target; int channel; } ;


 int ahd_name (struct ahd_softc*) ;
 scalar_t__ bootverbose ;
 int printk (char*,int ,int ,int ,int ,int ) ;
 scalar_t__ spi_populate_width_msg (scalar_t__,int ) ;

__attribute__((used)) static void
ahd_construct_wdtr(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
     u_int bus_width)
{
 ahd->msgout_index += spi_populate_width_msg(
   ahd->msgout_buf + ahd->msgout_index, bus_width);
 ahd->msgout_len += 4;
 if (bootverbose) {
  printk("(%s:%c:%d:%d): Sending WDTR %x\n",
         ahd_name(ahd), devinfo->channel, devinfo->target,
         devinfo->lun, bus_width);
 }
}
