
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_qup {unsigned int n_words; unsigned int w_size; } ;



__attribute__((used)) static inline unsigned int spi_qup_len(struct spi_qup *controller)
{
 return controller->n_words * controller->w_size;
}
