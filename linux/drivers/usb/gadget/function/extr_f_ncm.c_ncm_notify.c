
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_ncm {int notify_state; } ;


 int NCM_NOTIFY_SPEED ;
 int ncm_do_notify (struct f_ncm*) ;

__attribute__((used)) static void ncm_notify(struct f_ncm *ncm)
{
 ncm->notify_state = NCM_NOTIFY_SPEED;
 ncm_do_notify(ncm);
}
