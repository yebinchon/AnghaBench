
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ PCI_ANY_ID ;

__attribute__((used)) static inline int quirk_id_matches(u32 quirk_id, u32 dev_id)
{
 return quirk_id == PCI_ANY_ID || quirk_id == dev_id;
}
