
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahd_softc {int msgout_len; scalar_t__ msgout_index; scalar_t__ msgout_buf; } ;
struct ahd_devinfo {int lun; int target; int channel; } ;


 scalar_t__ AHD_ASYNC_XFER_PERIOD ;
 scalar_t__ AHD_SYNCRATE_PACED ;
 scalar_t__ MSG_EXT_PPR_PCOMP_EN ;
 int ahd_name (struct ahd_softc*) ;
 scalar_t__ bootverbose ;
 int printk (char*,int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ spi_populate_ppr_msg (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ahd_construct_ppr(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
    u_int period, u_int offset, u_int bus_width,
    u_int ppr_options)
{





 if (period <= AHD_SYNCRATE_PACED)
  ppr_options |= MSG_EXT_PPR_PCOMP_EN;
 if (offset == 0)
  period = AHD_ASYNC_XFER_PERIOD;
 ahd->msgout_index += spi_populate_ppr_msg(
   ahd->msgout_buf + ahd->msgout_index, period, offset,
   bus_width, ppr_options);
 ahd->msgout_len += 8;
 if (bootverbose) {
  printk("(%s:%c:%d:%d): Sending PPR bus_width %x, period %x, "
         "offset %x, ppr_options %x\n", ahd_name(ahd),
         devinfo->channel, devinfo->target, devinfo->lun,
         bus_width, period, offset, ppr_options);
 }
}
