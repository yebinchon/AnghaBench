
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {scalar_t__ extra; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_2__ {scalar_t__ Ready; scalar_t__ Insert; } ;
struct ene_ub6250_info {TYPE_1__ MS_Status; } ;


 int USB_STOR_TRANSPORT_GOOD ;
 int ene_ms_init (struct us_data*) ;

__attribute__((used)) static int ms_scsi_test_unit_ready(struct us_data *us, struct scsi_cmnd *srb)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *)(us->extra);


 if (info->MS_Status.Insert && info->MS_Status.Ready) {
  return USB_STOR_TRANSPORT_GOOD;
 } else {
  ene_ms_init(us);
  return USB_STOR_TRANSPORT_GOOD;
 }

 return USB_STOR_TRANSPORT_GOOD;
}
