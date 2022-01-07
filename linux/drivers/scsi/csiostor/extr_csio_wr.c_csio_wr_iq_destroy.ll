; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_iq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_iq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }
%struct.csio_mb = type { i32 }
%struct.csio_iq_params = type { i32, i32, i32, i32, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_IQ_TYPE_FL_INT_CAP = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i8*, i32, void (%struct.csio_hw*, %struct.csio_mb*)*)* @csio_wr_iq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_wr_iq_destroy(%struct.csio_hw* %0, i8* %1, i32 %2, void (%struct.csio_hw*, %struct.csio_mb*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.csio_mb*, align 8
  %12 = alloca %struct.csio_iq_params, align 8
  %13 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %3, void (%struct.csio_hw*, %struct.csio_mb*)** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 @memset(%struct.csio_iq_params* %12, i32 0, i32 32)
  %15 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %16 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.csio_mb* @mempool_alloc(i32 %17, i32 %18)
  store %struct.csio_mb* %19, %struct.csio_mb** %11, align 8
  %20 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %21 = icmp ne %struct.csio_mb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %78

25:                                               ; preds = %4
  %26 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %27 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %12, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %12, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @csio_q_iqid(%struct.csio_hw* %31, i32 %32)
  %34 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %12, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @FW_IQ_TYPE_FL_INT_CAP, align 4
  %36 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @csio_q_iq_flq_idx(%struct.csio_hw* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @csio_q_flid(%struct.csio_hw* %43, i32 %44)
  %46 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %12, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  br label %49

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %12, i32 0, i32 0
  store i32 65535, i32* %48, align 8
  br label %49

49:                                               ; preds = %47, %42
  %50 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %12, i32 0, i32 1
  store i32 65535, i32* %50, align 4
  %51 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %52 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %55 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %9, align 8
  %56 = call i32 @csio_mb_iq_free(%struct.csio_hw* %51, %struct.csio_mb* %52, i8* %53, i32 %54, %struct.csio_iq_params* %12, void (%struct.csio_hw*, %struct.csio_mb*)* %55)
  %57 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %58 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %59 = call i32 @csio_mb_issue(%struct.csio_hw* %57, %struct.csio_mb* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %49
  %63 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %64 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %65 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mempool_free(%struct.csio_mb* %63, i32 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %78

69:                                               ; preds = %49
  %70 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %9, align 8
  %71 = icmp ne void (%struct.csio_hw*, %struct.csio_mb*)* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %78

73:                                               ; preds = %69
  %74 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %75 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @csio_wr_iq_destroy_rsp(%struct.csio_hw* %74, %struct.csio_mb* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %72, %62, %22
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @memset(%struct.csio_iq_params*, i32, i32) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @csio_q_iqid(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_q_iq_flq_idx(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_q_flid(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mb_iq_free(%struct.csio_hw*, %struct.csio_mb*, i8*, i32, %struct.csio_iq_params*, void (%struct.csio_hw*, %struct.csio_mb*)*) #1

declare dso_local i32 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_wr_iq_destroy_rsp(%struct.csio_hw*, %struct.csio_mb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
