
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* card_name; int dev; struct device* parent; int simple_enable_set; int enable_get; int fieldbus_id_get; int write_area; int read_area; int fieldbus_type; void* write_area_sz; void* read_area_sz; } ;
struct profi_priv {TYPE_1__ fbdev; struct anybuss_client* client; int enable_lock; } ;
struct device {int dummy; } ;
struct anybuss_client {int on_online_changed; int on_area_updated; struct device dev; } ;


 int ENOMEM ;
 int FIELDBUS_DEV_TYPE_PROFINET ;
 int GFP_KERNEL ;
 void* PROFI_DPRAM_SIZE ;
 int anybuss_set_drvdata (struct anybuss_client*,struct profi_priv*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_name (int ) ;
 struct profi_priv* devm_kzalloc (struct device*,int,int ) ;
 int fieldbus_dev_register (TYPE_1__*) ;
 int mutex_init (int *) ;
 int profi_enable_get ;
 int profi_id_get ;
 int profi_on_area_updated ;
 int profi_on_online_changed ;
 int profi_read_area ;
 int profi_simple_enable ;
 int profi_write_area ;

__attribute__((used)) static int profinet_probe(struct anybuss_client *client)
{
 struct profi_priv *priv;
 struct device *dev = &client->dev;
 int err;

 client->on_area_updated = profi_on_area_updated;
 client->on_online_changed = profi_on_online_changed;
 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 mutex_init(&priv->enable_lock);
 priv->client = client;
 priv->fbdev.read_area_sz = PROFI_DPRAM_SIZE;
 priv->fbdev.write_area_sz = PROFI_DPRAM_SIZE;
 priv->fbdev.card_name = "HMS Profinet IRT (Anybus-S)";
 priv->fbdev.fieldbus_type = FIELDBUS_DEV_TYPE_PROFINET;
 priv->fbdev.read_area = profi_read_area;
 priv->fbdev.write_area = profi_write_area;
 priv->fbdev.fieldbus_id_get = profi_id_get;
 priv->fbdev.enable_get = profi_enable_get;
 priv->fbdev.simple_enable_set = profi_simple_enable;
 priv->fbdev.parent = dev;
 err = fieldbus_dev_register(&priv->fbdev);
 if (err < 0)
  return err;
 dev_info(dev, "card detected, registered as %s",
   dev_name(priv->fbdev.dev));
 anybuss_set_drvdata(client, priv);

 return 0;
}
