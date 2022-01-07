
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct oid_par_priv {scalar_t__ type_of_oid; } ;


 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_SUCCESS ;
 int oid_rt_pro_read_efuse_hdl (struct oid_par_priv*) ;
 int oid_rt_pro_write_efuse_hdl (struct oid_par_priv*) ;

uint oid_rt_pro_efuse_hdl(struct oid_par_priv *poid_par_priv)
{
 uint status = RNDIS_STATUS_SUCCESS;

 if (poid_par_priv->type_of_oid == QUERY_OID)
  status = oid_rt_pro_read_efuse_hdl(poid_par_priv);
 else
  status = oid_rt_pro_write_efuse_hdl(poid_par_priv);
 return status;
}
