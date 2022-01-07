
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int tb_switch_type ;

__attribute__((used)) static inline bool tb_is_switch(const struct device *dev)
{
 return dev->type == &tb_switch_type;
}
