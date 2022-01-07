
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sony_call_snc_handle (int ,int,int*) ;
 int* sony_rfkill_address ;
 int sony_rfkill_handle ;

__attribute__((used)) static int sony_nc_rfkill_set(void *data, bool blocked)
{
 int result;
 int argument = sony_rfkill_address[(long) data] + 0x100;

 if (!blocked)
  argument |= 0x070000;

 return sony_call_snc_handle(sony_rfkill_handle, argument, &result);
}
