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
struct seq_file {int dummy; } ;
struct afs_net {int dummy; } ;

/* Variables and functions */
 struct afs_net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 

__attribute__((used)) static inline struct afs_net *FUNC2(struct seq_file *m)
{
	return FUNC0(FUNC1(m));
}