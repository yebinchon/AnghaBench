
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_credits {int instance; scalar_t__ value; } ;
struct TCP_Server_Info {int reconnect_instance; } ;



int
cifs_wait_mtu_credits(struct TCP_Server_Info *server, unsigned int size,
        unsigned int *num, struct cifs_credits *credits)
{
 *num = size;
 credits->value = 0;
 credits->instance = server->reconnect_instance;
 return 0;
}
