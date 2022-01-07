
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxp_nci_i2c_phy {int ndev; } ;
struct i2c_client {int irq; } ;


 int free_irq (int ,struct nxp_nci_i2c_phy*) ;
 struct nxp_nci_i2c_phy* i2c_get_clientdata (struct i2c_client*) ;
 int nxp_nci_remove (int ) ;

__attribute__((used)) static int nxp_nci_i2c_remove(struct i2c_client *client)
{
 struct nxp_nci_i2c_phy *phy = i2c_get_clientdata(client);

 nxp_nci_remove(phy->ndev);
 free_irq(client->irq, phy);

 return 0;
}
