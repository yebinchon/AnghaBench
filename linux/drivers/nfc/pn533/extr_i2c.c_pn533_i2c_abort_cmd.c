
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533_i2c_phy {int aborted; int priv; } ;
struct pn533 {struct pn533_i2c_phy* phy; } ;
typedef int gfp_t ;


 int ENOENT ;
 int pn533_i2c_send_ack (struct pn533*,int ) ;
 int pn533_recv_frame (int ,int *,int ) ;

__attribute__((used)) static void pn533_i2c_abort_cmd(struct pn533 *dev, gfp_t flags)
{
 struct pn533_i2c_phy *phy = dev->phy;

 phy->aborted = 1;


 pn533_i2c_send_ack(dev, flags);


 pn533_recv_frame(phy->priv, ((void*)0), -ENOENT);
}
