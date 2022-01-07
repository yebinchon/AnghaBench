
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_device {int dev; } ;


 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 int dev_info (int ,char*,char*,char*) ;

__attribute__((used)) static void pps_echo_client_default(struct pps_device *pps, int event,
  void *data)
{
 dev_info(pps->dev, "echo %s %s\n",
  event & PPS_CAPTUREASSERT ? "assert" : "",
  event & PPS_CAPTURECLEAR ? "clear" : "");
}
