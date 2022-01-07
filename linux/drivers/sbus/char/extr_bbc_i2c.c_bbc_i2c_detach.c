
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bbc_i2c_client {struct platform_device* op; struct bbc_i2c_bus* bp; } ;
struct bbc_i2c_bus {int dummy; } ;


 int kfree (struct bbc_i2c_client*) ;
 int release_device (struct bbc_i2c_bus*,struct platform_device*) ;

void bbc_i2c_detach(struct bbc_i2c_client *client)
{
 struct bbc_i2c_bus *bp = client->bp;
 struct platform_device *op = client->op;

 release_device(bp, op);
 kfree(client);
}
