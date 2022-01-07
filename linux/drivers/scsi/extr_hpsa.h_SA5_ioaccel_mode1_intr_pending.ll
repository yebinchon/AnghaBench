; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.h_SA5_ioaccel_mode1_intr_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.h_SA5_ioaccel_mode1_intr_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i64 }

@SA5_INTR_STATUS = common dso_local global i64 0, align 8
@SA5_IOACCEL_MODE1_INTR_STATUS_CMP_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*)* @SA5_ioaccel_mode1_intr_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SA5_ioaccel_mode1_intr_pending(%struct.ctlr_info* %0) #0 {
  %2 = alloca %struct.ctlr_info*, align 8
  %3 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %2, align 8
  %4 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %5 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SA5_INTR_STATUS, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @readl(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @SA5_IOACCEL_MODE1_INTR_STATUS_CMP_BIT, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  ret i32 %15
}

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
