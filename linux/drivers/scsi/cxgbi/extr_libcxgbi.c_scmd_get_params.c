
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nents; struct scatterlist* sgl; } ;
struct scsi_data_buffer {unsigned int length; TYPE_1__ table; } ;
struct scsi_cmnd {struct scsi_data_buffer sdb; } ;
struct scatterlist {int dummy; } ;


 struct scsi_data_buffer* scsi_prot (struct scsi_cmnd*) ;

__attribute__((used)) static inline void
scmd_get_params(struct scsi_cmnd *sc, struct scatterlist **sgl,
  unsigned int *sgcnt, unsigned int *dlen,
  unsigned int prot)
{
 struct scsi_data_buffer *sdb = prot ? scsi_prot(sc) : &sc->sdb;

 *sgl = sdb->table.sgl;
 *sgcnt = sdb->table.nents;
 *dlen = sdb->length;

}
