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
struct nvme_subsystem {char* serial; char* model; int vendor_id; } ;
struct nvme_ns_ids {int /*<<< orphan*/  eui64; int /*<<< orphan*/  nguid; int /*<<< orphan*/  uuid; } ;
struct nvme_ns_head {int /*<<< orphan*/  ns_id; struct nvme_subsystem* subsys; struct nvme_ns_ids ids; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct nvme_ns_head* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	struct nvme_ns_head *head = FUNC0(dev);
	struct nvme_ns_ids *ids = &head->ids;
	struct nvme_subsystem *subsys = head->subsys;
	int serial_len = sizeof(subsys->serial);
	int model_len = sizeof(subsys->model);

	if (!FUNC3(&ids->uuid))
		return FUNC2(buf, "uuid.%pU\n", ids->uuid);

	if (FUNC1(ids->nguid, 0, sizeof(ids->nguid)))
		return FUNC2(buf, "eui.%16phN\n", ids->nguid);

	if (FUNC1(ids->eui64, 0, sizeof(ids->eui64)))
		return FUNC2(buf, "eui.%8phN\n", ids->eui64);

	while (serial_len > 0 && (subsys->serial[serial_len - 1] == ' ' ||
				  subsys->serial[serial_len - 1] == '\0'))
		serial_len--;
	while (model_len > 0 && (subsys->model[model_len - 1] == ' ' ||
				 subsys->model[model_len - 1] == '\0'))
		model_len--;

	return FUNC2(buf, "nvme.%04x-%*phN-%*phN-%08x\n", subsys->vendor_id,
		serial_len, subsys->serial, model_len, subsys->model,
		head->ns_id);
}