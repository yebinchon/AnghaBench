
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int id; } ;
struct regulator_dev {int dummy; } ;


 int DEV_GRP_P1 ;
 int EINVAL ;
 unsigned int MSG_SINGULAR (int ,int ,int ) ;


 int RES_STATE_ACTIVE ;
 int RES_STATE_SLEEP ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twl4030_send_pb_msg (unsigned int) ;

__attribute__((used)) static int twl4030reg_set_mode(struct regulator_dev *rdev, unsigned mode)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 unsigned message;


 switch (mode) {
 case 129:
  message = MSG_SINGULAR(DEV_GRP_P1, info->id, RES_STATE_ACTIVE);
  break;
 case 128:
  message = MSG_SINGULAR(DEV_GRP_P1, info->id, RES_STATE_SLEEP);
  break;
 default:
  return -EINVAL;
 }

 return twl4030_send_pb_msg(message);
}
