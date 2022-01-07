
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {TYPE_1__* attr; } ;
struct TYPE_2__ {scalar_t__ brcd_serialnum; } ;


 int BFA_ADAPTER_SERIAL_NUM_LEN ;
 int memcpy (void*,void*,int ) ;
 int memset (void*,int ,int ) ;

void
bfa_ioc_get_adapter_serial_num(struct bfa_ioc_s *ioc, char *serial_num)
{
 memset((void *)serial_num, 0, BFA_ADAPTER_SERIAL_NUM_LEN);
 memcpy((void *)serial_num,
   (void *)ioc->attr->brcd_serialnum,
   BFA_ADAPTER_SERIAL_NUM_LEN);
}
