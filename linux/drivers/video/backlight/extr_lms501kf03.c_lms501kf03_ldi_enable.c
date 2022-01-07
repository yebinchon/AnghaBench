
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lms501kf03 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int lms501kf03_panel_send_sequence (struct lms501kf03*,int ,int ) ;
 int seq_display_on ;

__attribute__((used)) static int lms501kf03_ldi_enable(struct lms501kf03 *lcd)
{
 return lms501kf03_panel_send_sequence(lcd, seq_display_on,
     ARRAY_SIZE(seq_display_on));
}
