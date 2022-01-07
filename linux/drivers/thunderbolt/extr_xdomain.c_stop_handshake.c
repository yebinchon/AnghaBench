
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int properties_changed_work; int get_properties_work; int get_uuid_work; scalar_t__ properties_changed_retries; scalar_t__ properties_retries; scalar_t__ uuid_retries; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void stop_handshake(struct tb_xdomain *xd)
{
 xd->uuid_retries = 0;
 xd->properties_retries = 0;
 xd->properties_changed_retries = 0;

 cancel_delayed_work_sync(&xd->get_uuid_work);
 cancel_delayed_work_sync(&xd->get_properties_work);
 cancel_delayed_work_sync(&xd->properties_changed_work);
}
