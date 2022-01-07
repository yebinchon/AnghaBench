
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_connection {scalar_t__ keep_alive_requested; } ;


 scalar_t__ KEEP_ALIVE_PENDING ;
 scalar_t__ KEEP_ALIVE_SENT ;

__attribute__((used)) static int manage_keep_alive_before_sending(struct smbd_connection *info)
{
 if (info->keep_alive_requested == KEEP_ALIVE_PENDING) {
  info->keep_alive_requested = KEEP_ALIVE_SENT;
  return 1;
 }
 return 0;
}
