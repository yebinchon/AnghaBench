
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* ecard_get_drvdata (struct expansion_card*) ;
 int ecard_release_resources (struct expansion_card*) ;
 int ecard_set_drvdata (struct expansion_card*,int *) ;
 int fas216_release (struct Scsi_Host*) ;
 int fas216_remove (struct Scsi_Host*) ;
 int scsi_host_put (struct Scsi_Host*) ;

__attribute__((used)) static void arxescsi_remove(struct expansion_card *ec)
{
 struct Scsi_Host *host = ecard_get_drvdata(ec);

 ecard_set_drvdata(ec, ((void*)0));
 fas216_remove(host);

 fas216_release(host);
 scsi_host_put(host);
 ecard_release_resources(ec);
}
