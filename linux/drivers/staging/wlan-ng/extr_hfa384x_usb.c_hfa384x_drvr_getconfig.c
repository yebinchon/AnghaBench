
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfa384x {int dummy; } ;


 int DOWAIT ;
 int hfa384x_dorrid (struct hfa384x*,int ,int ,void*,int ,int *,int *,int *) ;

int hfa384x_drvr_getconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len)
{
 return hfa384x_dorrid(hw, DOWAIT, rid, buf, len, ((void*)0), ((void*)0), ((void*)0));
}
