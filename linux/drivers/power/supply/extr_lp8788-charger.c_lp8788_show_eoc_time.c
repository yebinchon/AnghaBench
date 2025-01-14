
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct lp8788_charger {int lp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LP8788_CHG_EOC ;
 size_t LP8788_CHG_EOC_TIME_M ;
 size_t LP8788_CHG_EOC_TIME_S ;
 int PAGE_SIZE ;
 struct lp8788_charger* dev_get_drvdata (struct device*) ;
 int lp8788_read_byte (int ,int ,size_t*) ;
 int scnprintf (char*,int ,char*,char const* const) ;

__attribute__((used)) static ssize_t lp8788_show_eoc_time(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lp8788_charger *pchg = dev_get_drvdata(dev);
 static const char * const stime[] = {
  "400ms", "5min", "10min", "15min",
  "20min", "25min", "30min", "No timeout"
 };
 u8 val;

 lp8788_read_byte(pchg->lp, LP8788_CHG_EOC, &val);
 val = (val & LP8788_CHG_EOC_TIME_M) >> LP8788_CHG_EOC_TIME_S;

 return scnprintf(buf, PAGE_SIZE, "End Of Charge Time: %s\n",
   stime[val]);
}
