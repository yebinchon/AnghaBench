
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvobj_priv {int * RtOutPipe; int * Queue2Pipe; } ;
struct adapter {int dummy; } ;


 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;

__attribute__((used)) static void two_out_pipe(struct adapter *adapter, bool wifi_cfg)
{
 struct dvobj_priv *pdvobjpriv = adapter_to_dvobj(adapter);

 if (wifi_cfg) {






  pdvobjpriv->Queue2Pipe[0] = pdvobjpriv->RtOutPipe[1];
  pdvobjpriv->Queue2Pipe[1] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[2] = pdvobjpriv->RtOutPipe[1];
  pdvobjpriv->Queue2Pipe[3] = pdvobjpriv->RtOutPipe[0];

  pdvobjpriv->Queue2Pipe[4] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[5] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[6] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[7] = pdvobjpriv->RtOutPipe[0];
 } else {






  pdvobjpriv->Queue2Pipe[0] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[1] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[2] = pdvobjpriv->RtOutPipe[1];
  pdvobjpriv->Queue2Pipe[3] = pdvobjpriv->RtOutPipe[1];

  pdvobjpriv->Queue2Pipe[4] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[5] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[6] = pdvobjpriv->RtOutPipe[0];
  pdvobjpriv->Queue2Pipe[7] = pdvobjpriv->RtOutPipe[0];
 }
}
