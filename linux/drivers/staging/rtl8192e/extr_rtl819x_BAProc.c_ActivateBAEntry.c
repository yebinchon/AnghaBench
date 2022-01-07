
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rtllib_device {int dummy; } ;
struct ba_record {int bValid; int Timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void ActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA,
       u16 Time)
{
 pBA->bValid = 1;
 if (Time != 0)
  mod_timer(&pBA->Timer, jiffies + msecs_to_jiffies(Time));
}
