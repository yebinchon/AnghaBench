
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_inq {int dummy; } ;
struct TYPE_2__ {int * serial; } ;
struct aac_dev {TYPE_1__ adapter_info; } ;


 int le32_to_cpu (int ) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static int setinqserial(struct aac_dev *dev, void *data, int cid)
{



 return snprintf((char *)(data), sizeof(struct scsi_inq) - 4, "%08X%02X",
   le32_to_cpu(dev->adapter_info.serial[0]), cid);
}
