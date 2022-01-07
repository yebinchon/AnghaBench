
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ts4800_wdt {int feed_offset; int regmap; } ;


 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void ts4800_write_feed(struct ts4800_wdt *wdt, u32 val)
{
 regmap_write(wdt->regmap, wdt->feed_offset, val);
}
