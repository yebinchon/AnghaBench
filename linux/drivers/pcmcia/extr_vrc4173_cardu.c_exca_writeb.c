
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ vrc4173_socket_t ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ EXCA_REGS_BASE ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void exca_writeb(vrc4173_socket_t *socket, uint16_t offset, uint8_t val)
{
 writeb(val, socket->base + EXCA_REGS_BASE + offset);
}
