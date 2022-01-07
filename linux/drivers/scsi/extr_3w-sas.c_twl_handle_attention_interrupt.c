
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int flags; int * state; int host; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int TWL_CLEAR_DB_INTERRUPT (TYPE_1__*) ;
 int TWL_DOORBELL_ATTENTION_INTERRUPT ;
 int TWL_DOORBELL_CONTROLLER_ERROR ;
 int TWL_HOBDBC_REG_ADDR (TYPE_1__*) ;
 int TWL_HOBDB_REG_ADDR (TYPE_1__*) ;
 int TW_DRIVER ;
 int TW_IN_ATTENTION_LOOP ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int TW_S_COMPLETED ;
 int clear_bit (int ,int *) ;
 int readl (int ) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ twl_aen_read_queue (TYPE_1__*,int) ;
 int twl_free_request_id (TYPE_1__*,int) ;
 int twl_get_request_id (TYPE_1__*,int*) ;

__attribute__((used)) static int twl_handle_attention_interrupt(TW_Device_Extension *tw_dev)
{
 int retval = 1;
 u32 request_id, doorbell;


 doorbell = readl(TWL_HOBDB_REG_ADDR(tw_dev));


 if (doorbell & TWL_DOORBELL_CONTROLLER_ERROR) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0xd, "Microcontroller Error: clearing");
  goto out;
 }


 if (doorbell & TWL_DOORBELL_ATTENTION_INTERRUPT) {
  if (!(test_and_set_bit(TW_IN_ATTENTION_LOOP, &tw_dev->flags))) {
   twl_get_request_id(tw_dev, &request_id);
   if (twl_aen_read_queue(tw_dev, request_id)) {
    tw_dev->state[request_id] = TW_S_COMPLETED;
    twl_free_request_id(tw_dev, request_id);
    clear_bit(TW_IN_ATTENTION_LOOP, &tw_dev->flags);
   }
  }
 }

 retval = 0;
out:

 TWL_CLEAR_DB_INTERRUPT(tw_dev);


 readl(TWL_HOBDBC_REG_ADDR(tw_dev));

 return retval;
}
