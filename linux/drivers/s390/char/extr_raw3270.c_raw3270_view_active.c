
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {struct raw3270* dev; } ;
struct raw3270 {int flags; struct raw3270_view* view; } ;


 int RAW3270_FLAGS_FROZEN ;
 int test_bit (int ,int *) ;

int
raw3270_view_active(struct raw3270_view *view)
{
 struct raw3270 *rp = view->dev;

 return rp && rp->view == view &&
  !test_bit(RAW3270_FLAGS_FROZEN, &rp->flags);
}
