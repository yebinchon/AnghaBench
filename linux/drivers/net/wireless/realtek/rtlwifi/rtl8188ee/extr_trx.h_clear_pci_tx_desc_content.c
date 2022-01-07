
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int TX_DESC_NEXT_DESC_OFFSET ;
 int memset (int *,int ,int) ;

__attribute__((used)) static inline void clear_pci_tx_desc_content(__le32 *__pdesc, int _size)
{
 if (_size > TX_DESC_NEXT_DESC_OFFSET)
  memset(__pdesc, 0, TX_DESC_NEXT_DESC_OFFSET);
 else
  memset(__pdesc, 0, _size);
}
