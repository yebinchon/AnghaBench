
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 int CMD_WRITE_EXT_SCI_MASK ;
 int olpc_ec_cmd (int ,unsigned int*,int,int *,int ) ;

__attribute__((used)) static int olpc_xo175_ec_set_event_mask(unsigned int mask)
{
 u8 args[2];

 args[0] = mask >> 0;
 args[1] = mask >> 8;
 return olpc_ec_cmd(CMD_WRITE_EXT_SCI_MASK, args, 2, ((void*)0), 0);
}
