
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* synth_fmt; int value; } ;
struct TYPE_5__ {TYPE_1__ n; } ;
struct var_t {scalar_t__ var_id; TYPE_2__ u; } ;
typedef int buf ;
struct TYPE_6__ {struct var_t* vars; } ;


 scalar_t__ CAPS_START ;
 scalar_t__ CAPS_STOP ;
 scalar_t__ DIRECT ;
 scalar_t__ MAXVARS ;
 scalar_t__ PAUSE ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,...) ;
 TYPE_3__ synth_soft ;

__attribute__((used)) static char *get_initstring(void)
{
 static char buf[40];
 char *cp;
 struct var_t *var;

 memset(buf, 0, sizeof(buf));
 cp = buf;
 var = synth_soft.vars;
 while (var->var_id != MAXVARS) {
  if (var->var_id != CAPS_START && var->var_id != CAPS_STOP &&
      var->var_id != PAUSE && var->var_id != DIRECT)
   cp = cp + sprintf(cp, var->u.n.synth_fmt,
       var->u.n.value);
  var++;
 }
 cp = cp + sprintf(cp, "\n");
 return buf;
}
