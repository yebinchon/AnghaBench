
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2i_endpoint {int state; TYPE_1__* hba; } ;
struct TYPE_2__ {int cnic_dev_type; } ;


 int BNX2I_NX2_DEV_57710 ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2i_ep_tcp_conn_active(struct bnx2i_endpoint *bnx2i_ep)
{
 int ret;
 int cnic_dev_10g = 0;

 if (test_bit(BNX2I_NX2_DEV_57710, &bnx2i_ep->hba->cnic_dev_type))
  cnic_dev_10g = 1;

 switch (bnx2i_ep->state) {
 case 140:
 case 133:
 case 136:
  ret = 0;
  break;
 case 137:
 case 138:
 case 139:
 case 128:
 case 130:
 case 132:
 case 134:
 case 135:
 case 129:
  ret = 1;
  break;
 case 131:
  if (cnic_dev_10g)
   ret = 0;
  else
   ret = 1;
  break;
 default:
  ret = 0;
 }

 return ret;
}
