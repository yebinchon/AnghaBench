
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct capi_ctr* private; } ;
struct cardstate {int channels; int mode; int mstate; TYPE_1__* bcs; scalar_t__ cidmode; scalar_t__ isdn_up; scalar_t__ connected; scalar_t__ running; scalar_t__ onechannel; int * fwver; scalar_t__ gotfwver; int myid; int dev; } ;
struct capi_ctr {int name; struct cardstate* driverdata; } ;
struct TYPE_2__ {char* corrupted; char* trans_down; char* trans_up; char* chstate; int proto2; } ;
 int dev_driver_string (int ) ;
 int dev_name (int ) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int gigaset_proc_show(struct seq_file *m, void *v)
{
 struct capi_ctr *ctr = m->private;
 struct cardstate *cs = ctr->driverdata;
 char *s;
 int i;

 seq_printf(m, "%-16s %s\n", "name", ctr->name);
 seq_printf(m, "%-16s %s %s\n", "dev",
     dev_driver_string(cs->dev), dev_name(cs->dev));
 seq_printf(m, "%-16s %d\n", "id", cs->myid);
 if (cs->gotfwver)
  seq_printf(m, "%-16s %d.%d.%d.%d\n", "firmware",
      cs->fwver[0], cs->fwver[1], cs->fwver[2], cs->fwver[3]);
 seq_printf(m, "%-16s %d\n", "channels", cs->channels);
 seq_printf(m, "%-16s %s\n", "onechannel", cs->onechannel ? "yes" : "no");

 switch (cs->mode) {
 case 128:
  s = "unknown";
  break;
 case 130:
  s = "config";
  break;
 case 129:
  s = "Unimodem";
  break;
 case 131:
  s = "CID";
  break;
 default:
  s = "??";
 }
 seq_printf(m, "%-16s %s\n", "mode", s);

 switch (cs->mstate) {
 case 132:
  s = "uninitialized";
  break;
 case 137:
  s = "init";
  break;
 case 136:
  s = "locked";
  break;
 case 133:
  s = "shutdown";
  break;
 case 134:
  s = "recover";
  break;
 case 135:
  s = "ready";
  break;
 default:
  s = "??";
 }
 seq_printf(m, "%-16s %s\n", "mstate", s);

 seq_printf(m, "%-16s %s\n", "running", cs->running ? "yes" : "no");
 seq_printf(m, "%-16s %s\n", "connected", cs->connected ? "yes" : "no");
 seq_printf(m, "%-16s %s\n", "isdn_up", cs->isdn_up ? "yes" : "no");
 seq_printf(m, "%-16s %s\n", "cidmode", cs->cidmode ? "yes" : "no");

 for (i = 0; i < cs->channels; i++) {
  seq_printf(m, "[%d]%-13s %d\n", i, "corrupted",
      cs->bcs[i].corrupted);
  seq_printf(m, "[%d]%-13s %d\n", i, "trans_down",
      cs->bcs[i].trans_down);
  seq_printf(m, "[%d]%-13s %d\n", i, "trans_up",
      cs->bcs[i].trans_up);
  seq_printf(m, "[%d]%-13s %d\n", i, "chstate",
      cs->bcs[i].chstate);
  switch (cs->bcs[i].proto2) {
  case 140:
   s = "bitsync";
   break;
  case 139:
   s = "HDLC";
   break;
  case 138:
   s = "voice";
   break;
  default:
   s = "??";
  }
  seq_printf(m, "[%d]%-13s %s\n", i, "proto2", s);
 }
 return 0;
}
