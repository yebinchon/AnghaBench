
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_mib_beacon_filter_table {int num; } ;
struct wsm_beacon_filter_table_entry {int dummy; } ;
struct cw1200_common {int dummy; } ;
typedef int __le32 ;


 int WSM_MIB_ID_BEACON_FILTER_TABLE ;
 int __le32_to_cpu (int ) ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_mib_beacon_filter_table*,size_t) ;

__attribute__((used)) static inline int wsm_set_beacon_filter_table(struct cw1200_common *priv,
           struct wsm_mib_beacon_filter_table *ft)
{
 size_t size = __le32_to_cpu(ft->num) *
       sizeof(struct wsm_beacon_filter_table_entry) +
       sizeof(__le32);

 return wsm_write_mib(priv, WSM_MIB_ID_BEACON_FILTER_TABLE, ft, size);
}
