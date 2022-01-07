
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_supported_device {int num_records; scalar_t__ reserved; int data_length; int vpids; } ;
struct ipr_std_inq_vpids {int dummy; } ;


 int cpu_to_be16 (int) ;
 int memcpy (int *,struct ipr_std_inq_vpids*,int) ;
 int memset (struct ipr_supported_device*,int ,int) ;

__attribute__((used)) static void ipr_set_sup_dev_dflt(struct ipr_supported_device *supported_dev,
     struct ipr_std_inq_vpids *vpids)
{
 memset(supported_dev, 0, sizeof(struct ipr_supported_device));
 memcpy(&supported_dev->vpids, vpids, sizeof(struct ipr_std_inq_vpids));
 supported_dev->num_records = 1;
 supported_dev->data_length =
  cpu_to_be16(sizeof(struct ipr_supported_device));
 supported_dev->reserved = 0;
}
