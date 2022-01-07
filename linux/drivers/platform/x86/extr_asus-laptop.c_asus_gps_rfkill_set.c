
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int dummy; } ;


 int asus_gps_switch (struct asus_laptop*,int) ;

__attribute__((used)) static int asus_gps_rfkill_set(void *data, bool blocked)
{
 struct asus_laptop *asus = data;

 return asus_gps_switch(asus, !blocked);
}
