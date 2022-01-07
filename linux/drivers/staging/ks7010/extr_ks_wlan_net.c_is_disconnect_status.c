
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CONNECT_STATUS_MASK ;
 int DISCONNECT_STATUS ;

bool is_disconnect_status(u32 status)
{
 return (status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS;
}
