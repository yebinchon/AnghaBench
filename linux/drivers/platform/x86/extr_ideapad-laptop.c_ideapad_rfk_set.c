
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ideapad_rfk_priv {size_t dev; TYPE_2__* priv; } ;
struct TYPE_6__ {int opcode; } ;
struct TYPE_5__ {TYPE_1__* adev; } ;
struct TYPE_4__ {int handle; } ;


 TYPE_3__* ideapad_rfk_data ;
 int write_ec_cmd (int ,int,int) ;

__attribute__((used)) static int ideapad_rfk_set(void *data, bool blocked)
{
 struct ideapad_rfk_priv *priv = data;
 int opcode = ideapad_rfk_data[priv->dev].opcode;

 return write_ec_cmd(priv->priv->adev->handle, opcode, !blocked);
}
