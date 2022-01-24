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

/* Variables and functions */
 int inverse ; 
 void* mtrr ; 
 int pmi_setpal ; 
 void* FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char**,char*) ; 
 void* vram_remap ; 
 void* vram_total ; 
 int ypan ; 

__attribute__((used)) static int FUNC4(char *options)
{
	char *this_opt;
	
	if (!options || !*options)
		return 0;
	
	while ((this_opt = FUNC3(&options, ",")) != NULL) {
		if (!*this_opt) continue;
		
		if (! FUNC1(this_opt, "inverse"))
			inverse=1;
		else if (! FUNC1(this_opt, "redraw"))
			ypan=0;
		else if (! FUNC1(this_opt, "ypan"))
			ypan=1;
		else if (! FUNC1(this_opt, "ywrap"))
			ypan=2;
		else if (! FUNC1(this_opt, "vgapal"))
			pmi_setpal=0;
		else if (! FUNC1(this_opt, "pmipal"))
			pmi_setpal=1;
		else if (! FUNC2(this_opt, "mtrr:", 5))
			mtrr = FUNC0(this_opt+5, NULL, 0);
		else if (! FUNC1(this_opt, "nomtrr"))
			mtrr=0;
		else if (! FUNC2(this_opt, "vtotal:", 7))
			vram_total = FUNC0(this_opt+7, NULL, 0);
		else if (! FUNC2(this_opt, "vremap:", 7))
			vram_remap = FUNC0(this_opt+7, NULL, 0);
	}
	return 0;
}