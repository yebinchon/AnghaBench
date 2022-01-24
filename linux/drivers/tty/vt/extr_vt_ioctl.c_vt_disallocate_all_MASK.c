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
struct vc_data {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int MAX_NR_CONSOLES ; 
 int MIN_NR_CONSOLES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vc_data* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	struct vc_data *vc[MAX_NR_CONSOLES];
	int i;

	FUNC1();
	for (i = 1; i < MAX_NR_CONSOLES; i++)
		if (!FUNC0(i))
			vc[i] = FUNC5(i);
		else
			vc[i] = NULL;
	FUNC2();

	for (i = 1; i < MAX_NR_CONSOLES; i++) {
		if (vc[i] && i >= MIN_NR_CONSOLES) {
			FUNC4(&vc[i]->port);
			FUNC3(vc[i]);
		}
	}
}