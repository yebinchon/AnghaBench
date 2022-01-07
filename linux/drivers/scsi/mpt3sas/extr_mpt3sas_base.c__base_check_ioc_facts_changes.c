
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct mpt3sas_facts {scalar_t__ MaxDevHandle; } ;
struct TYPE_2__ {scalar_t__ MaxDevHandle; } ;
struct MPT3SAS_ADAPTER {int pd_handles_sz; int pend_os_device_add_sz; int device_remove_in_progress_sz; TYPE_1__ facts; struct mpt3sas_facts prev_fw_facts; void* device_remove_in_progress; void* pend_os_device_add; void* blocking_handles; void* pd_handles; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,void*) ;
 void* krealloc (void*,void*,int ) ;
 int memcpy (struct mpt3sas_facts*,TYPE_1__*,int) ;
 int memset (void*,int ,void*) ;

__attribute__((used)) static int
_base_check_ioc_facts_changes(struct MPT3SAS_ADAPTER *ioc)
{
 u16 pd_handles_sz;
 void *pd_handles = ((void*)0), *blocking_handles = ((void*)0);
 void *pend_os_device_add = ((void*)0), *device_remove_in_progress = ((void*)0);
 struct mpt3sas_facts *old_facts = &ioc->prev_fw_facts;

 if (ioc->facts.MaxDevHandle > old_facts->MaxDevHandle) {
  pd_handles_sz = (ioc->facts.MaxDevHandle / 8);
  if (ioc->facts.MaxDevHandle % 8)
   pd_handles_sz++;

  pd_handles = krealloc(ioc->pd_handles, pd_handles_sz,
      GFP_KERNEL);
  if (!pd_handles) {
   ioc_info(ioc,
       "Unable to allocate the memory for pd_handles of sz: %d\n",
       pd_handles_sz);
   return -ENOMEM;
  }
  memset(pd_handles + ioc->pd_handles_sz, 0,
      (pd_handles_sz - ioc->pd_handles_sz));
  ioc->pd_handles = pd_handles;

  blocking_handles = krealloc(ioc->blocking_handles,
      pd_handles_sz, GFP_KERNEL);
  if (!blocking_handles) {
   ioc_info(ioc,
       "Unable to allocate the memory for "
       "blocking_handles of sz: %d\n",
       pd_handles_sz);
   return -ENOMEM;
  }
  memset(blocking_handles + ioc->pd_handles_sz, 0,
      (pd_handles_sz - ioc->pd_handles_sz));
  ioc->blocking_handles = blocking_handles;
  ioc->pd_handles_sz = pd_handles_sz;

  pend_os_device_add = krealloc(ioc->pend_os_device_add,
      pd_handles_sz, GFP_KERNEL);
  if (!pend_os_device_add) {
   ioc_info(ioc,
       "Unable to allocate the memory for pend_os_device_add of sz: %d\n",
       pd_handles_sz);
   return -ENOMEM;
  }
  memset(pend_os_device_add + ioc->pend_os_device_add_sz, 0,
      (pd_handles_sz - ioc->pend_os_device_add_sz));
  ioc->pend_os_device_add = pend_os_device_add;
  ioc->pend_os_device_add_sz = pd_handles_sz;

  device_remove_in_progress = krealloc(
      ioc->device_remove_in_progress, pd_handles_sz, GFP_KERNEL);
  if (!device_remove_in_progress) {
   ioc_info(ioc,
       "Unable to allocate the memory for "
       "device_remove_in_progress of sz: %d\n "
       , pd_handles_sz);
   return -ENOMEM;
  }
  memset(device_remove_in_progress +
      ioc->device_remove_in_progress_sz, 0,
      (pd_handles_sz - ioc->device_remove_in_progress_sz));
  ioc->device_remove_in_progress = device_remove_in_progress;
  ioc->device_remove_in_progress_sz = pd_handles_sz;
 }

 memcpy(&ioc->prev_fw_facts, &ioc->facts, sizeof(struct mpt3sas_facts));
 return 0;
}
