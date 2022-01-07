
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int lock; int core; int phy; int pll; int wp; } ;


 TYPE_1__ hdmi ;
 int hdmi5_core_dump (int *,struct seq_file*) ;
 int hdmi_phy_dump (int *,struct seq_file*) ;
 int hdmi_pll_dump (int *,struct seq_file*) ;
 scalar_t__ hdmi_runtime_get () ;
 int hdmi_runtime_put () ;
 int hdmi_wp_dump (int *,struct seq_file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_dump_regs(struct seq_file *s)
{
 mutex_lock(&hdmi.lock);

 if (hdmi_runtime_get()) {
  mutex_unlock(&hdmi.lock);
  return;
 }

 hdmi_wp_dump(&hdmi.wp, s);
 hdmi_pll_dump(&hdmi.pll, s);
 hdmi_phy_dump(&hdmi.phy, s);
 hdmi5_core_dump(&hdmi.core, s);

 hdmi_runtime_put();
 mutex_unlock(&hdmi.lock);
}
