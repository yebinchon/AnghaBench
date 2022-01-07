
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {int dummy; } ;
struct sym_data {struct sym_hcb* ncb; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;



__attribute__((used)) static inline struct sym_hcb * sym_get_hcb(struct Scsi_Host *host)
{
 return ((struct sym_data *)host->hostdata)->ncb;
}
