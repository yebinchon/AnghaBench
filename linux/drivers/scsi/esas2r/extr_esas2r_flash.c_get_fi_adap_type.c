
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct esas2r_adapter {TYPE_1__* pcid; } ;
struct TYPE_2__ {int device; } ;







 int FI_AT_MV_9580 ;
 int FI_AT_SUN_LAKE ;
 int FI_AT_UNKNWN ;

__attribute__((used)) static u8 get_fi_adap_type(struct esas2r_adapter *a)
{
 u8 type;


 switch (a->pcid->device) {
 case 132:
  type = FI_AT_SUN_LAKE;
  break;

 case 131:
 case 129:
 case 128:
 case 130:
  type = FI_AT_MV_9580;
  break;

 default:
  type = FI_AT_UNKNWN;
  break;
 }

 return type;
}
