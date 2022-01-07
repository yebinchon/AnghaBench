
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tb_cfg_request_put (void*) ;

__attribute__((used)) static void response_ready(void *data)
{
 tb_cfg_request_put(data);
}
