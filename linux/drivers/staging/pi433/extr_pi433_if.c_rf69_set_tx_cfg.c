
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi433_tx_cfg {scalar_t__ enable_preamble; scalar_t__ enable_sync; scalar_t__ enable_length_byte; scalar_t__ enable_crc; int sync_pattern; int sync_length; int preamble_length; int tx_start_condition; int mod_shaping; int pa_ramp; int dev_frequency; int modulation; int bit_rate; int frequency; } ;
struct pi433_device {int spi; } ;


 scalar_t__ OPTION_ON ;
 int packet_length_fix ;
 int packet_length_var ;
 int rf69_disable_crc (int ) ;
 int rf69_disable_sync (int ) ;
 int rf69_enable_crc (int ) ;
 int rf69_enable_sync (int ) ;
 int rf69_set_bit_rate (int ,int ) ;
 int rf69_set_deviation (int ,int ) ;
 int rf69_set_frequency (int ,int ) ;
 int rf69_set_modulation (int ,int ) ;
 int rf69_set_modulation_shaping (int ,int ) ;
 int rf69_set_pa_ramp (int ,int ) ;
 int rf69_set_packet_format (int ,int ) ;
 int rf69_set_preamble_length (int ,int ) ;
 int rf69_set_sync_size (int ,int ) ;
 int rf69_set_sync_values (int ,int ) ;
 int rf69_set_tx_start_condition (int ,int ) ;

__attribute__((used)) static int
rf69_set_tx_cfg(struct pi433_device *dev, struct pi433_tx_cfg *tx_cfg)
{
 int ret;

 ret = rf69_set_frequency(dev->spi, tx_cfg->frequency);
 if (ret < 0)
  return ret;
 ret = rf69_set_bit_rate(dev->spi, tx_cfg->bit_rate);
 if (ret < 0)
  return ret;
 ret = rf69_set_modulation(dev->spi, tx_cfg->modulation);
 if (ret < 0)
  return ret;
 ret = rf69_set_deviation(dev->spi, tx_cfg->dev_frequency);
 if (ret < 0)
  return ret;
 ret = rf69_set_pa_ramp(dev->spi, tx_cfg->pa_ramp);
 if (ret < 0)
  return ret;
 ret = rf69_set_modulation_shaping(dev->spi, tx_cfg->mod_shaping);
 if (ret < 0)
  return ret;
 ret = rf69_set_tx_start_condition(dev->spi, tx_cfg->tx_start_condition);
 if (ret < 0)
  return ret;


 if (tx_cfg->enable_preamble == OPTION_ON) {
  ret = rf69_set_preamble_length(dev->spi,
            tx_cfg->preamble_length);
  if (ret < 0)
   return ret;
 } else {
  ret = rf69_set_preamble_length(dev->spi, 0);
  if (ret < 0)
   return ret;
 }

 if (tx_cfg->enable_sync == OPTION_ON) {
  ret = rf69_set_sync_size(dev->spi, tx_cfg->sync_length);
  if (ret < 0)
   return ret;
  ret = rf69_set_sync_values(dev->spi, tx_cfg->sync_pattern);
  if (ret < 0)
   return ret;
  ret = rf69_enable_sync(dev->spi);
  if (ret < 0)
   return ret;
 } else {
  ret = rf69_disable_sync(dev->spi);
  if (ret < 0)
   return ret;
 }

 if (tx_cfg->enable_length_byte == OPTION_ON) {
  ret = rf69_set_packet_format(dev->spi, packet_length_var);
  if (ret < 0)
   return ret;
 } else {
  ret = rf69_set_packet_format(dev->spi, packet_length_fix);
  if (ret < 0)
   return ret;
 }

 if (tx_cfg->enable_crc == OPTION_ON) {
  ret = rf69_enable_crc(dev->spi);
  if (ret < 0)
   return ret;
 } else {
  ret = rf69_disable_crc(dev->spi);
  if (ret < 0)
   return ret;
 }

 return 0;
}
