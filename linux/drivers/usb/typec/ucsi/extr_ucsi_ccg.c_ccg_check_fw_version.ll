; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_check_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_check_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { %struct.device* }
%struct.device = type { i32 }
%struct.version_format = type { i32, i32, i32 }
%struct.firmware = type { i32, i32 }
%struct.fw_config_table = type { float, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"error: Failed to open cyacd file %s\0A\00", align 1
@FW_CFG_TABLE_SIG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"not a signed image\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*, i8*, %struct.version_format*)* @ccg_check_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_check_fw_version(%struct.ucsi_ccg* %0, i8* %1, %struct.version_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucsi_ccg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.version_format*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.fw_config_table, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.version_format* %2, %struct.version_format** %7, align 8
  store %struct.firmware* null, %struct.firmware** %8, align 8
  %14 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %5, align 8
  %15 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.device*, %struct.device** %9, align 8
  %19 = call i64 @request_firmware(%struct.firmware** %8, i8* %17, %struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 0, i32* %4, align 4
  br label %101

25:                                               ; preds = %3
  %26 = load %struct.firmware*, %struct.firmware** %8, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* @FW_CFG_TABLE_SIG_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 16, %31
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %97

35:                                               ; preds = %25
  %36 = bitcast %struct.fw_config_table* %10 to i32*
  %37 = load %struct.firmware*, %struct.firmware** %8, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.firmware*, %struct.firmware** %8, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 16
  %46 = load i32, i32* @FW_CFG_TABLE_SIG_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(i32* %36, i32 %49, i32 16)
  %51 = getelementptr inbounds %struct.fw_config_table, %struct.fw_config_table* %10, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = fcmp une float %52, 0x41D510D5E0000000
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load %struct.device*, %struct.device** %9, align 8
  %56 = call i32 @dev_info(%struct.device* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %97

57:                                               ; preds = %35
  %58 = load %struct.version_format*, %struct.version_format** %7, align 8
  %59 = getelementptr inbounds %struct.version_format, %struct.version_format* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = load %struct.version_format*, %struct.version_format** %7, align 8
  %63 = getelementptr inbounds %struct.version_format, %struct.version_format* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @CCG_VERSION_PATCH(i32 %64)
  %66 = or i32 %61, %65
  %67 = load %struct.version_format*, %struct.version_format** %7, align 8
  %68 = getelementptr inbounds %struct.version_format, %struct.version_format* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CCG_VERSION(i32 %69)
  %71 = or i32 %66, %70
  store i32 %71, i32* %11, align 4
  %72 = getelementptr inbounds %struct.fw_config_table, %struct.fw_config_table* %10, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = getelementptr inbounds %struct.fw_config_table, %struct.fw_config_table* %10, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CCG_VERSION_PATCH(i32 %78)
  %80 = or i32 %75, %79
  %81 = getelementptr inbounds %struct.fw_config_table, %struct.fw_config_table* %10, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CCG_VERSION(i32 %83)
  %85 = or i32 %80, %84
  store i32 %85, i32* %12, align 4
  %86 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %5, align 8
  %87 = load %struct.version_format*, %struct.version_format** %7, align 8
  %88 = call i32 @ccg_check_vendor_version(%struct.ucsi_ccg* %86, %struct.version_format* %87, %struct.fw_config_table* %10)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %57
  br label %97

91:                                               ; preds = %57
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1, i32* %13, align 4
  br label %96

96:                                               ; preds = %95, %91
  br label %97

97:                                               ; preds = %96, %90, %54, %34
  %98 = load %struct.firmware*, %struct.firmware** %8, align 8
  %99 = call i32 @release_firmware(%struct.firmware* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %21
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @CCG_VERSION_PATCH(i32) #1

declare dso_local i32 @CCG_VERSION(i32) #1

declare dso_local i32 @ccg_check_vendor_version(%struct.ucsi_ccg*, %struct.version_format*, %struct.fw_config_table*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
