
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef int uint32_t ;
typedef scalar_t__ uint ;
struct TYPE_13__ {TYPE_4__* hw; } ;
typedef TYPE_5__ scsi_qla_host_t ;
struct TYPE_12__ {TYPE_3__* iobase; TYPE_1__* pdev; } ;
struct TYPE_10__ {int hccr; } ;
struct TYPE_11__ {TYPE_2__ isp24; } ;
struct TYPE_9__ {int subsystem_device; } ;


 int HCCRX_SET_RISC_PAUSE ;
 int RISC_SEMAPHORE ;
 int RISC_SEMAPHORE_CLR ;
 int RISC_SEMAPHORE_FORCE ;
 int RISC_SEMAPHORE_FORCE_CLR ;
 int RISC_SEMAPHORE_FORCE_SET ;
 int RISC_SEMAPHORE_SET ;
 scalar_t__ TIMEOUT_SEMAPHORE ;
 scalar_t__ TIMEOUT_SEMAPHORE_FORCE ;
 scalar_t__ TIMEOUT_TOTAL_ELAPSED ;
 int WRT_REG_DWORD (int *,int ) ;
 int msleep (scalar_t__) ;
 int qla25xx_read_risc_sema_reg (TYPE_5__*,int*) ;
 int qla25xx_write_risc_sema_reg (TYPE_5__*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
qla25xx_manipulate_risc_semaphore(scsi_qla_host_t *vha)
{
 uint32_t wd32 = 0;
 uint delta_msec = 100;
 uint elapsed_msec = 0;
 uint timeout_msec;
 ulong n;

 if (vha->hw->pdev->subsystem_device != 0x0175 &&
     vha->hw->pdev->subsystem_device != 0x0240)
  return;

 WRT_REG_DWORD(&vha->hw->iobase->isp24.hccr, HCCRX_SET_RISC_PAUSE);
 udelay(100);

attempt:
 timeout_msec = TIMEOUT_SEMAPHORE;
 n = timeout_msec / delta_msec;
 while (n--) {
  qla25xx_write_risc_sema_reg(vha, RISC_SEMAPHORE_SET);
  qla25xx_read_risc_sema_reg(vha, &wd32);
  if (wd32 & RISC_SEMAPHORE)
   break;
  msleep(delta_msec);
  elapsed_msec += delta_msec;
  if (elapsed_msec > TIMEOUT_TOTAL_ELAPSED)
   goto force;
 }

 if (!(wd32 & RISC_SEMAPHORE))
  goto force;

 if (!(wd32 & RISC_SEMAPHORE_FORCE))
  goto acquired;

 qla25xx_write_risc_sema_reg(vha, RISC_SEMAPHORE_CLR);
 timeout_msec = TIMEOUT_SEMAPHORE_FORCE;
 n = timeout_msec / delta_msec;
 while (n--) {
  qla25xx_read_risc_sema_reg(vha, &wd32);
  if (!(wd32 & RISC_SEMAPHORE_FORCE))
   break;
  msleep(delta_msec);
  elapsed_msec += delta_msec;
  if (elapsed_msec > TIMEOUT_TOTAL_ELAPSED)
   goto force;
 }

 if (wd32 & RISC_SEMAPHORE_FORCE)
  qla25xx_write_risc_sema_reg(vha, RISC_SEMAPHORE_FORCE_CLR);

 goto attempt;

force:
 qla25xx_write_risc_sema_reg(vha, RISC_SEMAPHORE_FORCE_SET);

acquired:
 return;
}
