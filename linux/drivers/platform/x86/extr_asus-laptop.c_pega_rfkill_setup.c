
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_rfkill {int dummy; } ;
struct asus_laptop {int dummy; } ;


 int asus_rfkill_setup (struct asus_laptop*,struct asus_rfkill*,char const*,int,int,int *) ;
 int pega_rfkill_ops ;

__attribute__((used)) static int pega_rfkill_setup(struct asus_laptop *asus, struct asus_rfkill *rfk,
        const char *name, int controlid, int rfkill_type)
{
 return asus_rfkill_setup(asus, rfk, name, controlid, rfkill_type,
     &pega_rfkill_ops);
}
