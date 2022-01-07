
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u16 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int* bytes_rw; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;
struct EFUSE_ACCESS_STRUCT {int start_addr; int cnts; int * data; } ;


 int EFUSE_MAX_SIZE ;
 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_FAILURE ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 int memset (int *,int,int) ;
 int r8712_efuse_access (struct _adapter*,int,int,int,int *) ;

uint oid_rt_pro_read_efuse_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);

 uint status = RNDIS_STATUS_SUCCESS;

 struct EFUSE_ACCESS_STRUCT *pefuse;
 u8 *data;
 u16 addr = 0, cnts = 0;

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len <
     sizeof(struct EFUSE_ACCESS_STRUCT))
  return RNDIS_STATUS_INVALID_LENGTH;
 pefuse = (struct EFUSE_ACCESS_STRUCT *)poid_par_priv->information_buf;
 addr = pefuse->start_addr;
 cnts = pefuse->cnts;
 data = pefuse->data;
 memset(data, 0xFF, cnts);
 if ((addr > 511) || (cnts < 1) || (cnts > 512) || (addr + cnts) >
      EFUSE_MAX_SIZE)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (!r8712_efuse_access(Adapter, 1, addr, cnts, data))
  status = RNDIS_STATUS_FAILURE;
 *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 return status;
}
