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
struct pci_message {int /*<<< orphan*/  type; } ;
struct hv_pcibus_device {int /*<<< orphan*/  survey_event; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;
struct completion {int dummy; } ;
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 int ENOTEMPTY ; 
 int /*<<< orphan*/  PCI_QUERY_BUS_RELATIONS ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct completion*) ; 
 struct hv_pcibus_device* FUNC1 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct pci_message*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hv_device*,struct completion*) ; 

__attribute__((used)) static int FUNC6(struct hv_device *hdev)
{
	struct hv_pcibus_device *hbus = FUNC1(hdev);
	struct pci_message message;
	struct completion comp;
	int ret;

	/* Ask the host to send along the list of child devices */
	FUNC2(&comp);
	if (FUNC0(&hbus->survey_event, NULL, &comp))
		return -ENOTEMPTY;

	FUNC3(&message, 0, sizeof(message));
	message.type = PCI_QUERY_BUS_RELATIONS;

	ret = FUNC4(hdev->channel, &message, sizeof(message),
			       0, VM_PKT_DATA_INBAND, 0);
	if (!ret)
		ret = FUNC5(hdev, &comp);

	return ret;
}