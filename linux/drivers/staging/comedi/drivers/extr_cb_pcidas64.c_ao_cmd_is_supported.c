
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {scalar_t__ layout; scalar_t__ ao_nchan; } ;


 scalar_t__ LAYOUT_4020 ;

__attribute__((used)) static inline int ao_cmd_is_supported(const struct pcidas64_board *board)
{
 return board->ao_nchan && board->layout != LAYOUT_4020;
}
