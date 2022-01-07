
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct afu_cmd {int queue; } ;


 int INIT_LIST_HEAD (int *) ;
 struct afu_cmd* sc_to_afuc (struct scsi_cmnd*) ;

__attribute__((used)) static inline struct afu_cmd *sc_to_afuci(struct scsi_cmnd *sc)
{
 struct afu_cmd *afuc = sc_to_afuc(sc);

 INIT_LIST_HEAD(&afuc->queue);
 return afuc;
}
