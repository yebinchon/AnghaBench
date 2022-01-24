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
typedef  char u16 ;
struct vt_notifier_param {char c; struct vc_data* vc; } ;
struct vc_data {int /*<<< orphan*/  vc_mode; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KD_TEXT ; 
 int NOTIFY_OK ; 
#define  VT_ALLOCATE 131 
#define  VT_DEALLOCATE 130 
#define  VT_UPDATE 129 
#define  VT_WRITE 128 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *nb,
			    unsigned long code, void *_param)
{
	struct vt_notifier_param *param = _param;
	struct vc_data *vc = param->vc;

	switch (code) {
	case VT_ALLOCATE:
		if (vc->vc_mode == KD_TEXT)
			FUNC0(vc, GFP_ATOMIC);
		break;
	case VT_DEALLOCATE:
		FUNC4(vc);
		break;
	case VT_WRITE:
		if (param->c == '\b') {
			FUNC1(vc);
		} else {
			u16 d = param->c;

			FUNC3(vc, &d, 1);
		}
		break;
	case VT_UPDATE:
		FUNC2(vc);
		break;
	}
	return NOTIFY_OK;
}