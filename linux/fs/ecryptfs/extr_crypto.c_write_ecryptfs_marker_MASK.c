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
typedef  int u32 ;

/* Variables and functions */
 int MAGIC_ECRYPTFS_MARKER ; 
 int MAGIC_ECRYPTFS_MARKER_SIZE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void FUNC2(char *page_virt, size_t *written)
{
	u32 m_1, m_2;

	FUNC0(&m_1, (MAGIC_ECRYPTFS_MARKER_SIZE_BYTES / 2));
	m_2 = (m_1 ^ MAGIC_ECRYPTFS_MARKER);
	FUNC1(m_1, page_virt);
	page_virt += (MAGIC_ECRYPTFS_MARKER_SIZE_BYTES / 2);
	FUNC1(m_2, page_virt);
	(*written) = MAGIC_ECRYPTFS_MARKER_SIZE_BYTES;
}