
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slim_val_inf {int dummy; } ;
struct slim_device {int dummy; } ;


 int SLIM_MSG_MC_CHANGE_VALUE ;
 int slim_fill_msg (struct slim_val_inf*,int ,size_t,int *,int *) ;
 int slim_xfer_msg (struct slim_device*,struct slim_val_inf*,int ) ;

int slim_write(struct slim_device *sdev, u32 addr, size_t count, u8 *val)
{
 struct slim_val_inf msg;

 slim_fill_msg(&msg, addr, count, ((void*)0), val);

 return slim_xfer_msg(sdev, &msg, SLIM_MSG_MC_CHANGE_VALUE);
}
