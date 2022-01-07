
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct optee {TYPE_1__ call_queue; int supp; int wait_queue; scalar_t__ memremaped_shm; int pool; int teedev; int supp_teedev; } ;


 int kfree (struct optee*) ;
 int memunmap (scalar_t__) ;
 int mutex_destroy (int *) ;
 int optee_disable_shm_cache (struct optee*) ;
 int optee_supp_uninit (int *) ;
 int optee_wait_queue_exit (int *) ;
 int tee_device_unregister (int ) ;
 int tee_shm_pool_free (int ) ;

__attribute__((used)) static void optee_remove(struct optee *optee)
{





 optee_disable_shm_cache(optee);





 tee_device_unregister(optee->supp_teedev);
 tee_device_unregister(optee->teedev);

 tee_shm_pool_free(optee->pool);
 if (optee->memremaped_shm)
  memunmap(optee->memremaped_shm);
 optee_wait_queue_exit(&optee->wait_queue);
 optee_supp_uninit(&optee->supp);
 mutex_destroy(&optee->call_queue.mutex);

 kfree(optee);
}
