
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int dummy; } ;
struct ba_record {int bValid; int Timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void DeActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA)
{
 pBA->bValid = 0;
 del_timer_sync(&pBA->Timer);
}
