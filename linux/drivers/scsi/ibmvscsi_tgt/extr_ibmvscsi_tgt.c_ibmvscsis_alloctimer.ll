; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_alloctimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_alloctimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { %struct.timer_cb }
%struct.timer_cb = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@ibmvscsis_service_wait_q = common dso_local global i32 0, align 4
@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*)* @ibmvscsis_alloctimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_alloctimer(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca %struct.timer_cb*, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  %4 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %4, i32 0, i32 0
  store %struct.timer_cb* %5, %struct.timer_cb** %3, align 8
  %6 = load %struct.timer_cb*, %struct.timer_cb** %3, align 8
  %7 = getelementptr inbounds %struct.timer_cb, %struct.timer_cb* %6, i32 0, i32 2
  %8 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %9 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %10 = call i32 @hrtimer_init(%struct.TYPE_2__* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @ibmvscsis_service_wait_q, align 4
  %12 = load %struct.timer_cb*, %struct.timer_cb** %3, align 8
  %13 = getelementptr inbounds %struct.timer_cb, %struct.timer_cb* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.timer_cb*, %struct.timer_cb** %3, align 8
  %16 = getelementptr inbounds %struct.timer_cb, %struct.timer_cb* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.timer_cb*, %struct.timer_cb** %3, align 8
  %18 = getelementptr inbounds %struct.timer_cb, %struct.timer_cb* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* @ADAPT_SUCCESS, align 8
  ret i64 %19
}

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
