
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cw1200_common {int dummy; } ;


 int ST90TDS_AHB_DPORT_REG_ID ;
 int ST90TDS_CONFIG_AHB_PRFETCH_BIT ;
 int cw1200_indirect_read (struct cw1200_common*,int ,void*,size_t,int ,int ) ;

__attribute__((used)) static inline int cw1200_ahb_read(struct cw1200_common *priv, u32 addr,
      void *buf, size_t buf_len)
{
 return cw1200_indirect_read(priv, addr, buf, buf_len,
        ST90TDS_CONFIG_AHB_PRFETCH_BIT,
        ST90TDS_AHB_DPORT_REG_ID);
}
