
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_lights_get_lights_response {scalar_t__ lights_count; } ;
struct gb_lights {scalar_t__ lights_count; int connection; } ;
typedef int resp ;


 int EINVAL ;
 int GB_LIGHTS_TYPE_GET_LIGHTS ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_lights_get_lights_response*,int) ;

__attribute__((used)) static int gb_lights_get_count(struct gb_lights *glights)
{
 struct gb_lights_get_lights_response resp;
 int ret;

 ret = gb_operation_sync(glights->connection, GB_LIGHTS_TYPE_GET_LIGHTS,
    ((void*)0), 0, &resp, sizeof(resp));
 if (ret < 0)
  return ret;

 if (!resp.lights_count)
  return -EINVAL;

 glights->lights_count = resp.lights_count;

 return 0;
}
