; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_chips.h_mvs_read_port_cfg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_chips.h_mvs_read_port_cfg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }

@MVS_P0_CFG_DATA = common dso_local global i32 0, align 4
@MVS_P4_CFG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, i32)* @mvs_read_port_cfg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_read_port_cfg_data(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %6 = load i32, i32* @MVS_P0_CFG_DATA, align 4
  %7 = load i32, i32* @MVS_P4_CFG_DATA, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @mvs_read_port(%struct.mvs_info* %5, i32 %6, i32 %7, i32 %8)
  ret i32 %9
}

declare dso_local i32 @mvs_read_port(%struct.mvs_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
