
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_device_id {int dummy; } ;
struct TYPE_2__ {int of_node; } ;
struct vio_dev {scalar_t__ unit_address; TYPE_1__ dev; int irq; } ;
struct hvterm_priv {scalar_t__ termno; int hvsi; int buf_lock; scalar_t__ proto; } ;
struct hvc_struct {scalar_t__ index; } ;
struct hv_ops {int dummy; } ;
typedef scalar_t__ hv_protocol_t ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ HV_PROTOCOL_HVSI ;
 scalar_t__ HV_PROTOCOL_RAW ;
 scalar_t__ IS_ERR (struct hvc_struct*) ;
 int MAX_NR_HVC_CONSOLES ;
 int MAX_VIO_PUT_CHARS ;
 int PTR_ERR (struct hvc_struct*) ;
 int dev_set_drvdata (TYPE_1__*,struct hvc_struct*) ;
 struct hvc_struct* hvc_alloc (int,int ,struct hv_ops const*,int ) ;
 int hvc_get_chars ;
 int hvc_put_chars ;
 int hvsilib_init (int *,int ,int ,scalar_t__,int ) ;
 struct hv_ops hvterm_hvsi_ops ;
 struct hvterm_priv hvterm_priv0 ;
 struct hvterm_priv** hvterm_privs ;
 struct hv_ops hvterm_raw_ops ;
 struct hvterm_priv* kzalloc (int,int ) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int pr_devel (char*,...) ;
 int pr_err (char*,int ) ;
 int spin_lock_init (int *) ;
 int udbg_getc ;
 int udbg_getc_poll ;
 int udbg_hvc_getc ;
 int udbg_hvc_getc_poll ;
 scalar_t__ udbg_hvc_putc ;
 scalar_t__ udbg_putc ;

__attribute__((used)) static int hvc_vio_probe(struct vio_dev *vdev,
       const struct vio_device_id *id)
{
 const struct hv_ops *ops;
 struct hvc_struct *hp;
 struct hvterm_priv *pv;
 hv_protocol_t proto;
 int i, termno = -1;


 if (!vdev || !id)
  return -EPERM;

 if (of_device_is_compatible(vdev->dev.of_node, "hvterm1")) {
  proto = HV_PROTOCOL_RAW;
  ops = &hvterm_raw_ops;
 } else if (of_device_is_compatible(vdev->dev.of_node, "hvterm-protocol")) {
  proto = HV_PROTOCOL_HVSI;
  ops = &hvterm_hvsi_ops;
 } else {
  pr_err("hvc_vio: Unknown protocol for %pOF\n", vdev->dev.of_node);
  return -ENXIO;
 }

 pr_devel("hvc_vio_probe() device %pOF, using %s protocol\n",
   vdev->dev.of_node,
   proto == HV_PROTOCOL_RAW ? "raw" : "hvsi");


 if (hvterm_privs[0] == &hvterm_priv0 &&
     vdev->unit_address == hvterm_priv0.termno) {
  pv = hvterm_privs[0];
  termno = 0;
  pr_devel("->boot console, using termno 0\n");
 }

 else {
  for (i = 0; i < MAX_NR_HVC_CONSOLES && termno < 0; i++)
   if (!hvterm_privs[i])
    termno = i;
  pr_devel("->non-boot console, using termno %d\n", termno);
  if (termno < 0)
   return -ENODEV;
  pv = kzalloc(sizeof(struct hvterm_priv), GFP_KERNEL);
  if (!pv)
   return -ENOMEM;
  pv->termno = vdev->unit_address;
  pv->proto = proto;
  spin_lock_init(&pv->buf_lock);
  hvterm_privs[termno] = pv;
  hvsilib_init(&pv->hvsi, hvc_get_chars, hvc_put_chars,
        pv->termno, 0);
 }

 hp = hvc_alloc(termno, vdev->irq, ops, MAX_VIO_PUT_CHARS);
 if (IS_ERR(hp))
  return PTR_ERR(hp);
 dev_set_drvdata(&vdev->dev, hp);


 if (hp->index == 0 && !udbg_putc) {
  udbg_putc = udbg_hvc_putc;
  udbg_getc = udbg_hvc_getc;
  udbg_getc_poll = udbg_hvc_getc_poll;
 }

 return 0;
}
