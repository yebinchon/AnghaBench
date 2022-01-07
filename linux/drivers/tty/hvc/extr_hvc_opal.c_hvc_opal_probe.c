
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hvc_struct {int flags; } ;
struct hvc_opal_priv {int hvsi; scalar_t__ proto; } ;
struct hv_ops {int dummy; } ;
typedef scalar_t__ hv_protocol_t ;
typedef int __be32 ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ HV_PROTOCOL_HVSI ;
 scalar_t__ HV_PROTOCOL_RAW ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct hvc_struct*) ;
 int MAX_VIO_PUT_CHARS ;
 int OPAL_EVENT_CONSOLE_INPUT ;
 int PTR_ERR (struct hvc_struct*) ;
 unsigned int be32_to_cpup (int const*) ;
 int dev_set_drvdata (TYPE_1__*,struct hvc_struct*) ;
 struct hvc_struct* hvc_alloc (unsigned int,unsigned int,struct hv_ops const*,int ) ;
 int hvc_instantiate (unsigned int,unsigned int,struct hv_ops const*) ;
 struct hvc_opal_priv hvc_opal_boot_priv ;
 struct hv_ops hvc_opal_hvsi_ops ;
 struct hvc_opal_priv** hvc_opal_privs ;
 struct hv_ops hvc_opal_raw_ops ;
 int hvsilib_init (int *,int ,int ,unsigned int,int ) ;
 int ilog2 (int ) ;
 unsigned int irq_of_parse_and_map (int ,int ) ;
 struct hvc_opal_priv* kzalloc (int,int ) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int * of_get_property (int ,char*,int *) ;
 unsigned int opal_event_request (int ) ;
 int opal_get_chars ;
 int opal_put_chars_atomic ;
 int pr_err (char*,int ,...) ;
 int pr_info (char*,unsigned int,...) ;

__attribute__((used)) static int hvc_opal_probe(struct platform_device *dev)
{
 const struct hv_ops *ops;
 struct hvc_struct *hp;
 struct hvc_opal_priv *pv;
 hv_protocol_t proto;
 unsigned int termno, irq, boot = 0;
 const __be32 *reg;

 if (of_device_is_compatible(dev->dev.of_node, "ibm,opal-console-raw")) {
  proto = HV_PROTOCOL_RAW;
  ops = &hvc_opal_raw_ops;
 } else if (of_device_is_compatible(dev->dev.of_node,
        "ibm,opal-console-hvsi")) {
  proto = HV_PROTOCOL_HVSI;
  ops = &hvc_opal_hvsi_ops;
 } else {
  pr_err("hvc_opal: Unknown protocol for %pOF\n",
         dev->dev.of_node);
  return -ENXIO;
 }

 reg = of_get_property(dev->dev.of_node, "reg", ((void*)0));
 termno = reg ? be32_to_cpup(reg) : 0;


 if (hvc_opal_privs[termno] == &hvc_opal_boot_priv) {
  pv = hvc_opal_privs[termno];
  boot = 1;
 } else if (hvc_opal_privs[termno] == ((void*)0)) {
  pv = kzalloc(sizeof(struct hvc_opal_priv), GFP_KERNEL);
  if (!pv)
   return -ENOMEM;
  pv->proto = proto;
  hvc_opal_privs[termno] = pv;
  if (proto == HV_PROTOCOL_HVSI) {




   hvsilib_init(&pv->hvsi,
         opal_get_chars, opal_put_chars_atomic,
         termno, 0);
  }


  hvc_instantiate(termno, termno, ops);
 } else {
  pr_err("hvc_opal: Device %pOF has duplicate terminal number #%d\n",
         dev->dev.of_node, termno);
  return -ENXIO;
 }

 pr_info("hvc%d: %s protocol on %pOF%s\n", termno,
  proto == HV_PROTOCOL_RAW ? "raw" : "hvsi",
  dev->dev.of_node,
  boot ? " (boot console)" : "");

 irq = irq_of_parse_and_map(dev->dev.of_node, 0);
 if (!irq) {
  pr_info("hvc%d: No interrupts property, using OPAL event\n",
    termno);
  irq = opal_event_request(ilog2(OPAL_EVENT_CONSOLE_INPUT));
 }

 if (!irq) {
  pr_err("hvc_opal: Unable to map interrupt for device %pOF\n",
   dev->dev.of_node);
  return irq;
 }

 hp = hvc_alloc(termno, irq, ops, MAX_VIO_PUT_CHARS);
 if (IS_ERR(hp))
  return PTR_ERR(hp);


 hp->flags = IRQF_SHARED;
 dev_set_drvdata(&dev->dev, hp);

 return 0;
}
