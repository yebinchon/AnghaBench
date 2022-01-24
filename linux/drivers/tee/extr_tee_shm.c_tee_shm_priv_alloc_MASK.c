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
struct tee_shm {int dummy; } ;
struct tee_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEE_SHM_MAPPED ; 
 struct tee_shm* FUNC0 (int /*<<< orphan*/ *,struct tee_device*,size_t,int /*<<< orphan*/ ) ; 

struct tee_shm *FUNC1(struct tee_device *teedev, size_t size)
{
	return FUNC0(NULL, teedev, size, TEE_SHM_MAPPED);
}