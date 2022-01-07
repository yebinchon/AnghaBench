
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u16 ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;
struct EFUSE_ACCESS_STRUCT {int start_addr; int cnts; int * data; } ;


 int RNDIS_STATUS_FAILURE ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 int r8712_efuse_access (struct _adapter*,int,int,int,int *) ;
 int r8712_efuse_get_max_size (struct _adapter*) ;

uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);

 uint status = RNDIS_STATUS_SUCCESS;

 struct EFUSE_ACCESS_STRUCT *pefuse;
 u8 *data;
 u16 addr = 0, cnts = 0;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;

 pefuse = (struct EFUSE_ACCESS_STRUCT *)poid_par_priv->information_buf;
 addr = pefuse->start_addr;
 cnts = pefuse->cnts;
 data = pefuse->data;

 if ((addr > 511) || (cnts < 1) || (cnts > 512) ||
     (addr + cnts) > r8712_efuse_get_max_size(Adapter))
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (!r8712_efuse_access(Adapter, 0, addr, cnts, data))
  status = RNDIS_STATUS_FAILURE;
 return status;
}
