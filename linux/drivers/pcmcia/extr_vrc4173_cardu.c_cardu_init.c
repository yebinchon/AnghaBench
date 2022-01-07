
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int features; int map_size; int pci_irq; scalar_t__ irq_mask; } ;
struct TYPE_7__ {int event_lock; scalar_t__ events; TYPE_5__* dev; TYPE_1__ cap; } ;
typedef TYPE_2__ vrc4173_socket_t ;
struct TYPE_8__ {int irq; } ;


 int BAT_DEAD_EN ;
 int BAT_WAR_EN ;
 int CARD_DT_EN ;
 int CARD_SCI ;
 int GLO_CNT ;
 int RDY_EN ;
 int SS_CAP_PAGE_REGS ;
 int SS_CAP_PCCARD ;
 int cardu_pciregs_init (TYPE_5__*) ;
 TYPE_2__* cardu_sockets ;
 int exca_writeb (TYPE_2__*,int ,int) ;
 int spin_lock_init (int ) ;

__attribute__((used)) static int cardu_init(unsigned int slot)
{
 vrc4173_socket_t *socket = &cardu_sockets[slot];

 cardu_pciregs_init(socket->dev);


 exca_writeb(socket, GLO_CNT, 0);

 socket->cap.features |= SS_CAP_PCCARD | SS_CAP_PAGE_REGS;
 socket->cap.irq_mask = 0;
 socket->cap.map_size = 0x1000;
 socket->cap.pci_irq = socket->dev->irq;
 socket->events = 0;
 spin_lock_init(socket->event_lock);


 exca_writeb(socket, CARD_SCI, CARD_DT_EN|RDY_EN|BAT_WAR_EN|BAT_DEAD_EN);

 return 0;
}
