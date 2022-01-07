; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_eq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_eq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }
%struct.csio_mb = type { i32 }
%struct.csio_eq_params = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EQ command out of memory!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@X_HOSTFCMODE_STATUS_PAGE = common dso_local global i32 0, align 4
@X_FETCHBURSTMIN_64B = common dso_local global i32 0, align 4
@X_FETCHBURSTMAX_512B = common dso_local global i32 0, align 4
@CSIO_QCREDIT_SZ = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Issue of EQ OFLD cmd failed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_wr_eq_create(%struct.csio_hw* %0, i8* %1, i32 %2, i32 %3, i32 %4, void (%struct.csio_hw*, %struct.csio_mb*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.csio_hw*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %14 = alloca %struct.csio_mb*, align 8
  %15 = alloca %struct.csio_eq_params, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %5, void (%struct.csio_hw*, %struct.csio_mb*)** %13, align 8
  %16 = call i32 @memset(%struct.csio_eq_params* %15, i32 0, i32 56)
  %17 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %18 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.csio_mb* @mempool_alloc(i32 %19, i32 %20)
  store %struct.csio_mb* %21, %struct.csio_mb** %14, align 8
  %22 = load %struct.csio_mb*, %struct.csio_mb** %14, align 8
  %23 = icmp ne %struct.csio_mb* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %6
  %25 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %26 = call i32 @csio_err(%struct.csio_hw* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %88

29:                                               ; preds = %6
  %30 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %31 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 10
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @X_HOSTFCMODE_STATUS_PAGE, align 4
  %37 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @csio_q_iqid(%struct.csio_hw* %38, i32 %39)
  %41 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 7
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @X_FETCHBURSTMIN_64B, align 4
  %43 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @X_FETCHBURSTMAX_512B, align 4
  %45 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @csio_q_size(%struct.csio_hw* %49, i32 %50)
  %52 = load i32, i32* @CSIO_QCREDIT_SZ, align 4
  %53 = sdiv i32 %51, %52
  %54 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @csio_q_pstart(%struct.csio_hw* %55, i32 %56)
  %58 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %15, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %60 = load %struct.csio_mb*, %struct.csio_mb** %14, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %63 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %13, align 8
  %64 = call i32 @csio_mb_eq_ofld_alloc_write(%struct.csio_hw* %59, %struct.csio_mb* %60, i8* %61, i32 %62, %struct.csio_eq_params* %15, void (%struct.csio_hw*, %struct.csio_mb*)* %63)
  %65 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %66 = load %struct.csio_mb*, %struct.csio_mb** %14, align 8
  %67 = call i64 @csio_mb_issue(%struct.csio_hw* %65, %struct.csio_mb* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %29
  %70 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %71 = call i32 @csio_err(%struct.csio_hw* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.csio_mb*, %struct.csio_mb** %14, align 8
  %73 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %74 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mempool_free(%struct.csio_mb* %72, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %88

79:                                               ; preds = %29
  %80 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %13, align 8
  %81 = icmp ne void (%struct.csio_hw*, %struct.csio_mb*)* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %88

83:                                               ; preds = %79
  %84 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %85 = load %struct.csio_mb*, %struct.csio_mb** %14, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @csio_wr_eq_cfg_rsp(%struct.csio_hw* %84, %struct.csio_mb* %85, i32 %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %83, %82, %69, %24
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.csio_eq_params*, i32, i32) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*) #1

declare dso_local i32 @csio_q_iqid(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_q_size(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_q_pstart(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mb_eq_ofld_alloc_write(%struct.csio_hw*, %struct.csio_mb*, i8*, i32, %struct.csio_eq_params*, void (%struct.csio_hw*, %struct.csio_mb*)*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_wr_eq_cfg_rsp(%struct.csio_hw*, %struct.csio_mb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
