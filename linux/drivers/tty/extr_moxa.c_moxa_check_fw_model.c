
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct moxa_board_conf {int boardType; } ;


 int EINVAL ;




__attribute__((used)) static int moxa_check_fw_model(struct moxa_board_conf *brd, u8 model)
{
 switch (brd->boardType) {
 case 130:
 case 129:
  if (model != 1)
   goto err;
  break;
 case 128:
  if (model != 3)
   goto err;
  break;
 default:
  if (model != 2)
   goto err;
  break;
 }
 return 0;
err:
 return -EINVAL;
}
