; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_fwevtq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_fwevtq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@CSIO_MAX_QID = common dso_local global i64 0, align 8
@n_int_stray = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@csio_process_fwevtq_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_fwevtq_handler(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %5 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %6 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %7 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @csio_q_iqid(%struct.csio_hw* %5, i32 %8)
  %10 = load i64, i64* @CSIO_MAX_QID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %14 = load i32, i32* @n_int_stray, align 4
  %15 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %13, i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %20 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %21 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @csio_process_fwevtq_entry, align 4
  %24 = call i32 @csio_wr_process_iq_idx(%struct.csio_hw* %19, i32 %22, i32 %23, i32* null)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @csio_q_iqid(%struct.csio_hw*, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_wr_process_iq_idx(%struct.csio_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
