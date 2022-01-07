
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dot11FCSErrorCount; } ;
struct link_qual {int rssi; int rx_success; scalar_t__ rx_failed; } ;
struct TYPE_8__ {struct link_qual qual; } ;
struct rt2x00_dev {TYPE_3__* ops; TYPE_1__ low_level_stats; TYPE_4__ link; } ;
struct link {int count; int avg_rssi; } ;
struct TYPE_7__ {TYPE_2__* lib; } ;
struct TYPE_6__ {int (* link_tuner ) (struct rt2x00_dev*,struct link_qual*,int ) ;int (* link_stats ) (struct rt2x00_dev*,struct link_qual*) ;} ;


 int DEFAULT_RSSI ;
 scalar_t__ rt2x00_has_cap_link_tuning (struct rt2x00_dev*) ;
 int rt2x00leds_led_quality (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00lib_antenna_diversity (struct rt2x00_dev*) ;
 int rt2x00link_get_avg_rssi (int *) ;
 int rt2x00link_reset_qual (struct rt2x00_dev*) ;
 int stub1 (struct rt2x00_dev*,struct link_qual*) ;
 int stub2 (struct rt2x00_dev*,struct link_qual*,int ) ;

__attribute__((used)) static void rt2x00link_tuner_sta(struct rt2x00_dev *rt2x00dev, struct link *link)
{
 struct link_qual *qual = &rt2x00dev->link.qual;




 rt2x00dev->ops->lib->link_stats(rt2x00dev, qual);
 rt2x00dev->low_level_stats.dot11FCSErrorCount += qual->rx_failed;







 if (!qual->rx_success)
  qual->rssi = DEFAULT_RSSI;
 else
  qual->rssi = rt2x00link_get_avg_rssi(&link->avg_rssi);






 if (rt2x00_has_cap_link_tuning(rt2x00dev))
  rt2x00dev->ops->lib->link_tuner(rt2x00dev, qual, link->count);




 rt2x00leds_led_quality(rt2x00dev, qual->rssi);






 if (rt2x00lib_antenna_diversity(rt2x00dev))
  rt2x00link_reset_qual(rt2x00dev);
}
