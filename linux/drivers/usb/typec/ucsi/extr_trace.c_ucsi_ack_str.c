
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 char const** ucsi_ack_strs ;

const char *ucsi_ack_str(u8 ack)
{
 return ucsi_ack_strs[(ack >= ARRAY_SIZE(ucsi_ack_strs)) ? 0 : ack];
}
