
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct rf_reg_param {int value; scalar_t__ offset; scalar_t__ path; } ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int* bytes_rw; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;


 scalar_t__ QUERY_OID ;
 scalar_t__ RF_PATH_B ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 int r8712_rf_reg_read (struct _adapter*,scalar_t__,scalar_t__) ;

uint oid_rt_pro_read_rf_reg_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 struct rf_reg_param *pbbreg;
 u8 path;
 u8 offset;
 u32 value;

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len < sizeof(struct rf_reg_param))
  return RNDIS_STATUS_INVALID_LENGTH;
 pbbreg = (struct rf_reg_param *)(poid_par_priv->information_buf);
 path = (u8)pbbreg->path;
 if (path > RF_PATH_B)
  return RNDIS_STATUS_NOT_ACCEPTED;
 offset = (u8)pbbreg->offset;
 value = r8712_rf_reg_read(Adapter, path, offset);
 pbbreg->value = value;
 *poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 return RNDIS_STATUS_SUCCESS;
}
