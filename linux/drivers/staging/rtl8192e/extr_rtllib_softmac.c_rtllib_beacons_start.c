
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int beacon_txing; int beacon_lock; } ;


 int rtllib_send_beacon (struct rtllib_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtllib_beacons_start(struct rtllib_device *ieee)
{
 unsigned long flags;

 spin_lock_irqsave(&ieee->beacon_lock, flags);

 ieee->beacon_txing = 1;
 rtllib_send_beacon(ieee);

 spin_unlock_irqrestore(&ieee->beacon_lock, flags);
}
