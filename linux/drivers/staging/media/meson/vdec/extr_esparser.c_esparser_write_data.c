
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amvdec_core {int dummy; } ;
typedef int dma_addr_t ;


 int ES_PACK_SIZE_BIT ;
 int ES_PARSER_START ;
 int ES_SEARCH ;
 int ES_WRITE ;
 int FETCH_ENDIAN_BIT ;
 int HZ ;
 int PARSER_CONTROL ;
 int PARSER_FETCH_ADDR ;
 int PARSER_FETCH_CMD ;
 int PFIFO_RD_PTR ;
 int PFIFO_WR_PTR ;
 int SEARCH_PATTERN_LEN ;
 int amvdec_write_parser (struct amvdec_core*,int ,int) ;
 scalar_t__ search_done ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int) ;
 int wq ;

__attribute__((used)) static int
esparser_write_data(struct amvdec_core *core, dma_addr_t addr, u32 size)
{
 amvdec_write_parser(core, PFIFO_RD_PTR, 0);
 amvdec_write_parser(core, PFIFO_WR_PTR, 0);
 amvdec_write_parser(core, PARSER_CONTROL,
       ES_WRITE |
       ES_PARSER_START |
       ES_SEARCH |
       (size << ES_PACK_SIZE_BIT));

 amvdec_write_parser(core, PARSER_FETCH_ADDR, addr);
 amvdec_write_parser(core, PARSER_FETCH_CMD,
       (7 << FETCH_ENDIAN_BIT) |
       (size + SEARCH_PATTERN_LEN));

 search_done = 0;
 return wait_event_interruptible_timeout(wq, search_done, (HZ / 5));
}
