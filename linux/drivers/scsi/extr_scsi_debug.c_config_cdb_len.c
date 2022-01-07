
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int use_10_for_rw; int use_16_for_rw; int use_10_for_ms; } ;


 int pr_warn (char*,int) ;
 int sdebug_cdb_len ;

__attribute__((used)) static void config_cdb_len(struct scsi_device *sdev)
{
 switch (sdebug_cdb_len) {
 case 6:
  sdev->use_10_for_rw = 0;
  sdev->use_16_for_rw = 0;
  sdev->use_10_for_ms = 0;
  break;
 case 10:
  sdev->use_10_for_rw = 1;
  sdev->use_16_for_rw = 0;
  sdev->use_10_for_ms = 0;
  break;
 case 12:
  sdev->use_10_for_rw = 1;
  sdev->use_16_for_rw = 0;
  sdev->use_10_for_ms = 1;
  break;
 case 16:
  sdev->use_10_for_rw = 0;
  sdev->use_16_for_rw = 1;
  sdev->use_10_for_ms = 1;
  break;
 case 32:
  sdev->use_10_for_rw = 0;
  sdev->use_16_for_rw = 1;
  sdev->use_10_for_ms = 1;
  break;
 default:
  pr_warn("unexpected cdb_len=%d, force to 10\n",
   sdebug_cdb_len);
  sdev->use_10_for_rw = 1;
  sdev->use_16_for_rw = 0;
  sdev->use_10_for_ms = 0;
  sdebug_cdb_len = 10;
  break;
 }
}
