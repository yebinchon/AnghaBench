
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_config_quirk {int quirks_list; } ;


 int list_add_tail (int *,int *) ;
 int xen_pcibk_quirks ;

__attribute__((used)) static inline void register_quirk(struct xen_pcibk_config_quirk *quirk)
{
 list_add_tail(&quirk->quirks_list, &xen_pcibk_quirks);
}
