; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mbm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mbm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_mbm = type { i32, i32, i32, %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.timer_list = type opaque
%struct.timer_list.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_mbm_init(%struct.csio_mbm* %0, %struct.csio_hw* %1, void (%struct.timer_list*)* %2) #0 {
  %4 = alloca %struct.csio_mbm*, align 8
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca void (%struct.timer_list*)*, align 8
  store %struct.csio_mbm* %0, %struct.csio_mbm** %4, align 8
  store %struct.csio_hw* %1, %struct.csio_hw** %5, align 8
  store void (%struct.timer_list*)* %2, void (%struct.timer_list*)** %6, align 8
  %7 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %8 = load %struct.csio_mbm*, %struct.csio_mbm** %4, align 8
  %9 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %8, i32 0, i32 3
  store %struct.csio_hw* %7, %struct.csio_hw** %9, align 8
  %10 = load %struct.csio_mbm*, %struct.csio_mbm** %4, align 8
  %11 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %10, i32 0, i32 2
  %12 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %6, align 8
  %13 = bitcast void (%struct.timer_list*)* %12 to void (%struct.timer_list.0*)*
  %14 = call i32 @timer_setup(i32* %11, void (%struct.timer_list.0*)* %13, i32 0)
  %15 = load %struct.csio_mbm*, %struct.csio_mbm** %4, align 8
  %16 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.csio_mbm*, %struct.csio_mbm** %4, align 8
  %19 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.csio_mbm*, %struct.csio_mbm** %4, align 8
  %22 = call i32 @csio_set_mb_intr_idx(%struct.csio_mbm* %21, i32 -1)
  ret i32 0
}

declare dso_local i32 @timer_setup(i32*, void (%struct.timer_list.0*)*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @csio_set_mb_intr_idx(%struct.csio_mbm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
