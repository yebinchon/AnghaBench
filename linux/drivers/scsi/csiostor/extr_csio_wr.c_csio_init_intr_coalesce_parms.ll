; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_init_intr_coalesce_parms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_init_intr_coalesce_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_wrm = type { %struct.csio_sge }
%struct.csio_sge = type { i32 }

@csio_intr_coalesce_cnt = common dso_local global i64 0, align 8
@csio_sge_thresh_reg = common dso_local global i64 0, align 8
@X_TIMERREG_RESTART_COUNTER = common dso_local global i32 0, align 4
@csio_sge_timer_reg = common dso_local global i32 0, align 4
@csio_intr_coalesce_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_init_intr_coalesce_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_init_intr_coalesce_parms(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca %struct.csio_wrm*, align 8
  %4 = alloca %struct.csio_sge*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %5 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %6 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %5)
  store %struct.csio_wrm* %6, %struct.csio_wrm** %3, align 8
  %7 = load %struct.csio_wrm*, %struct.csio_wrm** %3, align 8
  %8 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %7, i32 0, i32 0
  store %struct.csio_sge* %8, %struct.csio_sge** %4, align 8
  %9 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %10 = load i64, i64* @csio_intr_coalesce_cnt, align 8
  %11 = call i64 @csio_closest_thresh(%struct.csio_sge* %9, i64 %10)
  store i64 %11, i64* @csio_sge_thresh_reg, align 8
  %12 = load i64, i64* @csio_intr_coalesce_cnt, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  store i64 0, i64* @csio_sge_thresh_reg, align 8
  %15 = load i32, i32* @X_TIMERREG_RESTART_COUNTER, align 4
  store i32 %15, i32* @csio_sge_timer_reg, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %18 = load i32, i32* @csio_intr_coalesce_time, align 4
  %19 = call i32 @csio_closest_timer(%struct.csio_sge* %17, i32 %18)
  store i32 %19, i32* @csio_sge_timer_reg, align 4
  br label %20

20:                                               ; preds = %16, %14
  ret void
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i64 @csio_closest_thresh(%struct.csio_sge*, i64) #1

declare dso_local i32 @csio_closest_timer(%struct.csio_sge*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
