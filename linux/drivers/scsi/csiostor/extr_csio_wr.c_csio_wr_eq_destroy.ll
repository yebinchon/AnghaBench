; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_eq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_eq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }
%struct.csio_mb = type { i32 }
%struct.csio_eq_params = type { i32, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i8*, i32, void (%struct.csio_hw*, %struct.csio_mb*)*)* @csio_wr_eq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_wr_eq_destroy(%struct.csio_hw* %0, i8* %1, i32 %2, void (%struct.csio_hw*, %struct.csio_mb*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.csio_mb*, align 8
  %12 = alloca %struct.csio_eq_params, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %3, void (%struct.csio_hw*, %struct.csio_mb*)** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = call i32 @memset(%struct.csio_eq_params* %12, i32 0, i32 24)
  %14 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %15 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.csio_mb* @mempool_alloc(i32 %16, i32 %17)
  store %struct.csio_mb* %18, %struct.csio_mb** %11, align 8
  %19 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %20 = icmp ne %struct.csio_mb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %61

24:                                               ; preds = %4
  %25 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %26 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %12, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %12, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @csio_q_eqid(%struct.csio_hw* %30, i32 %31)
  %33 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %35 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %38 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %9, align 8
  %39 = call i32 @csio_mb_eq_ofld_free(%struct.csio_hw* %34, %struct.csio_mb* %35, i8* %36, i32 %37, %struct.csio_eq_params* %12, void (%struct.csio_hw*, %struct.csio_mb*)* %38)
  %40 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %41 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %42 = call i32 @csio_mb_issue(%struct.csio_hw* %40, %struct.csio_mb* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %24
  %46 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %47 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %48 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mempool_free(%struct.csio_mb* %46, i32 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %61

52:                                               ; preds = %24
  %53 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %9, align 8
  %54 = icmp ne void (%struct.csio_hw*, %struct.csio_mb*)* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %61

56:                                               ; preds = %52
  %57 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %58 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @csio_wr_eq_destroy_rsp(%struct.csio_hw* %57, %struct.csio_mb* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %55, %45, %21
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.csio_eq_params*, i32, i32) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @csio_q_eqid(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mb_eq_ofld_free(%struct.csio_hw*, %struct.csio_mb*, i8*, i32, %struct.csio_eq_params*, void (%struct.csio_hw*, %struct.csio_mb*)*) #1

declare dso_local i32 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_wr_eq_destroy_rsp(%struct.csio_hw*, %struct.csio_mb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
