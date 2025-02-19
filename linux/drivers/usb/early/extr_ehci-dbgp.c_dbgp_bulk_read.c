
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pids; int address; int control; } ;


 int DBGP_EPADDR (unsigned int,unsigned int) ;
 int DBGP_GO ;
 int DBGP_MAX_PACKET ;
 int DBGP_OUT ;
 int USB_PID_IN ;
 int dbgp_get_data (void*,int) ;
 int dbgp_len_update (int ,int) ;
 int dbgp_pid_read_update (int ,int ) ;
 int dbgp_wait_until_done (int ,int) ;
 TYPE_1__* ehci_debug ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static int dbgp_bulk_read(unsigned devnum, unsigned endpoint, void *data,
     int size, int loops)
{
 u32 pids, addr, ctrl;
 int ret;

 if (size > DBGP_MAX_PACKET)
  return -1;

 addr = DBGP_EPADDR(devnum, endpoint);

 pids = readl(&ehci_debug->pids);
 pids = dbgp_pid_read_update(pids, USB_PID_IN);

 ctrl = readl(&ehci_debug->control);
 ctrl = dbgp_len_update(ctrl, size);
 ctrl &= ~DBGP_OUT;
 ctrl |= DBGP_GO;

 writel(addr, &ehci_debug->address);
 writel(pids, &ehci_debug->pids);
 ret = dbgp_wait_until_done(ctrl, loops);
 if (ret < 0)
  return ret;

 if (size > ret)
  size = ret;
 dbgp_get_data(data, size);
 return ret;
}
