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
struct pnp_id {char* id; struct pnp_id* next; } ;
struct pnp_dev {struct pnp_id* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pnp_id* FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char const) ; 

struct pnp_id *FUNC2(struct pnp_dev *dev, const char *id)
{
	struct pnp_id *dev_id, *ptr;

	dev_id = FUNC0(sizeof(struct pnp_id), GFP_KERNEL);
	if (!dev_id)
		return NULL;

	dev_id->id[0] = id[0];
	dev_id->id[1] = id[1];
	dev_id->id[2] = id[2];
	dev_id->id[3] = FUNC1(id[3]);
	dev_id->id[4] = FUNC1(id[4]);
	dev_id->id[5] = FUNC1(id[5]);
	dev_id->id[6] = FUNC1(id[6]);
	dev_id->id[7] = '\0';

	dev_id->next = NULL;
	ptr = dev->id;
	while (ptr && ptr->next)
		ptr = ptr->next;
	if (ptr)
		ptr->next = dev_id;
	else
		dev->id = dev_id;

	return dev_id;
}