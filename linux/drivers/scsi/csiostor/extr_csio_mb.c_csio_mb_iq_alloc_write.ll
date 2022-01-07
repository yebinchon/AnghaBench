; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_iq_alloc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_iq_alloc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i32 }
%struct.csio_iq_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_iq_alloc_write(%struct.csio_hw* %0, %struct.csio_mb* %1, i8* %2, i32 %3, %struct.csio_iq_params* %4, void (%struct.csio_hw*, %struct.csio_mb*)* %5) #0 {
  %7 = alloca %struct.csio_hw*, align 8
  %8 = alloca %struct.csio_mb*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.csio_iq_params*, align 8
  %12 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %7, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.csio_iq_params* %4, %struct.csio_iq_params** %11, align 8
  store void (%struct.csio_hw*, %struct.csio_mb*)* %5, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %13 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.csio_iq_params*, %struct.csio_iq_params** %11, align 8
  %18 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %19 = call i32 @csio_mb_iq_alloc(%struct.csio_hw* %13, %struct.csio_mb* %14, i8* %15, i32 %16, %struct.csio_iq_params* %17, void (%struct.csio_hw*, %struct.csio_mb*)* %18)
  %20 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %21 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.csio_iq_params*, %struct.csio_iq_params** %11, align 8
  %25 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %26 = call i32 @csio_mb_iq_write(%struct.csio_hw* %20, %struct.csio_mb* %21, i8* %22, i32 %23, i32 1, %struct.csio_iq_params* %24, void (%struct.csio_hw*, %struct.csio_mb*)* %25)
  ret void
}

declare dso_local i32 @csio_mb_iq_alloc(%struct.csio_hw*, %struct.csio_mb*, i8*, i32, %struct.csio_iq_params*, void (%struct.csio_hw*, %struct.csio_mb*)*) #1

declare dso_local i32 @csio_mb_iq_write(%struct.csio_hw*, %struct.csio_mb*, i8*, i32, i32, %struct.csio_iq_params*, void (%struct.csio_hw*, %struct.csio_mb*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
