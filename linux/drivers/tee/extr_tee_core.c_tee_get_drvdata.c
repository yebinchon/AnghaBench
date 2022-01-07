
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_device {int dev; } ;


 void* dev_get_drvdata (int *) ;

void *tee_get_drvdata(struct tee_device *teedev)
{
 return dev_get_drvdata(&teedev->dev);
}
