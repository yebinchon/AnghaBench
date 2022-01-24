#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tag; } ;
struct viosrp_empty_iu {TYPE_2__ common; int /*<<< orphan*/  buffer; } ;
struct scsi_info {int fast_fail; int /*<<< orphan*/  dev; int /*<<< orphan*/  state; void* empty_iu_tag; void* empty_iu_id; } ;
struct mad_common {void* status; int /*<<< orphan*/  type; } ;
struct iu_entry {int dummy; } ;
struct TYPE_4__ {struct viosrp_empty_iu empty_iu; } ;
struct TYPE_6__ {TYPE_1__ mad; } ;

/* Variables and functions */
 long ADAPT_SUCCESS ; 
 int /*<<< orphan*/  CONNECTED ; 
#define  VIOSRP_ADAPTER_INFO_TYPE 131 
#define  VIOSRP_CAPABILITIES_TYPE 130 
#define  VIOSRP_EMPTY_IU_TYPE 129 
#define  VIOSRP_ENABLE_FAST_FAIL 128 
 int /*<<< orphan*/  VIOSRP_MAD_FAILED ; 
 int /*<<< orphan*/  VIOSRP_MAD_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VIOSRP_MAD_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 long FUNC4 (struct scsi_info*,struct iu_entry*) ; 
 long FUNC5 (struct scsi_info*,struct iu_entry*) ; 
 TYPE_3__* FUNC6 (struct iu_entry*) ; 

__attribute__((used)) static long FUNC7(struct scsi_info *vscsi, struct iu_entry *iue)
{
	struct mad_common *mad = (struct mad_common *)&FUNC6(iue)->mad;
	struct viosrp_empty_iu *empty;
	long rc = ADAPT_SUCCESS;

	switch (FUNC0(mad->type)) {
	case VIOSRP_EMPTY_IU_TYPE:
		empty = &FUNC6(iue)->mad.empty_iu;
		vscsi->empty_iu_id = FUNC1(empty->buffer);
		vscsi->empty_iu_tag = FUNC1(empty->common.tag);
		mad->status = FUNC2(VIOSRP_MAD_SUCCESS);
		break;
	case VIOSRP_ADAPTER_INFO_TYPE:
		rc = FUNC4(vscsi, iue);
		break;
	case VIOSRP_CAPABILITIES_TYPE:
		rc = FUNC5(vscsi, iue);
		break;
	case VIOSRP_ENABLE_FAST_FAIL:
		if (vscsi->state == CONNECTED) {
			vscsi->fast_fail = true;
			mad->status = FUNC2(VIOSRP_MAD_SUCCESS);
		} else {
			FUNC3(&vscsi->dev, "fast fail mad sent after login\n");
			mad->status = FUNC2(VIOSRP_MAD_FAILED);
		}
		break;
	default:
		mad->status = FUNC2(VIOSRP_MAD_NOT_SUPPORTED);
		break;
	}

	return rc;
}