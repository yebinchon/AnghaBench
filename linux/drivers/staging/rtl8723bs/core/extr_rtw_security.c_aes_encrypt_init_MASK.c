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
typedef  int /*<<< orphan*/  u8 ;
typedef  void u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AES_PRIV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(u8 *key, size_t len)
{
	u32 *rk;
	if (len != 16)
		return NULL;
	rk = FUNC1(AES_PRIV_SIZE);
	if (rk == NULL)
		return NULL;
	FUNC0(rk, key);
	return rk;
}