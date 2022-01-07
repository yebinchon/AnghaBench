
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_client {int dev; } ;


 int dev_set_drvdata (int *,void*) ;

__attribute__((used)) static inline void
anybuss_set_drvdata(struct anybuss_client *client, void *data)
{
 dev_set_drvdata(&client->dev, data);
}
