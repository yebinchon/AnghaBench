
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OPTEE_SMC_RETURN_RPC_PREFIX ;
 int OPTEE_SMC_RETURN_RPC_PREFIX_MASK ;
 int OPTEE_SMC_RETURN_UNKNOWN_FUNCTION ;

__attribute__((used)) static inline bool __optee_smc_return_is_rpc(u32 ret)
{
 return ret != OPTEE_SMC_RETURN_UNKNOWN_FUNCTION &&
        (ret & OPTEE_SMC_RETURN_RPC_PREFIX_MASK) ==
   OPTEE_SMC_RETURN_RPC_PREFIX;
}
