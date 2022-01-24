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
typedef  int u32 ;
struct pcmcia_device {int manf_id; int card_id; int func_id; int func; int device_no; scalar_t__ has_func_id; scalar_t__ has_card_id; scalar_t__ has_manf_id; int /*<<< orphan*/ * prod_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pcmcia_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct pcmcia_device *p_dev = FUNC3(dev);
	int i;
	u32 hash[4] = { 0, 0, 0, 0};

	/* calculate hashes */
	for (i = 0; i < 4; i++) {
		if (!p_dev->prod_id[i])
			continue;
		hash[i] = FUNC0(0, p_dev->prod_id[i],
				FUNC2(p_dev->prod_id[i]));
	}
	return FUNC1(buf, "pcmcia:m%04Xc%04Xf%02Xfn%02Xpfn%02X"
				"pa%08Xpb%08Xpc%08Xpd%08X\n",
				p_dev->has_manf_id ? p_dev->manf_id : 0,
				p_dev->has_card_id ? p_dev->card_id : 0,
				p_dev->has_func_id ? p_dev->func_id : 0,
				p_dev->func, p_dev->device_no,
				hash[0], hash[1], hash[2], hash[3]);
}