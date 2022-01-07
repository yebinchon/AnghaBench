
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_session {struct ft_sess* fabric_sess_ptr; } ;
struct ft_sess {int port_name; } ;


 int ft_format_wwn (unsigned char*,int ,int ) ;

u32 ft_sess_get_port_name(struct se_session *se_sess,
     unsigned char *buf, u32 len)
{
 struct ft_sess *sess = se_sess->fabric_sess_ptr;

 return ft_format_wwn(buf, len, sess->port_name);
}
