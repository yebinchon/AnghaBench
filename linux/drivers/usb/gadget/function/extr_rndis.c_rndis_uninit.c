
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rndis_params {int state; } ;


 int RNDIS_UNINITIALIZED ;
 int rndis_free_response (struct rndis_params*,int *) ;
 int * rndis_get_next_response (struct rndis_params*,int *) ;

void rndis_uninit(struct rndis_params *params)
{
 u8 *buf;
 u32 length;

 if (!params)
  return;
 params->state = RNDIS_UNINITIALIZED;


 while ((buf = rndis_get_next_response(params, &length)))
  rndis_free_response(params, buf);
}
