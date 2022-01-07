
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_bridge {int ref; } ;


 int free_bridge ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void put_bridge(struct acpiphp_bridge *bridge)
{
 kref_put(&bridge->ref, free_bridge);
}
