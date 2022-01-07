
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int vc_num; } ;
struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;


 int CURSOR_TIME ;
 int cursor_con ;
 int cursor_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int read_all_key ;
 struct var_t* spk_get_var (int ) ;

__attribute__((used)) static void start_read_all_timer(struct vc_data *vc, int command)
{
 struct var_t *cursor_timeout;

 cursor_con = vc->vc_num;
 read_all_key = command;
 cursor_timeout = spk_get_var(CURSOR_TIME);
 mod_timer(&cursor_timer,
    jiffies + msecs_to_jiffies(cursor_timeout->u.n.value));
}
