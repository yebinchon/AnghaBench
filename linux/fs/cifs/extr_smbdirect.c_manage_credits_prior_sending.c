
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_connection {int new_credits_offered; int lock_new_credits_offered; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int manage_credits_prior_sending(struct smbd_connection *info)
{
 int new_credits;

 spin_lock(&info->lock_new_credits_offered);
 new_credits = info->new_credits_offered;
 info->new_credits_offered = 0;
 spin_unlock(&info->lock_new_credits_offered);

 return new_credits;
}
