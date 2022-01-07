
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum spi_signal_type { ____Placeholder_spi_signal_type } spi_signal_type ;
struct TYPE_3__ {int value; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* signal_types ;

__attribute__((used)) static inline const char *spi_signal_to_string(enum spi_signal_type type)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(signal_types); i++) {
  if (type == signal_types[i].value)
   return signal_types[i].name;
 }
 return ((void*)0);
}
