
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 char const** ucsi_recipient_strs ;

const char *ucsi_recipient_str(u8 recipient)
{
 return ucsi_recipient_strs[recipient];
}
