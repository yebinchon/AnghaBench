
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132 {int kref; } ;


 int kref_put (int *,int ) ;
 int u132_hcd_delete ;

__attribute__((used)) static inline void u132_monitor_put_kref(struct u132 *u132)
{
 kref_put(&u132->kref, u132_hcd_delete);
}
