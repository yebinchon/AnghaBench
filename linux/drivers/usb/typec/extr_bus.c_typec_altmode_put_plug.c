
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode {int dev; } ;


 int put_device (int *) ;

void typec_altmode_put_plug(struct typec_altmode *plug)
{
 if (plug)
  put_device(&plug->dev);
}
