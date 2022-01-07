
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sid; scalar_t__ stype; int type; } ;
struct vio_vcc {TYPE_1__ tag; } ;
struct TYPE_4__ {int lp; } ;
struct vcc_port {TYPE_2__ vio; } ;


 int VIO_TYPE_CTRL ;
 int WARN_ON (int) ;
 int ldc_write (int ,struct vio_vcc*,int) ;
 int vccdbg (char*,int,int) ;

__attribute__((used)) static int vcc_send_ctl(struct vcc_port *port, int ctl)
{
 struct vio_vcc pkt;
 int rv;

 pkt.tag.type = VIO_TYPE_CTRL;
 pkt.tag.sid = ctl;
 pkt.tag.stype = 0;

 rv = ldc_write(port->vio.lp, &pkt, sizeof(pkt.tag));
 WARN_ON(!rv);
 vccdbg("VCC: ldc_write(%ld)=%d\n", sizeof(pkt.tag), rv);

 return rv;
}
