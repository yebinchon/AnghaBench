
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int hcc_params; } ;


 unsigned int HCC_MAX_PSA (int ) ;
 unsigned int roundup_pow_of_two (unsigned int) ;
 int xhci_dbg (struct xhci_hcd*,char*,unsigned int) ;

__attribute__((used)) static void xhci_calculate_streams_entries(struct xhci_hcd *xhci,
  unsigned int *num_streams, unsigned int *num_stream_ctxs)
{
 unsigned int max_streams;


 *num_stream_ctxs = roundup_pow_of_two(*num_streams);






 max_streams = HCC_MAX_PSA(xhci->hcc_params);
 if (*num_stream_ctxs > max_streams) {
  xhci_dbg(xhci, "xHCI HW only supports %u stream ctx entries.\n",
    max_streams);
  *num_stream_ctxs = max_streams;
  *num_streams = max_streams;
 }
}
