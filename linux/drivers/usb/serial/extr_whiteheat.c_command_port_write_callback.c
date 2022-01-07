
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static void command_port_write_callback(struct urb *urb)
{
 int status = urb->status;

 if (status) {
  dev_dbg(&urb->dev->dev, "nonzero urb status: %d\n", status);
  return;
 }
}
