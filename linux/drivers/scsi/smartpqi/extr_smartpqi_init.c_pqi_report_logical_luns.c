
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int CISS_REPORT_LOG ;
 int pqi_report_phys_logical_luns (struct pqi_ctrl_info*,int ,void**) ;

__attribute__((used)) static inline int pqi_report_logical_luns(struct pqi_ctrl_info *ctrl_info,
 void **buffer)
{
 return pqi_report_phys_logical_luns(ctrl_info, CISS_REPORT_LOG, buffer);
}
