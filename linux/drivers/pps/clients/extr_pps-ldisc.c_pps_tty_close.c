
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct pps_device {int dev; } ;


 scalar_t__ WARN_ON (int) ;
 int alias_n_tty_close (struct tty_struct*) ;
 int dev_info (int ,char*) ;
 struct pps_device* pps_lookup_dev (struct tty_struct*) ;
 int pps_unregister_source (struct pps_device*) ;

__attribute__((used)) static void pps_tty_close(struct tty_struct *tty)
{
 struct pps_device *pps = pps_lookup_dev(tty);

 alias_n_tty_close(tty);

 if (WARN_ON(!pps))
  return;

 dev_info(pps->dev, "removed\n");
 pps_unregister_source(pps);
}
