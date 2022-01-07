
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_dh_blist {char const* driver; scalar_t__ model; scalar_t__ vendor; } ;
struct scsi_device {int model; int vendor; } ;


 scalar_t__ scsi_device_tpgs (struct scsi_device*) ;
 struct scsi_dh_blist* scsi_dh_blist ;
 int strlen (scalar_t__) ;
 int strncmp (int ,scalar_t__,int ) ;

__attribute__((used)) static const char *
scsi_dh_find_driver(struct scsi_device *sdev)
{
 const struct scsi_dh_blist *b;

 if (scsi_device_tpgs(sdev))
  return "alua";

 for (b = scsi_dh_blist; b->vendor; b++) {
  if (!strncmp(sdev->vendor, b->vendor, strlen(b->vendor)) &&
      !strncmp(sdev->model, b->model, strlen(b->model))) {
   return b->driver;
  }
 }
 return ((void*)0);
}
