
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_ether_type_filter_hdr {int num; } ;
struct wsm_ether_type_filter {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int WSM_MIB_ID_SET_ETHERTYPE_DATAFRAME_FILTER ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_ether_type_filter_hdr*,size_t) ;

__attribute__((used)) static inline int wsm_set_ether_type_filter(struct cw1200_common *priv,
    struct wsm_ether_type_filter_hdr *arg)
{
 size_t size = sizeof(struct wsm_ether_type_filter_hdr) +
  arg->num * sizeof(struct wsm_ether_type_filter);
 return wsm_write_mib(priv, WSM_MIB_ID_SET_ETHERTYPE_DATAFRAME_FILTER,
  arg, size);
}
