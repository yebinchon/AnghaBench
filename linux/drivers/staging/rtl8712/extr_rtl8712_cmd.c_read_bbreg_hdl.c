
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmd_obj {int dummy; } ;
struct _adapter {int dummy; } ;


 int H2C_SUCCESS ;
 int r8712_free_cmd_obj (struct cmd_obj*) ;

__attribute__((used)) static u8 read_bbreg_hdl(struct _adapter *padapter, u8 *pbuf)
{
 struct cmd_obj *pcmd = (struct cmd_obj *)pbuf;

 r8712_free_cmd_obj(pcmd);
 return H2C_SUCCESS;
}
