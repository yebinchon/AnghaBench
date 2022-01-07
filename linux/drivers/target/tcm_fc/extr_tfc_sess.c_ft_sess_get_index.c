
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_session {struct ft_sess* fabric_sess_ptr; } ;
struct ft_sess {int port_id; } ;



u32 ft_sess_get_index(struct se_session *se_sess)
{
 struct ft_sess *sess = se_sess->fabric_sess_ptr;

 return sess->port_id;
}
