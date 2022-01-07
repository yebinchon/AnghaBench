; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_config_device_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_config_device_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i64, i32 }
%struct.csio_mb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Issue of FW_CAPS_CONFIG_CMD(r) failed!\0A\00", align 1
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"FW_CAPS_CONFIG_CMD(r) returned %d!\0A\00", align 1
@CSIO_DEV_STATE_INIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Issue of FW_CAPS_CONFIG_CMD(w) failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"FW_CAPS_CONFIG_CMD(w) returned %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_config_device_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_config_device_caps(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_mb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %10 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.csio_mb* @mempool_alloc(i32 %11, i32 %12)
  store %struct.csio_mb* %13, %struct.csio_mb** %4, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %15 = icmp ne %struct.csio_mb* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %18 = load i32, i32* @n_err_nomem, align 4
  %19 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %17, i32 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %24 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %25 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %26 = call i32 @csio_mb_caps_config(%struct.csio_hw* %23, %struct.csio_mb* %24, i32 %25, i32 0, i32 0, i32 0, i32 0, i32* null)
  %27 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %28 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %29 = call i64 @csio_mb_issue(%struct.csio_hw* %27, %struct.csio_mb* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %33 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %81

34:                                               ; preds = %22
  %35 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %36 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @FW_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %81

44:                                               ; preds = %34
  %45 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %46 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %47 = call i32 @csio_hw_validate_caps(%struct.csio_hw* %45, %struct.csio_mb* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %81

51:                                               ; preds = %44
  %52 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %53 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CSIO_DEV_STATE_INIT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %81

58:                                               ; preds = %51
  %59 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %60 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %61 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %62 = call i32 @csio_mb_caps_config(%struct.csio_hw* %59, %struct.csio_mb* %60, i32 %61, i32 1, i32 1, i32 0, i32 1, i32* null)
  %63 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %64 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %65 = call i64 @csio_mb_issue(%struct.csio_hw* %63, %struct.csio_mb* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %69 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %81

70:                                               ; preds = %58
  %71 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %72 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @FW_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %81

80:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %76, %67, %57, %50, %40, %31
  %82 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %83 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %84 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mempool_free(%struct.csio_mb* %82, i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %81, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mb_caps_config(%struct.csio_hw*, %struct.csio_mb*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @csio_mb_fw_retval(%struct.csio_mb*) #1

declare dso_local i32 @csio_hw_validate_caps(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
