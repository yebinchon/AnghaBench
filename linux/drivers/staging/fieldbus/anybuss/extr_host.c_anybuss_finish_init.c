
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int dummy; } ;
struct anybuss_client {struct anybuss_host* host; } ;


 int CMD_END_INIT ;
 int _anybus_mbox_cmd (struct anybuss_host*,int ,int,int *,int ,int *,int ,int *,int ) ;

int anybuss_finish_init(struct anybuss_client *client)
{
 struct anybuss_host *cd = client->host;

 return _anybus_mbox_cmd(cd, CMD_END_INIT, 0, ((void*)0), 0,
     ((void*)0), 0, ((void*)0), 0);
}
