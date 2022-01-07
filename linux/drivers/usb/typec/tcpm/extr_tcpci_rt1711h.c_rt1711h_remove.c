
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1711h_chip {int tcpci; } ;
struct i2c_client {int dummy; } ;


 struct rt1711h_chip* i2c_get_clientdata (struct i2c_client*) ;
 int tcpci_unregister_port (int ) ;

__attribute__((used)) static int rt1711h_remove(struct i2c_client *client)
{
 struct rt1711h_chip *chip = i2c_get_clientdata(client);

 tcpci_unregister_port(chip->tcpci);
 return 0;
}
