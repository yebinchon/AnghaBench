
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dev; } ;


 int dev_get_drvdata (int *) ;
 int tape_discipline_34xx ;
 int tape_generic_online (int ,int *) ;

__attribute__((used)) static int
tape_34xx_online(struct ccw_device *cdev)
{
 return tape_generic_online(
  dev_get_drvdata(&cdev->dev),
  &tape_discipline_34xx
 );
}
