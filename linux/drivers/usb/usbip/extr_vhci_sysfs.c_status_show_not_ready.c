
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int VDEV_ST_NOTASSIGNED ;
 int VHCI_HC_PORTS ;
 int VHCI_PORTS ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t status_show_not_ready(int pdev_nr, char *out)
{
 char *s = out;
 int i = 0;

 for (i = 0; i < VHCI_HC_PORTS; i++) {
  out += sprintf(out, "hs  %04u %03u ",
        (pdev_nr * VHCI_PORTS) + i,
        VDEV_ST_NOTASSIGNED);
  out += sprintf(out, "000 00000000 0000000000000000 0-0");
  out += sprintf(out, "\n");
 }

 for (i = 0; i < VHCI_HC_PORTS; i++) {
  out += sprintf(out, "ss  %04u %03u ",
        (pdev_nr * VHCI_PORTS) + VHCI_HC_PORTS + i,
        VDEV_ST_NOTASSIGNED);
  out += sprintf(out, "000 00000000 0000000000000000 0-0");
  out += sprintf(out, "\n");
 }
 return out - s;
}
