
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pciserial_board {scalar_t__ num_ports; scalar_t__ base_baud; scalar_t__ uart_offset; scalar_t__ reg_shift; scalar_t__ first_offset; } ;



__attribute__((used)) static inline int
serial_pci_matches(const struct pciserial_board *board,
     const struct pciserial_board *guessed)
{
 return
     board->num_ports == guessed->num_ports &&
     board->base_baud == guessed->base_baud &&
     board->uart_offset == guessed->uart_offset &&
     board->reg_shift == guessed->reg_shift &&
     board->first_offset == guessed->first_offset;
}
