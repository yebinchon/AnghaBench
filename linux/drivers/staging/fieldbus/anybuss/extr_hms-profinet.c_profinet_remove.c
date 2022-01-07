
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct profi_priv {int fbdev; } ;
struct anybuss_client {int dummy; } ;


 struct profi_priv* anybuss_get_drvdata (struct anybuss_client*) ;
 int fieldbus_dev_unregister (int *) ;

__attribute__((used)) static int profinet_remove(struct anybuss_client *client)
{
 struct profi_priv *priv = anybuss_get_drvdata(client);

 fieldbus_dev_unregister(&priv->fbdev);
 return 0;
}
