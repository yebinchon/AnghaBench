
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int * body; } ;
struct TYPE_6__ {TYPE_2__ rate_set; int scan_type; int cts_mode; int phy_type; } ;
struct ks_wlan_private {TYPE_3__ reg; } ;
struct TYPE_4__ {int * body; int size; } ;
struct hostif_request {TYPE_1__ rate_set; int capability; void* scan_type; void* cts_mode; void* phy_type; } ;


 void* cpu_to_le16 (int ) ;
 int ks_wlan_cap (struct ks_wlan_private*) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void init_request(struct ks_wlan_private *priv,
    struct hostif_request *req)
{
 req->phy_type = cpu_to_le16(priv->reg.phy_type);
 req->cts_mode = cpu_to_le16(priv->reg.cts_mode);
 req->scan_type = cpu_to_le16(priv->reg.scan_type);
 req->rate_set.size = priv->reg.rate_set.size;
 req->capability = ks_wlan_cap(priv);
 memcpy(&req->rate_set.body[0], &priv->reg.rate_set.body[0],
        priv->reg.rate_set.size);
}
