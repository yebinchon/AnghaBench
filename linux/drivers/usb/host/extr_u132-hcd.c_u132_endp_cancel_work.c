
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132_endp {int kref; int scheduler; } ;
struct u132 {int dummy; } ;


 scalar_t__ cancel_delayed_work (int *) ;
 int kref_put (int *,int ) ;
 int u132_endp_delete ;

__attribute__((used)) static void u132_endp_cancel_work(struct u132 *u132, struct u132_endp *endp)
{
 if (cancel_delayed_work(&endp->scheduler))
  kref_put(&endp->kref, u132_endp_delete);
}
