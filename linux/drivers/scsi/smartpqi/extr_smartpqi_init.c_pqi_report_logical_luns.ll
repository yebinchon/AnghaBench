; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_report_logical_luns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_report_logical_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }

@CISS_REPORT_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, i8**)* @pqi_report_logical_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_report_logical_luns(%struct.pqi_ctrl_info* %0, i8** %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i8**, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %6 = load i32, i32* @CISS_REPORT_LOG, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = call i32 @pqi_report_phys_logical_luns(%struct.pqi_ctrl_info* %5, i32 %6, i8** %7)
  ret i32 %8
}

declare dso_local i32 @pqi_report_phys_logical_luns(%struct.pqi_ctrl_info*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
