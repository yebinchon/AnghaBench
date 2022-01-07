
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int fscrypt_read_workqueue ;
 int queue_work (int ,struct work_struct*) ;

void fscrypt_enqueue_decrypt_work(struct work_struct *work)
{
 queue_work(fscrypt_read_workqueue, work);
}
