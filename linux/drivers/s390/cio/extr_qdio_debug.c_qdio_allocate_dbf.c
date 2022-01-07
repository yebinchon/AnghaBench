
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_irq {int debug_area; } ;
struct qdio_initialize {unsigned long q_format; unsigned long qib_param_field_format; TYPE_1__* cdev; int output_sbal_addr_array; int input_sbal_addr_array; int int_parm; int output_handler; int input_handler; int no_output_qs; int no_input_qs; int output_slib_elements; int input_slib_elements; int qib_param_field; int * adapter_name; } ;
struct qdio_dbf_entry {int dbf_list; int dbf_info; int dbf_name; } ;
struct TYPE_2__ {int dev; } ;


 int DBF_DEV_EVENT (int ,struct qdio_irq*,char*) ;
 int DBF_ERR ;
 int DBF_EVENT (char*,unsigned long,...) ;
 int DBF_HEX (int *,int) ;
 int DBF_WARN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QDIO_DBF_NAME_LEN ;
 int debug_hex_ascii_view ;
 int debug_register (char*,int,int,int) ;
 scalar_t__ debug_register_view (int ,int *) ;
 int debug_set_level (int ,int ) ;
 int debug_unregister (int ) ;
 char* dev_name (int *) ;
 struct qdio_dbf_entry* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qdio_dbf_list ;
 int qdio_dbf_list_mutex ;
 int qdio_get_dbf_entry (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;

int qdio_allocate_dbf(struct qdio_initialize *init_data,
         struct qdio_irq *irq_ptr)
{
 char text[QDIO_DBF_NAME_LEN];
 struct qdio_dbf_entry *new_entry;

 DBF_EVENT("qfmt:%1d", init_data->q_format);
 DBF_HEX(init_data->adapter_name, 8);
 DBF_EVENT("qpff%4x", init_data->qib_param_field_format);
 DBF_HEX(&init_data->qib_param_field, sizeof(void *));
 DBF_HEX(&init_data->input_slib_elements, sizeof(void *));
 DBF_HEX(&init_data->output_slib_elements, sizeof(void *));
 DBF_EVENT("niq:%1d noq:%1d", init_data->no_input_qs,
    init_data->no_output_qs);
 DBF_HEX(&init_data->input_handler, sizeof(void *));
 DBF_HEX(&init_data->output_handler, sizeof(void *));
 DBF_HEX(&init_data->int_parm, sizeof(long));
 DBF_HEX(&init_data->input_sbal_addr_array, sizeof(void *));
 DBF_HEX(&init_data->output_sbal_addr_array, sizeof(void *));
 DBF_EVENT("irq:%8lx", (unsigned long)irq_ptr);


 snprintf(text, QDIO_DBF_NAME_LEN, "qdio_%s",
     dev_name(&init_data->cdev->dev));
 irq_ptr->debug_area = qdio_get_dbf_entry(text);
 if (irq_ptr->debug_area)
  DBF_DEV_EVENT(DBF_ERR, irq_ptr, "dbf reused");
 else {
  irq_ptr->debug_area = debug_register(text, 2, 1, 16);
  if (!irq_ptr->debug_area)
   return -ENOMEM;
  if (debug_register_view(irq_ptr->debug_area,
      &debug_hex_ascii_view)) {
   debug_unregister(irq_ptr->debug_area);
   return -ENOMEM;
  }
  debug_set_level(irq_ptr->debug_area, DBF_WARN);
  DBF_DEV_EVENT(DBF_ERR, irq_ptr, "dbf created");
  new_entry = kzalloc(sizeof(struct qdio_dbf_entry), GFP_KERNEL);
  if (!new_entry) {
   debug_unregister(irq_ptr->debug_area);
   return -ENOMEM;
  }
  strlcpy(new_entry->dbf_name, text, QDIO_DBF_NAME_LEN);
  new_entry->dbf_info = irq_ptr->debug_area;
  mutex_lock(&qdio_dbf_list_mutex);
  list_add(&new_entry->dbf_list, &qdio_dbf_list);
  mutex_unlock(&qdio_dbf_list_mutex);
 }
 return 0;
}
