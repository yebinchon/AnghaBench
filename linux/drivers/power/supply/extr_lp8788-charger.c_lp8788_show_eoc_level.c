
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8788_charger {int lp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LP8788_CHG_EOC ;
 int LP8788_CHG_EOC_LEVEL_M ;
 int LP8788_CHG_EOC_LEVEL_S ;
 int LP8788_CHG_EOC_MODE_M ;
 int PAGE_SIZE ;
 struct lp8788_charger* dev_get_drvdata (struct device*) ;
 int lp8788_read_byte (int ,int ,int*) ;
 int scnprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t lp8788_show_eoc_level(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lp8788_charger *pchg = dev_get_drvdata(dev);
 static const char * const abs_level[] = {
   "25mA", "49mA", "75mA", "98mA"
 };
 static const char * const relative_level[] = {
   "5%", "10%", "15%", "20%"
 };
 const char *level;
 u8 val;
 u8 mode;

 lp8788_read_byte(pchg->lp, LP8788_CHG_EOC, &val);

 mode = val & LP8788_CHG_EOC_MODE_M;
 val = (val & LP8788_CHG_EOC_LEVEL_M) >> LP8788_CHG_EOC_LEVEL_S;
 level = mode ? abs_level[val] : relative_level[val];

 return scnprintf(buf, PAGE_SIZE, "End Of Charge Level: %s\n", level);
}
