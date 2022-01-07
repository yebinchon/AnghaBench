
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_rcpi_rssi_threshold {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_RCPI_RSSI_THRESHOLD ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_rcpi_rssi_threshold*,int) ;

__attribute__((used)) static inline int wsm_set_rcpi_rssi_threshold(struct cw1200_common *priv,
     struct wsm_rcpi_rssi_threshold *arg)
{
 return wsm_write_mib(priv, WSM_MIB_ID_RCPI_RSSI_THRESHOLD, arg,
        sizeof(*arg));
}
