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
typedef  int u16 ;
struct isp1362_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCDIRADDR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  HCDMACFG ; 
 int /*<<< orphan*/  HCDMACFG_CTR_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct isp1362_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp1362_hcd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct isp1362_hcd *isp1362_hcd, u16 offset, u16 len)
{
	len = (len + 1) & ~1;

	FUNC2(isp1362_hcd, HCDMACFG, HCDMACFG_CTR_ENABLE);
	FUNC3(isp1362_hcd, HCDIRADDR,
			    FUNC0(offset) | FUNC1(len));
}