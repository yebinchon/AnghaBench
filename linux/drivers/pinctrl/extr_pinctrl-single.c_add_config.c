
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_conf_vals {int param; unsigned int val; unsigned int enable; unsigned int disable; unsigned int mask; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;



__attribute__((used)) static void add_config(struct pcs_conf_vals **conf, enum pin_config_param param,
         unsigned value, unsigned enable, unsigned disable,
         unsigned mask)
{
 (*conf)->param = param;
 (*conf)->val = value;
 (*conf)->enable = enable;
 (*conf)->disable = disable;
 (*conf)->mask = mask;
 (*conf)++;
}
