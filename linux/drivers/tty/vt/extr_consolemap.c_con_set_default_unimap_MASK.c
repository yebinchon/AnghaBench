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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {struct uni_pagedir** vc_uni_pagedir_loc; } ;
struct uni_pagedir {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int FUNC0 (struct vc_data*) ; 
 int FUNC1 (struct uni_pagedir*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uni_pagedir*) ; 
 scalar_t__ FUNC3 (struct vc_data*,struct uni_pagedir*) ; 
 struct uni_pagedir* dflt ; 
 int* dfont_unicount ; 
 int /*<<< orphan*/ * dfont_unitable ; 
 int /*<<< orphan*/  FUNC4 (struct uni_pagedir*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,struct uni_pagedir*) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*,struct uni_pagedir*,int) ; 

int FUNC7(struct vc_data *vc)
{
	int i, j, err = 0, err1;
	u16 *q;
	struct uni_pagedir *p;

	if (dflt) {
		p = *vc->vc_uni_pagedir_loc;
		if (p == dflt)
			return 0;

		dflt->refcount++;
		*vc->vc_uni_pagedir_loc = dflt;
		if (p && !--p->refcount) {
			FUNC2(p);
			FUNC4(p);
		}
		return 0;
	}
	
	/* The default font is always 256 characters */

	err = FUNC0(vc);
	if (err)
		return err;
    
	p = *vc->vc_uni_pagedir_loc;
	q = dfont_unitable;
	
	for (i = 0; i < 256; i++)
		for (j = dfont_unicount[i]; j; j--) {
			err1 = FUNC1(p, *(q++), i);
			if (err1)
				err = err1;
		}
			
	if (FUNC3(vc, p)) {
		dflt = *vc->vc_uni_pagedir_loc;
		return err;
	}

	for (i = 0; i <= 3; i++)
		FUNC6(vc, p, i);	/* Update all inverse translations */
	FUNC5(vc, p);
	dflt = p;
	return err;
}