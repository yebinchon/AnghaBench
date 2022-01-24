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
 unsigned char* FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char*) ; 
 int FUNC3 (unsigned char*) ; 

__attribute__((used)) static inline unsigned char *FUNC4(unsigned char *pframe)
{
	unsigned char	*da;
	unsigned int	to_fr_ds = (FUNC3(pframe) << 1) | FUNC2(pframe);

	switch (to_fr_ds) {
	case 0x00:	/* ToDs=0, FromDs=0 */
		da = FUNC0(pframe);
		break;
	case 0x01:	/* ToDs=0, FromDs=1 */
		da = FUNC0(pframe);
		break;
	case 0x02:	/* ToDs=1, FromDs=0 */
		da = FUNC1(pframe);
		break;
	default:	/* ToDs=1, FromDs=1 */
		da = FUNC1(pframe);
		break;
	}
	return da;
}