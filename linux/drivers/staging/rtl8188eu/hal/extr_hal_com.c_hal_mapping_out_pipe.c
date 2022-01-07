
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct registry_priv {scalar_t__ wifi_spec; } ;
struct adapter {struct registry_priv registrypriv; } ;


 int one_out_pipe (struct adapter*) ;
 int three_out_pipe (struct adapter*,int) ;
 int two_out_pipe (struct adapter*,int) ;

bool hal_mapping_out_pipe(struct adapter *adapter, u8 numoutpipe)
{
 struct registry_priv *pregistrypriv = &adapter->registrypriv;
 bool wifi_cfg = (pregistrypriv->wifi_spec) ? 1 : 0;
 bool result = 1;

 switch (numoutpipe) {
 case 1:
  one_out_pipe(adapter);
  break;
 case 2:
  two_out_pipe(adapter, wifi_cfg);
  break;
 case 3:
  three_out_pipe(adapter, wifi_cfg);
  break;
 default:
  result = 0;
 }
 return result;
}
