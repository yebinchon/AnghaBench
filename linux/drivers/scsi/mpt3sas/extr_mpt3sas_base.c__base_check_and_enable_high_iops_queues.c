
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct MPT3SAS_ADAPTER {scalar_t__ high_iops_queues; scalar_t__ is_aero_ioc; int pdev; } ;


 int MPT3SAS_GEN35_MAX_MSIX_QUEUES ;
 scalar_t__ MPT3SAS_HIGH_IOPS_REPLY_QUEUES ;
 scalar_t__ MPT_PERF_MODE_DEFAULT ;
 scalar_t__ MPT_PERF_MODE_IOPS ;
 scalar_t__ MPT_PERF_MODE_LATENCY ;
 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_CLS ;
 int max_msix_vectors ;
 scalar_t__ num_online_cpus () ;
 int pcie_capability_read_word (int ,int ,int*) ;
 scalar_t__ perf_mode ;
 int reset_devices ;

__attribute__((used)) static void
_base_check_and_enable_high_iops_queues(struct MPT3SAS_ADAPTER *ioc,
  int hba_msix_vector_count)
{
 u16 lnksta, speed;

 if (perf_mode == MPT_PERF_MODE_IOPS ||
     perf_mode == MPT_PERF_MODE_LATENCY) {
  ioc->high_iops_queues = 0;
  return;
 }

 if (perf_mode == MPT_PERF_MODE_DEFAULT) {

  pcie_capability_read_word(ioc->pdev, PCI_EXP_LNKSTA, &lnksta);
  speed = lnksta & PCI_EXP_LNKSTA_CLS;

  if (speed < 0x4) {
   ioc->high_iops_queues = 0;
   return;
  }
 }

 if (!reset_devices && ioc->is_aero_ioc &&
     hba_msix_vector_count == MPT3SAS_GEN35_MAX_MSIX_QUEUES &&
     num_online_cpus() >= MPT3SAS_HIGH_IOPS_REPLY_QUEUES &&
     max_msix_vectors == -1)
  ioc->high_iops_queues = MPT3SAS_HIGH_IOPS_REPLY_QUEUES;
 else
  ioc->high_iops_queues = 0;
}
