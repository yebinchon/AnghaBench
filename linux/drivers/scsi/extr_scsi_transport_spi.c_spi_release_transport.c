
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int host_attrs; int target_attrs; } ;
struct spi_internal {TYPE_1__ t; } ;
struct scsi_transport_template {int dummy; } ;


 int kfree (struct spi_internal*) ;
 struct spi_internal* to_spi_internal (struct scsi_transport_template*) ;
 int transport_container_unregister (int *) ;

void spi_release_transport(struct scsi_transport_template *t)
{
 struct spi_internal *i = to_spi_internal(t);

 transport_container_unregister(&i->t.target_attrs);
 transport_container_unregister(&i->t.host_attrs);

 kfree(i);
}
