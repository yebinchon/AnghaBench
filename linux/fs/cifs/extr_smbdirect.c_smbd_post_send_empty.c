
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_connection {int count_send_empty; } ;


 int smbd_post_send_sgl (struct smbd_connection*,int *,int ,int ) ;

__attribute__((used)) static int smbd_post_send_empty(struct smbd_connection *info)
{
 info->count_send_empty++;
 return smbd_post_send_sgl(info, ((void*)0), 0, 0);
}
