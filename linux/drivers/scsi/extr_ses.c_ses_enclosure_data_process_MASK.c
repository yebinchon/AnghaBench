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
typedef  scalar_t__ u32 ;
struct ses_device {int page1_num_types; unsigned char* page10; int page10_len; unsigned char* page1_types; } ;
struct scsi_device {int dummy; } ;
struct enclosure_device {struct enclosure_component* component; struct ses_device* scratch; } ;
struct enclosure_component {int dummy; } ;

/* Variables and functions */
 unsigned char ENCLOSURE_COMPONENT_ARRAY_DEVICE ; 
 unsigned char ENCLOSURE_COMPONENT_CONTROLLER_ELECTRONICS ; 
 unsigned char ENCLOSURE_COMPONENT_DEVICE ; 
 unsigned char ENCLOSURE_COMPONENT_SAS_EXPANDER ; 
 unsigned char ENCLOSURE_COMPONENT_SCSI_INITIATOR_PORT ; 
 unsigned char ENCLOSURE_COMPONENT_SCSI_TARGET_PORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INIT_ALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct enclosure_component*) ; 
 struct enclosure_component* FUNC1 (struct enclosure_device*,int /*<<< orphan*/ ,unsigned char,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct enclosure_component*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct enclosure_component*,unsigned char*) ; 
 scalar_t__ FUNC6 (struct scsi_device*,int,unsigned char*,int) ; 

__attribute__((used)) static void FUNC7(struct enclosure_device *edev,
				       struct scsi_device *sdev,
				       int create)
{
	u32 result;
	unsigned char *buf = NULL, *type_ptr, *desc_ptr, *addl_desc_ptr = NULL;
	int i, j, page7_len, len, components;
	struct ses_device *ses_dev = edev->scratch;
	int types = ses_dev->page1_num_types;
	unsigned char *hdr_buf = FUNC4(INIT_ALLOC_SIZE, GFP_KERNEL);

	if (!hdr_buf)
		goto simple_populate;

	/* re-read page 10 */
	if (ses_dev->page10)
		FUNC6(sdev, 10, ses_dev->page10, ses_dev->page10_len);
	/* Page 7 for the descriptors is optional */
	result = FUNC6(sdev, 7, hdr_buf, INIT_ALLOC_SIZE);
	if (result)
		goto simple_populate;

	page7_len = len = (hdr_buf[2] << 8) + hdr_buf[3] + 4;
	/* add 1 for trailing '\0' we'll use */
	buf = FUNC4(len + 1, GFP_KERNEL);
	if (!buf)
		goto simple_populate;
	result = FUNC6(sdev, 7, buf, len);
	if (result) {
 simple_populate:
		FUNC3(buf);
		buf = NULL;
		desc_ptr = NULL;
		len = 0;
		page7_len = 0;
	} else {
		desc_ptr = buf + 8;
		len = (desc_ptr[2] << 8) + desc_ptr[3];
		/* skip past overall descriptor */
		desc_ptr += len + 4;
	}
	if (ses_dev->page10)
		addl_desc_ptr = ses_dev->page10 + 8;
	type_ptr = ses_dev->page1_types;
	components = 0;
	for (i = 0; i < types; i++, type_ptr += 4) {
		for (j = 0; j < type_ptr[1]; j++) {
			char *name = NULL;
			struct enclosure_component *ecomp;

			if (desc_ptr) {
				if (desc_ptr >= buf + page7_len) {
					desc_ptr = NULL;
				} else {
					len = (desc_ptr[2] << 8) + desc_ptr[3];
					desc_ptr += 4;
					/* Add trailing zero - pushes into
					 * reserved space */
					desc_ptr[len] = '\0';
					name = desc_ptr;
				}
			}
			if (type_ptr[0] == ENCLOSURE_COMPONENT_DEVICE ||
			    type_ptr[0] == ENCLOSURE_COMPONENT_ARRAY_DEVICE) {

				if (create)
					ecomp =	FUNC1(
						edev,
						components++,
						type_ptr[0],
						name);
				else
					ecomp = &edev->component[components++];

				if (!FUNC0(ecomp)) {
					if (addl_desc_ptr)
						FUNC5(
							ecomp,
							addl_desc_ptr);
					if (create)
						FUNC2(
							ecomp);
				}
			}
			if (desc_ptr)
				desc_ptr += len;

			if (addl_desc_ptr &&
			    /* only find additional descriptions for specific devices */
			    (type_ptr[0] == ENCLOSURE_COMPONENT_DEVICE ||
			     type_ptr[0] == ENCLOSURE_COMPONENT_ARRAY_DEVICE ||
			     type_ptr[0] == ENCLOSURE_COMPONENT_SAS_EXPANDER ||
			     /* these elements are optional */
			     type_ptr[0] == ENCLOSURE_COMPONENT_SCSI_TARGET_PORT ||
			     type_ptr[0] == ENCLOSURE_COMPONENT_SCSI_INITIATOR_PORT ||
			     type_ptr[0] == ENCLOSURE_COMPONENT_CONTROLLER_ELECTRONICS))
				addl_desc_ptr += addl_desc_ptr[1] + 2;

		}
	}
	FUNC3(buf);
	FUNC3(hdr_buf);
}