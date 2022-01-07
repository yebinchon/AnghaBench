
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_loopback {int dummy; } ;


 int GB_LOOPBACK_TYPE_PING ;
 int gb_loopback_operation_sync (struct gb_loopback*,int ,int *,int ,int *,int ) ;

__attribute__((used)) static int gb_loopback_sync_ping(struct gb_loopback *gb)
{
 return gb_loopback_operation_sync(gb, GB_LOOPBACK_TYPE_PING,
       ((void*)0), 0, ((void*)0), 0);
}
