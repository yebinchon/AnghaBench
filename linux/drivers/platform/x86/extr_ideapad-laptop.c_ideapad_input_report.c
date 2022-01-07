
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ideapad_private {int inputdev; } ;


 int sparse_keymap_report_event (int ,unsigned long,int,int) ;

__attribute__((used)) static void ideapad_input_report(struct ideapad_private *priv,
     unsigned long scancode)
{
 sparse_keymap_report_event(priv->inputdev, scancode, 1, 1);
}
