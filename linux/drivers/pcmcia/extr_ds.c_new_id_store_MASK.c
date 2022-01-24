#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  prod_id_hash; void* device_no; void* function; void* func_id; void* card_id; void* manf_id; void* match_flags; } ;
struct pcmcia_dynid {int /*<<< orphan*/  node; TYPE_1__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct pcmcia_driver {int /*<<< orphan*/  drv; TYPE_2__ dynids; } ;
struct device_driver {int dummy; } ;
typedef  int ssize_t ;
typedef  void* __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  void* __u16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct pcmcia_dynid* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,char*,void**,void**,void**,void**,void**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pcmcia_driver* FUNC7 (struct device_driver*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device_driver *driver, const char *buf, size_t count)
{
	struct pcmcia_dynid *dynid;
	struct pcmcia_driver *pdrv = FUNC7(driver);
	__u16 match_flags, manf_id, card_id;
	__u8 func_id, function, device_no;
	__u32 prod_id_hash[4] = {0, 0, 0, 0};
	int fields = 0;
	int retval = 0;

	fields = FUNC6(buf, "%hx %hx %hx %hhx %hhx %hhx %x %x %x %x",
			&match_flags, &manf_id, &card_id, &func_id, &function, &device_no,
			&prod_id_hash[0], &prod_id_hash[1], &prod_id_hash[2], &prod_id_hash[3]);
	if (fields < 6)
		return -EINVAL;

	dynid = FUNC1(sizeof(struct pcmcia_dynid), GFP_KERNEL);
	if (!dynid)
		return -ENOMEM;

	dynid->id.match_flags = match_flags;
	dynid->id.manf_id = manf_id;
	dynid->id.card_id = card_id;
	dynid->id.func_id = func_id;
	dynid->id.function = function;
	dynid->id.device_no = device_no;
	FUNC3(dynid->id.prod_id_hash, prod_id_hash, sizeof(__u32) * 4);

	FUNC4(&pdrv->dynids.lock);
	FUNC2(&dynid->node, &pdrv->dynids.list);
	FUNC5(&pdrv->dynids.lock);

	retval = FUNC0(&pdrv->drv);

	if (retval)
		return retval;
	return count;
}