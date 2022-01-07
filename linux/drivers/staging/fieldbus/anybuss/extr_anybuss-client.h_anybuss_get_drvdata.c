
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_client {int dev; } ;


 void* dev_get_drvdata (int *) ;

__attribute__((used)) static inline void *
anybuss_get_drvdata(const struct anybuss_client *client)
{
 return dev_get_drvdata(&client->dev);
}
