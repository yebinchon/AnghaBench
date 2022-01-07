
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* free_queue; size_t free_head; int * state; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int TW_Q_LENGTH ;
 int TW_S_STARTED ;

__attribute__((used)) static void twa_get_request_id(TW_Device_Extension *tw_dev, int *request_id)
{
 *request_id = tw_dev->free_queue[tw_dev->free_head];
 tw_dev->free_head = (tw_dev->free_head + 1) % TW_Q_LENGTH;
 tw_dev->state[*request_id] = TW_S_STARTED;
}
