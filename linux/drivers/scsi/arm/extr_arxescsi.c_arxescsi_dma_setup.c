
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_pointer {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int fasdmatype_t ;
typedef int fasdmadir_t ;


 int fasdma_pseudo ;

__attribute__((used)) static fasdmatype_t
arxescsi_dma_setup(struct Scsi_Host *host, struct scsi_pointer *SCp,
         fasdmadir_t direction, fasdmatype_t min_type)
{



 return fasdma_pseudo;
}
