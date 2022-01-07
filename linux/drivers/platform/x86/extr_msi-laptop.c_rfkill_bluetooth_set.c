
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSI_STANDARD_EC_BLUETOOTH_MASK ;
 int min (int,int ) ;
 int set_device_state (char*,int ,int ) ;

__attribute__((used)) static int rfkill_bluetooth_set(void *data, bool blocked)
{





 int result = set_device_state(blocked ? "0" : "1", 0,
   MSI_STANDARD_EC_BLUETOOTH_MASK);

 return min(result, 0);
}
