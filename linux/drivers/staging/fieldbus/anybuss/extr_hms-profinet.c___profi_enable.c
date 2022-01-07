
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct profi_priv {int power_on; struct anybuss_client* client; } ;
struct anybuss_memcfg {int input_io; int output_io; int offl_mode; int output_total; int output_dpram; int input_total; int input_dpram; } ;
struct anybuss_client {int dummy; } ;


 int AB_OFFL_MODE_CLEAR ;
 int PROFI_DPRAM_SIZE ;
 int anybuss_finish_init (struct anybuss_client*) ;
 int anybuss_set_power (struct anybuss_client*,int) ;
 int anybuss_start_init (struct anybuss_client*,struct anybuss_memcfg const*) ;

__attribute__((used)) static int __profi_enable(struct profi_priv *priv)
{
 int ret;
 struct anybuss_client *client = priv->client;

 const struct anybuss_memcfg mem_cfg = {
  .input_io = 220,
  .input_dpram = PROFI_DPRAM_SIZE,
  .input_total = PROFI_DPRAM_SIZE,
  .output_io = 220,
  .output_dpram = PROFI_DPRAM_SIZE,
  .output_total = PROFI_DPRAM_SIZE,
  .offl_mode = AB_OFFL_MODE_CLEAR,
 };





 anybuss_set_power(client, 0);
 ret = anybuss_set_power(client, 1);
 if (ret)
  goto err;
 ret = anybuss_start_init(client, &mem_cfg);
 if (ret)
  goto err;
 ret = anybuss_finish_init(client);
 if (ret)
  goto err;
 priv->power_on = 1;
 return 0;

err:
 anybuss_set_power(client, 0);
 priv->power_on = 0;
 return ret;
}
