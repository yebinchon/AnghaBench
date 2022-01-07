
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct asus_rfkill {int rfkill; int dev_id; int asus; } ;


 int asus_wmi_get_devstate_simple (int ,int ) ;
 int rfkill_set_sw_state (int ,int) ;

__attribute__((used)) static void asus_rfkill_query(struct rfkill *rfkill, void *data)
{
 struct asus_rfkill *priv = data;
 int result;

 result = asus_wmi_get_devstate_simple(priv->asus, priv->dev_id);

 if (result < 0)
  return;

 rfkill_set_sw_state(priv->rfkill, !result);
}
