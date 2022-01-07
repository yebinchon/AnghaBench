
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dummy; } ;


 int iscsi_unblock_session (struct iscsi_cls_session*) ;

void qedi_mark_device_available(struct iscsi_cls_session *cls_session)
{
 iscsi_unblock_session(cls_session);
}
