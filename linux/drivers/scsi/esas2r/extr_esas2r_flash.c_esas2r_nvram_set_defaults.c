
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct esas2r_sas_nvram {int* sas_addr; } ;
struct esas2r_adapter {TYPE_2__* pcid; int flags; struct esas2r_sas_nvram* nvram; } ;
struct TYPE_4__ {int devfn; TYPE_1__* bus; } ;
struct TYPE_3__ {int number; } ;


 int AF_NVR_VALID ;
 int HIBYTE (int ) ;
 int LOBYTE (int ) ;
 int LOWORD (int ) ;
 int clear_bit (int ,int *) ;
 struct esas2r_sas_nvram default_sas_nvram ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;

void esas2r_nvram_set_defaults(struct esas2r_adapter *a)
{
 struct esas2r_sas_nvram *n = a->nvram;
 u32 time = jiffies_to_msecs(jiffies);

 clear_bit(AF_NVR_VALID, &a->flags);
 *n = default_sas_nvram;
 n->sas_addr[3] |= 0x0F;
 n->sas_addr[4] = HIBYTE(LOWORD(time));
 n->sas_addr[5] = LOBYTE(LOWORD(time));
 n->sas_addr[6] = a->pcid->bus->number;
 n->sas_addr[7] = a->pcid->devfn;
}
