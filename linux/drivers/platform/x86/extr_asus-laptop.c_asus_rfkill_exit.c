
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int gps; int wlan; int bluetooth; int wwan; } ;


 int asus_rfkill_terminate (int *) ;

__attribute__((used)) static void asus_rfkill_exit(struct asus_laptop *asus)
{
 asus_rfkill_terminate(&asus->wwan);
 asus_rfkill_terminate(&asus->bluetooth);
 asus_rfkill_terminate(&asus->wlan);
 asus_rfkill_terminate(&asus->gps);
}
