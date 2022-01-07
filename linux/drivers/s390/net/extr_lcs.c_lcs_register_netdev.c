
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lcs_card {TYPE_1__* dev; } ;
struct ccwgroup_device {int dev; } ;
struct TYPE_3__ {scalar_t__ reg_state; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 scalar_t__ NETREG_UNINITIALIZED ;
 int SET_NETDEV_DEV (TYPE_1__*,int *) ;
 struct lcs_card* dev_get_drvdata (int *) ;
 int register_netdev (TYPE_1__*) ;
 int setup ;

__attribute__((used)) static int
lcs_register_netdev(struct ccwgroup_device *ccwgdev)
{
 struct lcs_card *card;

 LCS_DBF_TEXT(2, setup, "regnetdv");
 card = dev_get_drvdata(&ccwgdev->dev);
 if (card->dev->reg_state != NETREG_UNINITIALIZED)
  return 0;
 SET_NETDEV_DEV(card->dev, &ccwgdev->dev);
 return register_netdev(card->dev);
}
