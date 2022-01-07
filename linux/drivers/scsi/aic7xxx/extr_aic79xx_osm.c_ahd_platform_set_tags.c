
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct scsi_device {int dummy; } ;
struct ahd_softc {int dummy; } ;
struct ahd_linux_device {int flags; int active; int openings; scalar_t__ maxtags; int qfrozen; } ;
struct ahd_devinfo {int dummy; } ;
typedef int ahd_queue_alg ;


 int AHD_DEV_FREEZE_TIL_EMPTY ;
 int AHD_DEV_PERIODIC_OTAG ;





 scalar_t__ ahd_linux_user_tagdepth (struct ahd_softc*,struct ahd_devinfo*) ;
 scalar_t__ aic79xx_periodic_otag ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;
 struct ahd_linux_device* scsi_transport_device_data (struct scsi_device*) ;

void
ahd_platform_set_tags(struct ahd_softc *ahd, struct scsi_device *sdev,
        struct ahd_devinfo *devinfo, ahd_queue_alg alg)
{
 struct ahd_linux_device *dev;
 int was_queuing;
 int now_queuing;

 if (sdev == ((void*)0))
  return;

 dev = scsi_transport_device_data(sdev);

 if (dev == ((void*)0))
  return;
 was_queuing = dev->flags & (132|131);
 switch (alg) {
 default:
 case 129:
  now_queuing = 0;
  break;
 case 130:
  now_queuing = 132;
  break;
 case 128:
  now_queuing = 131;
  break;
 }
 if ((dev->flags & AHD_DEV_FREEZE_TIL_EMPTY) == 0
  && (was_queuing != now_queuing)
  && (dev->active != 0)) {
  dev->flags |= AHD_DEV_FREEZE_TIL_EMPTY;
  dev->qfrozen++;
 }

 dev->flags &= ~(132|131|AHD_DEV_PERIODIC_OTAG);
 if (now_queuing) {
  u_int usertags;

  usertags = ahd_linux_user_tagdepth(ahd, devinfo);
  if (!was_queuing) {





   dev->maxtags = usertags;
   dev->openings = dev->maxtags - dev->active;
  }
  if (dev->maxtags == 0) {



   dev->openings = 1;
  } else if (alg == 128) {
   dev->flags |= 131;
   if (aic79xx_periodic_otag != 0)
    dev->flags |= AHD_DEV_PERIODIC_OTAG;
  } else
   dev->flags |= 132;
 } else {

  dev->maxtags = 0;
  dev->openings = 1 - dev->active;
 }

 switch ((dev->flags & (132|131))) {
 case 132:
 case 131:
  scsi_change_queue_depth(sdev,
    dev->openings + dev->active);
  break;
 default:






  scsi_change_queue_depth(sdev, 1);
  break;
 }
}
