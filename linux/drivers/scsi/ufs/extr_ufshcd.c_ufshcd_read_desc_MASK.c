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
typedef  int /*<<< orphan*/  u32 ;
struct ufs_hba {int dummy; } ;
typedef  enum desc_idn { ____Placeholder_desc_idn } desc_idn ;

/* Variables and functions */
 int FUNC0 (struct ufs_hba*,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct ufs_hba *hba,
				   enum desc_idn desc_id,
				   int desc_index,
				   void *buf,
				   u32 size)
{
	return FUNC0(hba, desc_id, desc_index, 0, buf, size);
}