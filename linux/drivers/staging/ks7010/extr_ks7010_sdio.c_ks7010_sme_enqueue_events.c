
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_wlan_private {int dummy; } ;


 int ARRAY_SIZE (int const*) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int const) ;

__attribute__((used)) static void ks7010_sme_enqueue_events(struct ks_wlan_private *priv)
{
 static const u16 init_events[] = {
  139, 134,
  136, 140,
  132, 131,
  130, 129,
  128, 133,
  137, 138,
  135
 };
 int ev;

 for (ev = 0; ev < ARRAY_SIZE(init_events); ev++)
  hostif_sme_enqueue(priv, init_events[ev]);
}
