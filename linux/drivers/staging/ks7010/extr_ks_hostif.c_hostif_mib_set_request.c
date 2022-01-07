
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ks_wlan_private {scalar_t__ dev_state; } ;
struct TYPE_2__ {int body; void* type; void* size; } ;
struct hostif_mib_set_request_t {TYPE_1__ mib_value; int mib_attribute; } ;
typedef enum mib_data_type { ____Placeholder_mib_data_type } mib_data_type ;
typedef enum mib_attribute { ____Placeholder_mib_attribute } mib_attribute ;


 scalar_t__ DEVICE_STATE_BOOT ;
 int HIF_MIB_SET_REQ ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int hif_align_size (int) ;
 struct hostif_mib_set_request_t* hostif_generic_request (int,int ) ;
 int memcpy (int *,void*,size_t) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_mib_set_request_t*,int ) ;

__attribute__((used)) static void hostif_mib_set_request(struct ks_wlan_private *priv,
       enum mib_attribute attr,
       enum mib_data_type type,
       void *data, size_t size)
{
 struct hostif_mib_set_request_t *pp;

 if (priv->dev_state < DEVICE_STATE_BOOT)
  return;

 pp = hostif_generic_request(sizeof(*pp), HIF_MIB_SET_REQ);
 if (!pp)
  return;

 pp->mib_attribute = cpu_to_le32(attr);
 pp->mib_value.size = cpu_to_le16(size);
 pp->mib_value.type = cpu_to_le16(type);
 memcpy(&pp->mib_value.body, data, size);

 send_request_to_device(priv, pp, hif_align_size(sizeof(*pp) + size));
}
