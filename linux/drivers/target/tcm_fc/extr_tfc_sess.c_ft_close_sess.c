
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_sess {int se_sess; } ;


 int ft_sess_put (struct ft_sess*) ;
 int target_sess_cmd_list_set_waiting (int ) ;
 int target_wait_for_sess_cmds (int ) ;

__attribute__((used)) static void ft_close_sess(struct ft_sess *sess)
{
 target_sess_cmd_list_set_waiting(sess->se_sess);
 target_wait_for_sess_cmds(sess->se_sess);
 ft_sess_put(sess);
}
