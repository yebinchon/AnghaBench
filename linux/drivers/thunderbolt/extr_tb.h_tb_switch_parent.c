
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct tb_switch {TYPE_1__ dev; } ;


 struct tb_switch* tb_to_switch (int ) ;

__attribute__((used)) static inline struct tb_switch *tb_switch_parent(struct tb_switch *sw)
{
 return tb_to_switch(sw->dev.parent);
}
