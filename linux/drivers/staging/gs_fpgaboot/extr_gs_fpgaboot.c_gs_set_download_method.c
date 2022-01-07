
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpgaimage {int dmethod; } ;


 int m_systemmap ;
 int pr_info (char*) ;

__attribute__((used)) static int gs_set_download_method(struct fpgaimage *fimage)
{
 pr_info("set program method\n");

 fimage->dmethod = m_systemmap;

 pr_info("systemmap program method\n");

 return 0;
}
