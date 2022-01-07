
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
typedef TYPE_1__ imm_struct ;


 int imm_cpp (int ,int) ;

__attribute__((used)) static void imm_disconnect(imm_struct *dev)
{
 imm_cpp(dev->base, 0x30);
}
