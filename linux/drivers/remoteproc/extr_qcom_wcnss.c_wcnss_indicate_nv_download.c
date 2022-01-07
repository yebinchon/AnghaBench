
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_wcnss {int spare_out; } ;


 int WCNSS_SPARE_NVBIN_DLND ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void wcnss_indicate_nv_download(struct qcom_wcnss *wcnss)
{
 u32 val;


 val = readl(wcnss->spare_out);
 val |= WCNSS_SPARE_NVBIN_DLND;
 writel(val, wcnss->spare_out);
}
