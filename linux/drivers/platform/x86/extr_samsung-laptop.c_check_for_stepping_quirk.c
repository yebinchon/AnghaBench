
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_laptop {int has_stepping_quirk; } ;


 int pr_info (char*) ;
 int read_brightness (struct samsung_laptop*) ;
 int set_brightness (struct samsung_laptop*,int) ;

__attribute__((used)) static void check_for_stepping_quirk(struct samsung_laptop *samsung)
{
 int initial_level;
 int check_level;
 int orig_level = read_brightness(samsung);
 if (orig_level == 0)
  set_brightness(samsung, 1);

 initial_level = read_brightness(samsung);

 if (initial_level <= 2)
  check_level = initial_level + 2;
 else
  check_level = initial_level - 2;

 samsung->has_stepping_quirk = 0;
 set_brightness(samsung, check_level);

 if (read_brightness(samsung) != check_level) {
  samsung->has_stepping_quirk = 1;
  pr_info("enabled workaround for brightness stepping quirk\n");
 }

 set_brightness(samsung, orig_level);
}
