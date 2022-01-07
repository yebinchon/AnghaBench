
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_server {int cb_s_break; } ;



void afs_init_callback_state(struct afs_server *server)
{
 server->cb_s_break++;
}
