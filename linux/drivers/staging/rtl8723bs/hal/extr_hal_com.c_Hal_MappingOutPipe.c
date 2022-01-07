
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct registry_priv {scalar_t__ wifi_spec; } ;
struct adapter {struct registry_priv registrypriv; } ;


 int _OneOutPipeMapping (struct adapter*) ;
 int _ThreeOutPipeMapping (struct adapter*,int) ;
 int _TwoOutPipeMapping (struct adapter*,int) ;

bool Hal_MappingOutPipe(struct adapter *padapter, u8 NumOutPipe)
{
 struct registry_priv *pregistrypriv = &padapter->registrypriv;

 bool bWIFICfg = (pregistrypriv->wifi_spec) ? 1 : 0;

 bool result = 1;

 switch (NumOutPipe) {
 case 2:
  _TwoOutPipeMapping(padapter, bWIFICfg);
  break;
 case 3:
 case 4:
  _ThreeOutPipeMapping(padapter, bWIFICfg);
  break;
 case 1:
  _OneOutPipeMapping(padapter);
  break;
 default:
  result = 0;
  break;
 }

 return result;

}
