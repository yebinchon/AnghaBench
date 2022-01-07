
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int u16 ;
struct geni_se {scalar_t__ base; } ;
struct spi_geni_master {unsigned int fifo_width_bits; struct geni_se se; } ;


 unsigned int MIN_WORD_LEN ;
 scalar_t__ SE_SPI_WORD_LEN ;
 int SPI_LSB_FIRST ;
 unsigned int WORD_LEN_MSK ;
 int geni_se_config_packing (struct geni_se*,unsigned int,unsigned int,int,int,int) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void spi_setup_word_len(struct spi_geni_master *mas, u16 mode,
     unsigned int bits_per_word)
{
 unsigned int pack_words;
 bool msb_first = (mode & SPI_LSB_FIRST) ? 0 : 1;
 struct geni_se *se = &mas->se;
 u32 word_len;

 word_len = readl(se->base + SE_SPI_WORD_LEN);





 if (!(mas->fifo_width_bits % bits_per_word))
  pack_words = mas->fifo_width_bits / bits_per_word;
 else
  pack_words = 1;
 word_len &= ~WORD_LEN_MSK;
 word_len |= ((bits_per_word - MIN_WORD_LEN) & WORD_LEN_MSK);
 geni_se_config_packing(&mas->se, bits_per_word, pack_words, msb_first,
        1, 1);
 writel(word_len, se->base + SE_SPI_WORD_LEN);
}
