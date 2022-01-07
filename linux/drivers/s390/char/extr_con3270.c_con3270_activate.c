
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {int dummy; } ;
struct con3270 {int update_flags; } ;


 int CON_UPDATE_ALL ;
 int con3270_set_timer (struct con3270*,int) ;

__attribute__((used)) static int
con3270_activate(struct raw3270_view *view)
{
 struct con3270 *cp;

 cp = (struct con3270 *) view;
 cp->update_flags = CON_UPDATE_ALL;
 con3270_set_timer(cp, 1);
 return 0;
}
