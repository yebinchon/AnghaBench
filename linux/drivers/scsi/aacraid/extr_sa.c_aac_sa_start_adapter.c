
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int host_elapsed_seconds; } ;
union aac_init {TYPE_1__ r7; } ;
typedef scalar_t__ ulong ;
typedef int u32 ;
struct aac_dev {scalar_t__ init_pa; union aac_init* init; } ;


 int INIT_STRUCT_BASE_ADDRESS ;
 int cpu_to_le32 (int ) ;
 int ktime_get_real_seconds () ;
 int sa_sync_cmd (struct aac_dev*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void aac_sa_start_adapter(struct aac_dev *dev)
{
 union aac_init *init;



 init = dev->init;
 init->r7.host_elapsed_seconds = cpu_to_le32(ktime_get_real_seconds());

 sa_sync_cmd(dev, INIT_STRUCT_BASE_ADDRESS,
   (u32)(ulong)dev->init_pa, 0, 0, 0, 0, 0,
   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
