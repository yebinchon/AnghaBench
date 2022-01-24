#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qdio_irq {int /*<<< orphan*/  debug_area; } ;
struct qdio_initialize {unsigned long q_format; unsigned long qib_param_field_format; TYPE_1__* cdev; int /*<<< orphan*/  output_sbal_addr_array; int /*<<< orphan*/  input_sbal_addr_array; int /*<<< orphan*/  int_parm; int /*<<< orphan*/  output_handler; int /*<<< orphan*/  input_handler; int /*<<< orphan*/  no_output_qs; int /*<<< orphan*/  no_input_qs; int /*<<< orphan*/  output_slib_elements; int /*<<< orphan*/  input_slib_elements; int /*<<< orphan*/  qib_param_field; int /*<<< orphan*/ * adapter_name; } ;
struct qdio_dbf_entry {int /*<<< orphan*/  dbf_list; int /*<<< orphan*/  dbf_info; int /*<<< orphan*/  dbf_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qdio_irq*,char*) ; 
 int /*<<< orphan*/  DBF_ERR ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DBF_WARN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QDIO_DBF_NAME_LEN ; 
 int /*<<< orphan*/  debug_hex_ascii_view ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 struct qdio_dbf_entry* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qdio_dbf_list ; 
 int /*<<< orphan*/  qdio_dbf_list_mutex ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC15(struct qdio_initialize *init_data,
		       struct qdio_irq *irq_ptr)
{
	char text[QDIO_DBF_NAME_LEN];
	struct qdio_dbf_entry *new_entry;

	FUNC1("qfmt:%1d", init_data->q_format);
	FUNC2(init_data->adapter_name, 8);
	FUNC1("qpff%4x", init_data->qib_param_field_format);
	FUNC2(&init_data->qib_param_field, sizeof(void *));
	FUNC2(&init_data->input_slib_elements, sizeof(void *));
	FUNC2(&init_data->output_slib_elements, sizeof(void *));
	FUNC1("niq:%1d noq:%1d", init_data->no_input_qs,
		  init_data->no_output_qs);
	FUNC2(&init_data->input_handler, sizeof(void *));
	FUNC2(&init_data->output_handler, sizeof(void *));
	FUNC2(&init_data->int_parm, sizeof(long));
	FUNC2(&init_data->input_sbal_addr_array, sizeof(void *));
	FUNC2(&init_data->output_sbal_addr_array, sizeof(void *));
	FUNC1("irq:%8lx", (unsigned long)irq_ptr);

	/* allocate trace view for the interface */
	FUNC13(text, QDIO_DBF_NAME_LEN, "qdio_%s",
					FUNC7(&init_data->cdev->dev));
	irq_ptr->debug_area = FUNC12(text);
	if (irq_ptr->debug_area)
		FUNC0(DBF_ERR, irq_ptr, "dbf reused");
	else {
		irq_ptr->debug_area = FUNC3(text, 2, 1, 16);
		if (!irq_ptr->debug_area)
			return -ENOMEM;
		if (FUNC4(irq_ptr->debug_area,
						&debug_hex_ascii_view)) {
			FUNC6(irq_ptr->debug_area);
			return -ENOMEM;
		}
		FUNC5(irq_ptr->debug_area, DBF_WARN);
		FUNC0(DBF_ERR, irq_ptr, "dbf created");
		new_entry = FUNC8(sizeof(struct qdio_dbf_entry), GFP_KERNEL);
		if (!new_entry) {
			FUNC6(irq_ptr->debug_area);
			return -ENOMEM;
		}
		FUNC14(new_entry->dbf_name, text, QDIO_DBF_NAME_LEN);
		new_entry->dbf_info = irq_ptr->debug_area;
		FUNC10(&qdio_dbf_list_mutex);
		FUNC9(&new_entry->dbf_list, &qdio_dbf_list);
		FUNC11(&qdio_dbf_list_mutex);
	}
	return 0;
}