
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 int BREAKPOINT_REQUEST ;
 int rx_sync_cmd (struct aac_dev*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void aac_rx_interrupt_adapter(struct aac_dev *dev)
{
 rx_sync_cmd(dev, BREAKPOINT_REQUEST, 0, 0, 0, 0, 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
