
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct anybuss_host {int dummy; } ;
struct anybuss_client {struct anybuss_host* host; } ;


 int _anybus_mbox_cmd (struct anybuss_host*,int ,int,int *,int ,int *,int ,void const*,size_t) ;

int anybuss_send_ext(struct anybuss_client *client, u16 cmd_num,
       const void *buf, size_t count)
{
 struct anybuss_host *cd = client->host;

 return _anybus_mbox_cmd(cd, cmd_num, 1, ((void*)0), 0, ((void*)0), 0,
     buf, count);
}
