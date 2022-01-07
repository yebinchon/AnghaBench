
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string {int len; scalar_t__* string; } ;
struct TYPE_2__ {int cols; int dev; } ;
struct con3270 {TYPE_1__ view; } ;


 scalar_t__ TO_RA ;
 int raw3270_buffer_address (int ,scalar_t__*,int) ;

__attribute__((used)) static void
con3270_update_string(struct con3270 *cp, struct string *s, int nr)
{
 if (s->len < 4) {


  return;
 }
 if (s->string[s->len - 4] != TO_RA)
  return;
 raw3270_buffer_address(cp->view.dev, s->string + s->len - 3,
          cp->view.cols * (nr + 1));
}
