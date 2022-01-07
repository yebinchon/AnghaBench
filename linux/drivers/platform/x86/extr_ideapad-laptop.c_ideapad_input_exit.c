
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ideapad_private {int * inputdev; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void ideapad_input_exit(struct ideapad_private *priv)
{
 input_unregister_device(priv->inputdev);
 priv->inputdev = ((void*)0);
}
