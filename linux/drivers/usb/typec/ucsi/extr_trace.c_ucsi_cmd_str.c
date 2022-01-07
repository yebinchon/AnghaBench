
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 scalar_t__ GENMASK (int,int ) ;
 char const** ucsi_cmd_strs ;

const char *ucsi_cmd_str(u64 raw_cmd)
{
 u8 cmd = raw_cmd & GENMASK(7, 0);

 return ucsi_cmd_strs[(cmd >= ARRAY_SIZE(ucsi_cmd_strs)) ? 0 : cmd];
}
