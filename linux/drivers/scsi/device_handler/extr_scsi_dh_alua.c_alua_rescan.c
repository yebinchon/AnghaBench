
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct alua_dh_data* handler_data; } ;
struct alua_dh_data {int dummy; } ;


 int alua_initialize (struct scsi_device*,struct alua_dh_data*) ;

__attribute__((used)) static void alua_rescan(struct scsi_device *sdev)
{
 struct alua_dh_data *h = sdev->handler_data;

 alua_initialize(sdev, h);
}
