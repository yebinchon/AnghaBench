
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct profi_priv {int fbdev; } ;
struct anybuss_client {int dummy; } ;


 struct profi_priv* anybuss_get_drvdata (struct anybuss_client*) ;
 int fieldbus_dev_area_updated (int *) ;

__attribute__((used)) static void profi_on_area_updated(struct anybuss_client *client)
{
 struct profi_priv *priv = anybuss_get_drvdata(client);

 fieldbus_dev_area_updated(&priv->fbdev);
}
