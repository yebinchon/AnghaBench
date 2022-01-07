
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int MAX_UART_INSTANCES ;
 int alias_bitmap ;
 int alias_bitmap_initialized ;
 int bitmap ;
 int bitmap_lock ;
 int bitmap_or (int ,int ,int ,int) ;
 int cdns_uart_of_match ;
 int dev_dbg (TYPE_1__*,char*,int,...) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int) ;
 int dev_warn (TYPE_1__*,char*) ;
 int find_next_zero_bit (int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_alias_get_alias_list (int ,char*,int ,int) ;
 int of_alias_get_id (int ,char*) ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static int cdns_get_id(struct platform_device *pdev)
{
 int id, ret;

 mutex_lock(&bitmap_lock);


 if (!alias_bitmap_initialized) {
  ret = of_alias_get_alias_list(cdns_uart_of_match, "serial",
           alias_bitmap, MAX_UART_INSTANCES);
  if (ret && ret != -EOVERFLOW) {
   mutex_unlock(&bitmap_lock);
   return ret;
  }

  alias_bitmap_initialized++;
 }


 bitmap_or(bitmap, bitmap, alias_bitmap, MAX_UART_INSTANCES);

 dev_dbg(&pdev->dev, "Alias bitmap: %*pb\n",
  MAX_UART_INSTANCES, bitmap);


 id = of_alias_get_id(pdev->dev.of_node, "serial");
 if (id < 0) {
  dev_warn(&pdev->dev,
    "No serial alias passed. Using the first free id\n");






  id = 0;

  for (;;) {
   dev_info(&pdev->dev, "Checking id %d\n", id);
   id = find_next_zero_bit(bitmap, MAX_UART_INSTANCES, id);


   if (id == MAX_UART_INSTANCES) {
    dev_err(&pdev->dev, "No free ID\n");
    mutex_unlock(&bitmap_lock);
    return -EINVAL;
   }

   dev_dbg(&pdev->dev, "The empty id is %d\n", id);

   if (!test_and_set_bit(id, bitmap)) {

    dev_dbg(&pdev->dev,
     "Selected ID %d allocation passed\n",
     id);
    break;
   }
   dev_dbg(&pdev->dev,
    "Selected ID %d allocation failed\n", id);

   id++;
  }
 }

 mutex_unlock(&bitmap_lock);

 return id;
}
