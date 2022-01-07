
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_bridge {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void get_bridge(struct acpiphp_bridge *bridge)
{
 kref_get(&bridge->ref);
}
