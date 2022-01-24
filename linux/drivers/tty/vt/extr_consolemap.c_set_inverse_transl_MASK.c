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
struct vc_data {int dummy; } ;
struct uni_pagedir {unsigned char** inverse_translations; } ;

/* Variables and functions */
 int E_TABSZ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_GLYPH ; 
 int FUNC0 (struct vc_data*,unsigned short) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 unsigned short** translations ; 

__attribute__((used)) static void FUNC3(struct vc_data *conp, struct uni_pagedir *p, int i)
{
	int j, glyph;
	unsigned short *t = translations[i];
	unsigned char *q;
	
	if (!p) return;
	q = p->inverse_translations[i];

	if (!q) {
		q = p->inverse_translations[i] = FUNC1(MAX_GLYPH, GFP_KERNEL);
		if (!q) return;
	}
	FUNC2(q, 0, MAX_GLYPH);

	for (j = 0; j < E_TABSZ; j++) {
		glyph = FUNC0(conp, t[j]);
		if (glyph >= 0 && glyph < MAX_GLYPH && q[glyph] < 32) {
			/* prefer '-' above SHY etc. */
		  	q[glyph] = j;
		}
	}
}