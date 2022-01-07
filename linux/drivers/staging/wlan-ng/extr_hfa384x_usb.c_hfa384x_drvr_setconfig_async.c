
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfa384x {int dummy; } ;
typedef int ctlx_usercb_t ;


 int DOASYNC ;
 int hfa384x_cb_status ;
 int hfa384x_dowrid (struct hfa384x*,int ,int ,void*,int ,int ,int ,void*) ;

int
hfa384x_drvr_setconfig_async(struct hfa384x *hw,
        u16 rid,
        void *buf,
        u16 len, ctlx_usercb_t usercb, void *usercb_data)
{
 return hfa384x_dowrid(hw, DOASYNC, rid, buf, len, hfa384x_cb_status,
         usercb, usercb_data);
}
