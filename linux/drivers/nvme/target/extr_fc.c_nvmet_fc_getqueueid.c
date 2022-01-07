
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int NVMET_FC_QUEUEID_MASK ;

__attribute__((used)) static inline u16
nvmet_fc_getqueueid(u64 connectionid)
{
 return (u16)(connectionid & NVMET_FC_QUEUEID_MASK);
}
