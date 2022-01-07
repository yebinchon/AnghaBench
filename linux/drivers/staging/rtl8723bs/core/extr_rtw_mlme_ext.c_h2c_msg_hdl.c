
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int H2C_PARAMETERS_ERROR ;
 int H2C_SUCCESS ;

u8 h2c_msg_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 if (!pbuf)
  return H2C_PARAMETERS_ERROR;

 return H2C_SUCCESS;
}
