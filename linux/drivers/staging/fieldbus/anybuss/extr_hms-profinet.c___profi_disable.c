
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct profi_priv {int power_on; struct anybuss_client* client; } ;
struct anybuss_client {int dummy; } ;


 int anybuss_set_power (struct anybuss_client*,int) ;

__attribute__((used)) static int __profi_disable(struct profi_priv *priv)
{
 struct anybuss_client *client = priv->client;

 anybuss_set_power(client, 0);
 priv->power_on = 0;
 return 0;
}
