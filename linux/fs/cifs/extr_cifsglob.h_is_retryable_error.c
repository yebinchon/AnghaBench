
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 scalar_t__ is_interrupt_error (int) ;

__attribute__((used)) static inline bool is_retryable_error(int error)
{
 if (is_interrupt_error(error) || error == -EAGAIN)
  return 1;
 return 0;
}
