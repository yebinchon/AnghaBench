
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u16 ;
struct fw_event_work {scalar_t__ ignore; scalar_t__ event_data; } ;
struct _sas_node {scalar_t__ num_phys; int sas_address; } ;
struct TYPE_5__ {scalar_t__ num_phys; int sas_address; } ;
struct MPT3SAS_ADAPTER {int logging_level; scalar_t__ shost_recovery; int pend_os_device_add; scalar_t__ pci_error_recovery; scalar_t__ remove_host; int sas_node_lock; TYPE_1__ sas_hba; } ;
struct TYPE_7__ {scalar_t__ ExpStatus; int NumEntries; scalar_t__ StartPhyNum; TYPE_2__* PHY; int ExpanderDevHandle; } ;
struct TYPE_6__ {scalar_t__ PhyStatus; int LinkRate; int AttachedDevHandle; } ;
typedef TYPE_3__ Mpi2EventDataSasTopologyChangeList_t ;


 scalar_t__ MPI2_EVENT_SAS_TOPO_ES_ADDED ;
 scalar_t__ MPI2_EVENT_SAS_TOPO_ES_NOT_RESPONDING ;
 int MPI2_EVENT_SAS_TOPO_PHYSTATUS_VACANT ;
 scalar_t__ MPI2_EVENT_SAS_TOPO_RC_MASK ;



 scalar_t__ MPI2_SAS_NEG_LINK_RATE_1_5 ;
 int MPT_DEBUG_EVENT_WORK_TASK ;
 int _scsih_add_device (struct MPT3SAS_ADAPTER*,scalar_t__,scalar_t__,int ) ;
 int _scsih_check_device (struct MPT3SAS_ADAPTER*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int _scsih_device_remove_by_handle (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 scalar_t__ _scsih_expander_add (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int _scsih_sas_host_add (struct MPT3SAS_ADAPTER*) ;
 int _scsih_sas_host_refresh (struct MPT3SAS_ADAPTER*) ;
 int _scsih_sas_topology_change_event_debug (struct MPT3SAS_ADAPTER*,TYPE_3__*) ;
 int dewtprintk (struct MPT3SAS_ADAPTER*,int ) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mpt3sas_expander_remove (struct MPT3SAS_ADAPTER*,int ) ;
 struct _sas_node* mpt3sas_scsih_expander_find_by_handle (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int mpt3sas_transport_update_links (struct MPT3SAS_ADAPTER*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static int
_scsih_sas_topology_change_event(struct MPT3SAS_ADAPTER *ioc,
 struct fw_event_work *fw_event)
{
 int i;
 u16 parent_handle, handle;
 u16 reason_code;
 u8 phy_number, max_phys;
 struct _sas_node *sas_expander;
 u64 sas_address;
 unsigned long flags;
 u8 link_rate, prev_link_rate;
 Mpi2EventDataSasTopologyChangeList_t *event_data =
  (Mpi2EventDataSasTopologyChangeList_t *)
  fw_event->event_data;

 if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK)
  _scsih_sas_topology_change_event_debug(ioc, event_data);

 if (ioc->shost_recovery || ioc->remove_host || ioc->pci_error_recovery)
  return 0;

 if (!ioc->sas_hba.num_phys)
  _scsih_sas_host_add(ioc);
 else
  _scsih_sas_host_refresh(ioc);

 if (fw_event->ignore) {
  dewtprintk(ioc, ioc_info(ioc, "ignoring expander event\n"));
  return 0;
 }

 parent_handle = le16_to_cpu(event_data->ExpanderDevHandle);


 if (event_data->ExpStatus == MPI2_EVENT_SAS_TOPO_ES_ADDED)
  if (_scsih_expander_add(ioc, parent_handle) != 0)
   return 0;

 spin_lock_irqsave(&ioc->sas_node_lock, flags);
 sas_expander = mpt3sas_scsih_expander_find_by_handle(ioc,
     parent_handle);
 if (sas_expander) {
  sas_address = sas_expander->sas_address;
  max_phys = sas_expander->num_phys;
 } else if (parent_handle < ioc->sas_hba.num_phys) {
  sas_address = ioc->sas_hba.sas_address;
  max_phys = ioc->sas_hba.num_phys;
 } else {
  spin_unlock_irqrestore(&ioc->sas_node_lock, flags);
  return 0;
 }
 spin_unlock_irqrestore(&ioc->sas_node_lock, flags);


 for (i = 0; i < event_data->NumEntries; i++) {
  if (fw_event->ignore) {
   dewtprintk(ioc,
       ioc_info(ioc, "ignoring expander event\n"));
   return 0;
  }
  if (ioc->remove_host || ioc->pci_error_recovery)
   return 0;
  phy_number = event_data->StartPhyNum + i;
  if (phy_number >= max_phys)
   continue;
  reason_code = event_data->PHY[i].PhyStatus &
      MPI2_EVENT_SAS_TOPO_RC_MASK;
  if ((event_data->PHY[i].PhyStatus &
      MPI2_EVENT_SAS_TOPO_PHYSTATUS_VACANT) && (reason_code !=
      128))
    continue;
  handle = le16_to_cpu(event_data->PHY[i].AttachedDevHandle);
  if (!handle)
   continue;
  link_rate = event_data->PHY[i].LinkRate >> 4;
  prev_link_rate = event_data->PHY[i].LinkRate & 0xF;
  switch (reason_code) {
  case 130:

   if (ioc->shost_recovery)
    break;

   if (link_rate == prev_link_rate)
    break;

   mpt3sas_transport_update_links(ioc, sas_address,
       handle, phy_number, link_rate);

   if (link_rate < MPI2_SAS_NEG_LINK_RATE_1_5)
    break;

   _scsih_check_device(ioc, sas_address, handle,
       phy_number, link_rate);

   if (!test_bit(handle, ioc->pend_os_device_add))
    break;



  case 129:

   if (ioc->shost_recovery)
    break;

   mpt3sas_transport_update_links(ioc, sas_address,
       handle, phy_number, link_rate);

   _scsih_add_device(ioc, handle, phy_number, 0);

   break;
  case 128:

   _scsih_device_remove_by_handle(ioc, handle);
   break;
  }
 }


 if (event_data->ExpStatus == MPI2_EVENT_SAS_TOPO_ES_NOT_RESPONDING &&
     sas_expander)
  mpt3sas_expander_remove(ioc, sas_address);

 return 0;
}
