
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_client {int dev; } ;


 int st_rproc_mbox_callback (int ,int) ;

__attribute__((used)) static
void st_rproc_mbox_callback_vq1(struct mbox_client *mbox_client, void *data)
{
 st_rproc_mbox_callback(mbox_client->dev, 1);
}
