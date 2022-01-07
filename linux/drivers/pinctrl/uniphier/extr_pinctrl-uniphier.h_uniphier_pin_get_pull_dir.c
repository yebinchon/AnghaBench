
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long UNIPHIER_PIN_PULL_DIR_MASK ;
 unsigned long UNIPHIER_PIN_PULL_DIR_SHIFT ;

__attribute__((used)) static inline unsigned int uniphier_pin_get_pull_dir(void *drv_data)
{
 return ((unsigned long)drv_data >> UNIPHIER_PIN_PULL_DIR_SHIFT) &
      UNIPHIER_PIN_PULL_DIR_MASK;
}
