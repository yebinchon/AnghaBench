
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ideapad_private {int * blightdev; } ;


 int backlight_device_unregister (int *) ;

__attribute__((used)) static void ideapad_backlight_exit(struct ideapad_private *priv)
{
 backlight_device_unregister(priv->blightdev);
 priv->blightdev = ((void*)0);
}
