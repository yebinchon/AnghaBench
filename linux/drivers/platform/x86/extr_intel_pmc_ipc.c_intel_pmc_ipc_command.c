
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int intel_pmc_ipc_raw_cmd (int ,int ,int *,int ,int *,int ,int ,int ) ;

int intel_pmc_ipc_command(u32 cmd, u32 sub, u8 *in, u32 inlen,
     u32 *out, u32 outlen)
{
 return intel_pmc_ipc_raw_cmd(cmd, sub, in, inlen, out, outlen, 0, 0);
}
