
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tegra_tcu {int dummy; } ;


 unsigned int TCU_MBOX_BYTE (int ,char const) ;
 int tegra_tcu_write_one (struct tegra_tcu*,unsigned int,unsigned int) ;

__attribute__((used)) static void tegra_tcu_write(struct tegra_tcu *tcu, const char *s,
       unsigned int count)
{
 unsigned int written = 0, i = 0;
 bool insert_nl = 0;
 u32 value = 0;

 while (i < count) {
  if (insert_nl) {
   value |= TCU_MBOX_BYTE(written++, '\n');
   insert_nl = 0;
   i++;
  } else if (s[i] == '\n') {
   value |= TCU_MBOX_BYTE(written++, '\r');
   insert_nl = 1;
  } else {
   value |= TCU_MBOX_BYTE(written++, s[i++]);
  }

  if (written == 3) {
   tegra_tcu_write_one(tcu, value, 3);
   value = written = 0;
  }
 }

 if (written)
  tegra_tcu_write_one(tcu, value, written);
}
