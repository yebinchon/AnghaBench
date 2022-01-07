; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_check_fwconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_check_fwconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }
%struct.csio_mb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_CF = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Issue of FW_PARAMS_CMD(read) failed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"FW_PARAMS_CMD(read) failed with ret:0x%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32*)* @csio_hw_check_fwconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_check_fwconfig(%struct.csio_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.csio_mb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %10 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.csio_mb* @mempool_alloc(i32 %11, i32 %12)
  store %struct.csio_mb* %13, %struct.csio_mb** %6, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %15 = icmp ne %struct.csio_mb* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %18 = load i32, i32* @n_err_nomem, align 4
  %19 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %17, i32 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %83

22:                                               ; preds = %2
  %23 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %24 = call i32 @FW_PARAMS_MNEM_V(i32 %23)
  %25 = load i32, i32* @FW_PARAMS_PARAM_DEV_CF, align 4
  %26 = call i32 @FW_PARAMS_PARAM_X_V(i32 %25)
  %27 = or i32 %24, %26
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %30 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %31 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %32 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %38 = call i32 @csio_mb_params(%struct.csio_hw* %29, %struct.csio_mb* %30, i32 %31, i32 %34, i32 0, i32 %36, i32* %37, i32* null, i32 0, i32* null)
  %39 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %40 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %41 = call i64 @csio_mb_issue(%struct.csio_hw* %39, %struct.csio_mb* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %22
  %44 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %45 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %47 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %48 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mempool_free(%struct.csio_mb* %46, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %83

53:                                               ; preds = %22
  %54 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %55 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %56 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %59 = call i32 @csio_mb_process_read_params_rsp(%struct.csio_hw* %54, %struct.csio_mb* %55, i32* %7, i32 %57, i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FW_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %53
  %64 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %68 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %69 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mempool_free(%struct.csio_mb* %67, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %83

74:                                               ; preds = %53
  %75 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %76 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %77 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mempool_free(%struct.csio_mb* %75, i32 %78)
  %80 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %63, %43, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @csio_mb_params(%struct.csio_hw*, %struct.csio_mb*, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_mb_process_read_params_rsp(%struct.csio_hw*, %struct.csio_mb*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
