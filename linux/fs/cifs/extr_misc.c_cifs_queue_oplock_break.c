
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsFileInfo {int oplock_break; } ;


 int cifsFileInfo_get (struct cifsFileInfo*) ;
 int cifsoplockd_wq ;
 int queue_work (int ,int *) ;

void cifs_queue_oplock_break(struct cifsFileInfo *cfile)
{






 cifsFileInfo_get(cfile);

 queue_work(cifsoplockd_wq, &cfile->oplock_break);
}
