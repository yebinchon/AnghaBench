
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NVMET_FC_QUEUEID_MASK ;

__attribute__((used)) static inline u64
nvmet_fc_getassociationid(u64 connectionid)
{
 return connectionid & ~NVMET_FC_QUEUEID_MASK;
}
