; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_fw_update_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_fw_update_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.version_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CCGX_RAB_DEVICE_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"read device mode failed\0A\00", align 1
@CCGX_RAB_READ_ALL_VER = common dso_local global i32 0, align 4
@FW1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"secondary fw is not flashed\0A\00", align 1
@SECONDARY_BL = common dso_local global i32 0, align 4
@secondary_fw_min_ver = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"secondary fw version is too low (< %d)\0A\00", align 1
@SECONDARY = common dso_local global i32 0, align 4
@FW2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"primary fw is not flashed\0A\00", align 1
@PRIMARY = common dso_local global i64 0, align 8
@ccg_fw_names = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"found primary fw with later version\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"secondary and primary fw are the latest\0A\00", align 1
@FLASH_NOT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*, i32*)* @ccg_fw_update_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_fw_update_needed(%struct.ucsi_ccg* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucsi_ccg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.version_info], align 16
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %10 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %13 = load i32, i32* @CCGX_RAB_DEVICE_MODE, align 4
  %14 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %15 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %14, i32 0, i32 0
  %16 = call i32 @ccg_read(%struct.ucsi_ccg* %12, i32 %13, i32* %15, i32 4)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %97

23:                                               ; preds = %2
  %24 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %25 = load i32, i32* @CCGX_RAB_READ_ALL_VER, align 4
  %26 = getelementptr inbounds [3 x %struct.version_info], [3 x %struct.version_info]* %8, i64 0, i64 0
  %27 = bitcast %struct.version_info* %26 to i32*
  %28 = call i32 @ccg_read(%struct.ucsi_ccg* %24, i32 %25, i32* %27, i32 24)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %97

35:                                               ; preds = %23
  %36 = load i64, i64* @FW1, align 8
  %37 = getelementptr inbounds [3 x %struct.version_info], [3 x %struct.version_info]* %8, i64 0, i64 %36
  %38 = call i64 @memcmp(%struct.version_info* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @SECONDARY_BL, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %96

45:                                               ; preds = %35
  %46 = load i64, i64* @FW1, align 8
  %47 = getelementptr inbounds [3 x %struct.version_info], [3 x %struct.version_info]* %8, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.version_info, %struct.version_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = load i64, i64* @secondary_fw_min_ver, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load i64, i64* @secondary_fw_min_ver, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @SECONDARY, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %95

60:                                               ; preds = %45
  %61 = load i64, i64* @FW2, align 8
  %62 = getelementptr inbounds [3 x %struct.version_info], [3 x %struct.version_info]* %8, i64 0, i64 %61
  %63 = call i64 @memcmp(%struct.version_info* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i64, i64* @PRIMARY, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %94

71:                                               ; preds = %60
  %72 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %73 = load i32*, i32** @ccg_fw_names, align 8
  %74 = load i64, i64* @PRIMARY, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* @FW2, align 8
  %78 = getelementptr inbounds [3 x %struct.version_info], [3 x %struct.version_info]* %8, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.version_info, %struct.version_info* %78, i32 0, i32 0
  %80 = call i64 @ccg_check_fw_version(%struct.ucsi_ccg* %72, i32 %76, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i64, i64* @PRIMARY, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  br label %93

88:                                               ; preds = %71
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* @FLASH_NOT_NEEDED, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %54
  br label %96

96:                                               ; preds = %95, %40
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %31, %19
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @ccg_read(%struct.ucsi_ccg*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @memcmp(%struct.version_info*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ccg_check_fw_version(%struct.ucsi_ccg*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
