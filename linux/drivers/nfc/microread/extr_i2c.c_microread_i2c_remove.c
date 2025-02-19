
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microread_i2c_phy {int hdev; } ;
struct i2c_client {int irq; } ;


 int free_irq (int ,struct microread_i2c_phy*) ;
 struct microread_i2c_phy* i2c_get_clientdata (struct i2c_client*) ;
 int microread_remove (int ) ;

__attribute__((used)) static int microread_i2c_remove(struct i2c_client *client)
{
 struct microread_i2c_phy *phy = i2c_get_clientdata(client);

 microread_remove(phy->hdev);

 free_irq(client->irq, phy);

 return 0;
}
