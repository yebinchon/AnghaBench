
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_pin_config {unsigned int* pins; } ;



__attribute__((used)) static inline bool pin_in_config_range(unsigned int offset,
  const struct aspeed_pin_config *config)
{
 return offset >= config->pins[0] && offset <= config->pins[1];
}
