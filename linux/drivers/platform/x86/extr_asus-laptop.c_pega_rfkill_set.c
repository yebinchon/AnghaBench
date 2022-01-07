
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_rfkill {int control_id; int asus; } ;


 int asus_pega_lucid_set (int ,int ,int) ;

__attribute__((used)) static int pega_rfkill_set(void *data, bool blocked)
{
 struct asus_rfkill *rfk = data;

 int ret = asus_pega_lucid_set(rfk->asus, rfk->control_id, !blocked);
 return ret;
}
