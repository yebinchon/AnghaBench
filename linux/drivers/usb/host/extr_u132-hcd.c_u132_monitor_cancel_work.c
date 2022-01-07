
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132 {int kref; int monitor; } ;


 scalar_t__ cancel_delayed_work (int *) ;
 int kref_put (int *,int ) ;
 int u132_hcd_delete ;

__attribute__((used)) static void u132_monitor_cancel_work(struct u132 *u132)
{
 if (cancel_delayed_work(&u132->monitor))
  kref_put(&u132->kref, u132_hcd_delete);
}
