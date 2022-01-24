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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct nfc_target {int /*<<< orphan*/  idx; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 struct st21nfca_hci_info* FUNC0 (struct nfc_hci_dev*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC2(struct nfc_hci_dev *hdev,
				    struct nfc_target *target, u8 comm_mode,
				    u8 *gb, size_t gb_len)
{
	struct st21nfca_hci_info *info = FUNC0(hdev);

	info->dep_info.idx = target->idx;
	return FUNC1(hdev, gb, gb_len);
}