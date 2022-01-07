
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int IBMVFC_TMF_SUPPRESS_ABTS ;
 unsigned long ibmvfc_cancel_all (struct scsi_device*,int ) ;

__attribute__((used)) static void ibmvfc_dev_cancel_all_noreset(struct scsi_device *sdev, void *data)
{
 unsigned long *rc = data;
 *rc |= ibmvfc_cancel_all(sdev, IBMVFC_TMF_SUPPRESS_ABTS);
}
