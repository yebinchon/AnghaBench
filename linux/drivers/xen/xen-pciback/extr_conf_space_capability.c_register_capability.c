
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_config_capability {int cap_list; } ;


 int capabilities ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void register_capability(struct xen_pcibk_config_capability *cap)
{
 list_add_tail(&cap->cap_list, &capabilities);
}
