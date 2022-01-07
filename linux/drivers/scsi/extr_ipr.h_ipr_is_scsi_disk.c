
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_resource_entry {int std_inq_data; } ;


 scalar_t__ IPR_IS_DASD_DEVICE (int ) ;
 scalar_t__ ipr_is_af_dasd_device (struct ipr_resource_entry*) ;
 scalar_t__ ipr_is_gscsi (struct ipr_resource_entry*) ;

__attribute__((used)) static inline int ipr_is_scsi_disk(struct ipr_resource_entry *res)
{
 if (ipr_is_af_dasd_device(res) ||
     (ipr_is_gscsi(res) && IPR_IS_DASD_DEVICE(res->std_inq_data)))
  return 1;
 else
  return 0;
}
