
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int dummy; } ;
typedef enum mib_attribute { ____Placeholder_mib_attribute } mib_attribute ;


 int MIB_VALUE_TYPE_OSTRING ;
 int hostif_mib_set_request (struct ks_wlan_private*,int,int ,void*,size_t) ;

__attribute__((used)) static inline void hostif_mib_set_request_ostring(struct ks_wlan_private *priv,
        enum mib_attribute attr,
        void *data, size_t size)
{
 hostif_mib_set_request(priv, attr, MIB_VALUE_TYPE_OSTRING, data, size);
}
