
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ideapad_private {int * debug; } ;


 int debugfs_remove_recursive (int *) ;

__attribute__((used)) static void ideapad_debugfs_exit(struct ideapad_private *priv)
{
 debugfs_remove_recursive(priv->debug);
 priv->debug = ((void*)0);
}
