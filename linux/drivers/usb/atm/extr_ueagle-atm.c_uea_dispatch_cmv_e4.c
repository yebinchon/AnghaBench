
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmv_dsc_e4 {scalar_t__ function; scalar_t__ offset; scalar_t__ group; scalar_t__ address; } ;
struct TYPE_5__ {struct cmv_dsc_e4 e4; } ;
struct uea_softc {void* data1; void* data; TYPE_1__ cmv_dsc; } ;
struct cmv_e4 {int wFunction; int * dwData; int wAddress; int wGroup; int wOffset; } ;
struct TYPE_6__ {struct cmv_e4 cmv; } ;
struct TYPE_7__ {TYPE_2__ s2; } ;
struct TYPE_8__ {TYPE_3__ e4; } ;
struct intr_pkt {TYPE_4__ u; } ;


 int E4_ADSLDIRECTIVE ;
 int E4_FUNCTION_SUBTYPE (int ) ;
 int E4_FUNCTION_TYPE (int ) ;
 scalar_t__ E4_MAKEFUNCTION (int ,int ,int) ;
 int E4_MODEMREADY ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 scalar_t__ be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int uea_dbg (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,void*) ;
 int uea_enters (int ) ;
 int uea_err (int ,char*,int ,int ) ;
 int uea_leaves (int ) ;
 int wake_up_cmv_ack (struct uea_softc*) ;

__attribute__((used)) static void uea_dispatch_cmv_e4(struct uea_softc *sc, struct intr_pkt *intr)
{
 struct cmv_dsc_e4 *dsc = &sc->cmv_dsc.e4;
 struct cmv_e4 *cmv = &intr->u.e4.s2.cmv;

 uea_enters(INS_TO_USBDEV(sc));
 uea_dbg(INS_TO_USBDEV(sc), "cmv %x %x %x %x %x %x\n",
  be16_to_cpu(cmv->wGroup), be16_to_cpu(cmv->wFunction),
  be16_to_cpu(cmv->wOffset), be16_to_cpu(cmv->wAddress),
  be32_to_cpu(cmv->dwData[0]), be32_to_cpu(cmv->dwData[1]));

 if (be16_to_cpu(cmv->wFunction) != dsc->function)
  goto bad2;

 if (be16_to_cpu(cmv->wFunction) == E4_MAKEFUNCTION(E4_ADSLDIRECTIVE,
      E4_MODEMREADY, 1)) {
  wake_up_cmv_ack(sc);
  uea_leaves(INS_TO_USBDEV(sc));
  return;
 }


 if (be16_to_cpu(cmv->wOffset) != dsc->offset ||
     be16_to_cpu(cmv->wGroup) != dsc->group ||
     be16_to_cpu(cmv->wAddress) != dsc->address)
  goto bad2;

 sc->data = be32_to_cpu(cmv->dwData[0]);
 sc->data1 = be32_to_cpu(cmv->dwData[1]);
 wake_up_cmv_ack(sc);
 uea_leaves(INS_TO_USBDEV(sc));
 return;

bad2:
 uea_err(INS_TO_USBDEV(sc), "unexpected cmv received, "
   "Function : %d, Subfunction : %d\n",
   E4_FUNCTION_TYPE(cmv->wFunction),
   E4_FUNCTION_SUBTYPE(cmv->wFunction));
 uea_leaves(INS_TO_USBDEV(sc));
 return;
}
