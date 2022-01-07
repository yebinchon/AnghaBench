
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct port100 {int cmd_type; TYPE_1__* interface; } ;
struct TYPE_2__ {int dev; } ;




 int PORT100_MDAA_TGT_HAS_BEEN_ACTIVATED_MASK ;
 int PORT100_MDAA_TGT_WAS_ACTIVATED_MASK ;
 int nfc_err (int *,char*) ;

__attribute__((used)) static bool port100_tg_target_activated(struct port100 *dev, u8 tgt_activated)
{
 u8 mask;

 switch (dev->cmd_type) {
 case 129:
  mask = PORT100_MDAA_TGT_HAS_BEEN_ACTIVATED_MASK;
  break;
 case 128:
  mask = PORT100_MDAA_TGT_HAS_BEEN_ACTIVATED_MASK |
         PORT100_MDAA_TGT_WAS_ACTIVATED_MASK;
  break;
 default:
  nfc_err(&dev->interface->dev, "Unknown command type\n");
  return 0;
 }

 return ((tgt_activated & mask) == mask);
}
