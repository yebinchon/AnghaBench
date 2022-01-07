
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_session {struct iscsi_session* fabric_sess_ptr; } ;
struct iscsi_session {int isid; } ;


 int snprintf (unsigned char*,int ,char*,int ) ;

__attribute__((used)) static u32 lio_sess_get_initiator_sid(
 struct se_session *se_sess,
 unsigned char *buf,
 u32 size)
{
 struct iscsi_session *sess = se_sess->fabric_sess_ptr;



 return snprintf(buf, size, "%6phN", sess->isid);
}
