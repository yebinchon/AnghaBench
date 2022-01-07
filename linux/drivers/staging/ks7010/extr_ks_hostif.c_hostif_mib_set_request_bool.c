
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
struct ks_wlan_private {int dummy; } ;
typedef enum mib_attribute { ____Placeholder_mib_attribute } mib_attribute ;
typedef int __le32 ;


 int MIB_VALUE_TYPE_BOOL ;
 int cpu_to_le32 (int) ;
 int hostif_mib_set_request (struct ks_wlan_private*,int,int ,int *,size_t) ;

__attribute__((used)) static inline void hostif_mib_set_request_bool(struct ks_wlan_private *priv,
            enum mib_attribute attr,
            bool val)
{
 __le32 v = cpu_to_le32(val);
 size_t size = sizeof(v);

 hostif_mib_set_request(priv, attr, MIB_VALUE_TYPE_BOOL, &v, size);
}
