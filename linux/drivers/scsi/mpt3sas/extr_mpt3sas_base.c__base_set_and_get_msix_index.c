
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct scsiio_tracker {int msix_io; int scmd; } ;
struct MPT3SAS_ADAPTER {scalar_t__ hi_priority_smid; int (* get_msix_index_for_smlio ) (struct MPT3SAS_ADAPTER*,int ) ;} ;


 int _base_get_msix_index (struct MPT3SAS_ADAPTER*,int *) ;
 struct scsiio_tracker* _get_st_from_smid (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int stub1 (struct MPT3SAS_ADAPTER*,int ) ;

__attribute__((used)) static u8
_base_set_and_get_msix_index(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 struct scsiio_tracker *st = ((void*)0);

 if (smid < ioc->hi_priority_smid)
  st = _get_st_from_smid(ioc, smid);

 if (st == ((void*)0))
  return _base_get_msix_index(ioc, ((void*)0));

 st->msix_io = ioc->get_msix_index_for_smlio(ioc, st->scmd);
 return st->msix_io;
}
