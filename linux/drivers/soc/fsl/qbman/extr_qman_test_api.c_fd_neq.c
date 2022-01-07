
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_fd {scalar_t__ cfg; scalar_t__ cmd; } ;


 scalar_t__ qm_fd_addr_get64 (struct qm_fd const*) ;
 scalar_t__ qm_fd_get_format (struct qm_fd const*) ;

__attribute__((used)) static bool fd_neq(const struct qm_fd *a, const struct qm_fd *b)
{
 bool neq = qm_fd_addr_get64(a) != qm_fd_addr_get64(b);

 neq |= qm_fd_get_format(a) != qm_fd_get_format(b);
 neq |= a->cfg != b->cfg;
 neq |= a->cmd != b->cmd;

 return neq;
}
