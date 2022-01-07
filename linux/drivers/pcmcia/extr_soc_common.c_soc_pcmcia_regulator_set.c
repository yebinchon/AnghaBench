
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_regulator {int on; int reg; } ;
struct TYPE_2__ {int dev; } ;
struct soc_pcmcia_socket {struct soc_pcmcia_regulator vcc; TYPE_1__ socket; } ;


 int dev_warn (int *,char*,char*,int,int,int,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;
 int regulator_set_voltage (int ,int,int) ;

int soc_pcmcia_regulator_set(struct soc_pcmcia_socket *skt,
 struct soc_pcmcia_regulator *r, int v)
{
 bool on;
 int ret;

 if (!r->reg)
  return 0;

 on = v != 0;
 if (r->on == on)
  return 0;

 if (on) {
  ret = regulator_set_voltage(r->reg, v * 100000, v * 100000);
  if (ret) {
   int vout = regulator_get_voltage(r->reg) / 100000;

   dev_warn(&skt->socket.dev,
     "CS requested %s=%u.%uV, applying %u.%uV\n",
     r == &skt->vcc ? "Vcc" : "Vpp",
     v / 10, v % 10, vout / 10, vout % 10);
  }

  ret = regulator_enable(r->reg);
 } else {
  ret = regulator_disable(r->reg);
 }
 if (ret == 0)
  r->on = on;

 return ret;
}
