
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct file {struct aspeed_p2a_user* private_data; } ;
struct aspeed_p2a_user {scalar_t__ read; scalar_t__* readwrite; TYPE_3__* parent; } ;
struct TYPE_6__ {scalar_t__ readers; scalar_t__* readerwriters; int tracking; int regmap; TYPE_2__* config; } ;
struct TYPE_5__ {TYPE_1__* regions; } ;
struct TYPE_4__ {int bit; } ;


 int P2A_REGION_COUNT ;
 int SCU2C ;
 int aspeed_p2a_disable_bridge (TYPE_3__*) ;
 int kfree (struct aspeed_p2a_user*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int aspeed_p2a_release(struct inode *inode, struct file *file)
{
 int i;
 u32 bits = 0;
 bool open_regions = 0;
 struct aspeed_p2a_user *priv = file->private_data;




 mutex_lock(&priv->parent->tracking);

 priv->parent->readers -= priv->read;

 for (i = 0; i < P2A_REGION_COUNT; i++) {
  priv->parent->readerwriters[i] -= priv->readwrite[i];

  if (priv->parent->readerwriters[i] > 0)
   open_regions = 1;
  else
   bits |= priv->parent->config->regions[i].bit;
 }
 regmap_update_bits(priv->parent->regmap, SCU2C, bits, bits);




 if (!open_regions && priv->parent->readers == 0)
  aspeed_p2a_disable_bridge(priv->parent);

 mutex_unlock(&priv->parent->tracking);

 kfree(priv);

 return 0;
}
