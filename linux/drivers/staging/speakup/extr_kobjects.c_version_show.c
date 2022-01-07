
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; char* version; } ;


 char* SPEAKUP_VERSION ;
 int sprintf (char*,char*,char*,...) ;
 TYPE_1__* synth ;

__attribute__((used)) static ssize_t version_show(struct kobject *kobj, struct kobj_attribute *attr,
       char *buf)
{
 char *cp;

 cp = buf;
 cp += sprintf(cp, "Speakup version %s\n", SPEAKUP_VERSION);
 if (synth)
  cp += sprintf(cp, "%s synthesizer driver version %s\n",
  synth->name, synth->version);
 return cp - buf;
}
