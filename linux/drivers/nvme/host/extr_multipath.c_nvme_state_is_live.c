
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nvme_ana_state { ____Placeholder_nvme_ana_state } nvme_ana_state ;


 int NVME_ANA_NONOPTIMIZED ;
 int NVME_ANA_OPTIMIZED ;

__attribute__((used)) static inline bool nvme_state_is_live(enum nvme_ana_state state)
{
 return state == NVME_ANA_OPTIMIZED || state == NVME_ANA_NONOPTIMIZED;
}
