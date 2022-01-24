#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xen_pcibk_dev_data {int /*<<< orphan*/  config_fields; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct config_field_entry {unsigned int base_offset; int /*<<< orphan*/  list; int /*<<< orphan*/ * data; struct config_field const* field; } ;
struct config_field {void* (* init ) (struct pci_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_field_entry*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct config_field_entry*) ; 
 struct config_field_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct xen_pcibk_dev_data* FUNC7 (struct pci_dev*) ; 
 void* FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 

int FUNC10(struct pci_dev *dev,
				    const struct config_field *field,
				    unsigned int base_offset)
{
	int err = 0;
	struct xen_pcibk_dev_data *dev_data = FUNC7(dev);
	struct config_field_entry *cfg_entry;
	void *tmp;

	cfg_entry = FUNC5(sizeof(*cfg_entry), GFP_KERNEL);
	if (!cfg_entry) {
		err = -ENOMEM;
		goto out;
	}

	cfg_entry->data = NULL;
	cfg_entry->field = field;
	cfg_entry->base_offset = base_offset;

	/* silently ignore duplicate fields */
	err = FUNC9(dev, FUNC1(cfg_entry));
	if (err)
		goto out;

	if (field->init) {
		tmp = field->init(dev, FUNC1(cfg_entry));

		if (FUNC0(tmp)) {
			err = FUNC2(tmp);
			goto out;
		}

		cfg_entry->data = tmp;
	}

	FUNC3(&dev->dev, "added config field at offset 0x%02x\n",
		FUNC1(cfg_entry));
	FUNC6(&cfg_entry->list, &dev_data->config_fields);

out:
	if (err)
		FUNC4(cfg_entry);

	return err;
}