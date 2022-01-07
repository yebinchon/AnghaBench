
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct esp {scalar_t__ rev; scalar_t__ prev_cfg3; TYPE_1__* target; } ;
struct TYPE_2__ {scalar_t__ esp_config3; } ;


 scalar_t__ ESP100A ;
 int ESP_CFG3 ;
 int esp_write8 (scalar_t__,int ) ;

__attribute__((used)) static void esp_write_tgt_config3(struct esp *esp, int tgt)
{
 if (esp->rev > ESP100A) {
  u8 val = esp->target[tgt].esp_config3;

  if (val != esp->prev_cfg3) {
   esp->prev_cfg3 = val;
   esp_write8(val, ESP_CFG3);
  }
 }
}
