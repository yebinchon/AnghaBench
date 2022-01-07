
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int DBG_SHOW_FLAG (unsigned long) ;
 int DBG_SHOW_FLAG_MASKED (int ,int ,int ) ;
 unsigned long DEBOUNCE ;
 unsigned long DEBOUNCE_VAL_SHIFT ;
 unsigned long DEGLITCH ;
 unsigned long DIS_SCHMIT ;
 int DRIVE_STRENGTH ;
 int DRIVE_STRENGTH_BIT_MSK (int ) ;
 int DRIVE_STRENGTH_HI ;
 int DRIVE_STRENGTH_LOW ;
 int DRIVE_STRENGTH_MED ;
 int HI ;
 int LOW ;
 int MED ;
 unsigned long MULTI_DRIVE ;
 unsigned long PULL_DOWN ;
 unsigned long PULL_UP ;
 unsigned long SLEWRATE ;
 int at91_pinconf_get (struct pinctrl_dev*,unsigned int,unsigned long*) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static void at91_pinconf_dbg_show(struct pinctrl_dev *pctldev,
       struct seq_file *s, unsigned pin_id)
{
 unsigned long config;
 int val, num_conf = 0;

 at91_pinconf_get(pctldev, pin_id, &config);

 DBG_SHOW_FLAG(MULTI_DRIVE);
 DBG_SHOW_FLAG(PULL_UP);
 DBG_SHOW_FLAG(PULL_DOWN);
 DBG_SHOW_FLAG(DIS_SCHMIT);
 DBG_SHOW_FLAG(DEGLITCH);
 DBG_SHOW_FLAG_MASKED(DRIVE_STRENGTH, DRIVE_STRENGTH_BIT_MSK(LOW),
        DRIVE_STRENGTH_LOW);
 DBG_SHOW_FLAG_MASKED(DRIVE_STRENGTH, DRIVE_STRENGTH_BIT_MSK(MED),
        DRIVE_STRENGTH_MED);
 DBG_SHOW_FLAG_MASKED(DRIVE_STRENGTH, DRIVE_STRENGTH_BIT_MSK(HI),
        DRIVE_STRENGTH_HI);
 DBG_SHOW_FLAG(SLEWRATE);
 DBG_SHOW_FLAG(DEBOUNCE);
 if (config & DEBOUNCE) {
  val = config >> DEBOUNCE_VAL_SHIFT;
  seq_printf(s, "(%d)", val);
 }

 return;
}
