; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_sysfs.c_store_ctlr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_sysfs.c_store_ctlr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fcoe_ctlr_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fcoe_ctlr_device*)* }

@FCOE_MAX_MODENAME_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Cannot change mode when enabled.\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Mode change not supported by LLD.\0A\00", align 1
@ENOTSUPP = common dso_local global i64 0, align 8
@FIP_CONN_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unknown mode %s provided.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Mode changed to %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Mode change not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_ctlr_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_ctlr_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fcoe_ctlr_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.fcoe_ctlr_device* @dev_to_ctlr(%struct.device* %14)
  store %struct.fcoe_ctlr_device* %15, %struct.fcoe_ctlr_device** %10, align 8
  %16 = load i32, i32* @FCOE_MAX_MODENAME_LEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @FCOE_MAX_MODENAME_LEN, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %99

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @strncpy(i8* %20, i8* %29, i64 %30)
  %32 = load i64, i64* %9, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %20, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %20, i64 %40
  store i8 0, i8* %41, align 1
  br label %45

42:                                               ; preds = %28
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %20, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %47 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %94 [
    i32 129, label %49
    i32 130, label %54
    i32 128, label %93
  ]

49:                                               ; preds = %45
  %50 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %51 = call i32 (%struct.fcoe_ctlr_device*, i8*, ...) @LIBFCOE_SYSFS_DBG(%struct.fcoe_ctlr_device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %52 = load i64, i64* @EBUSY, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %99

54:                                               ; preds = %45
  %55 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %56 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.fcoe_ctlr_device*)*, i32 (%struct.fcoe_ctlr_device*)** %58, align 8
  %60 = icmp ne i32 (%struct.fcoe_ctlr_device*)* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %63 = call i32 (%struct.fcoe_ctlr_device*, i8*, ...) @LIBFCOE_SYSFS_DBG(%struct.fcoe_ctlr_device* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i64, i64* @ENOTSUPP, align 8
  %65 = sub i64 0, %64
  store i64 %65, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %99

66:                                               ; preds = %54
  %67 = call i32 @fcoe_parse_mode(i8* %20)
  %68 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %69 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %71 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FIP_CONN_TYPE_UNKNOWN, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 (%struct.fcoe_ctlr_device*, i8*, ...) @LIBFCOE_SYSFS_DBG(%struct.fcoe_ctlr_device* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load i64, i64* @EINVAL, align 8
  %80 = sub i64 0, %79
  store i64 %80, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %99

81:                                               ; preds = %66
  %82 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %83 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.fcoe_ctlr_device*)*, i32 (%struct.fcoe_ctlr_device*)** %85, align 8
  %87 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %88 = call i32 %86(%struct.fcoe_ctlr_device* %87)
  %89 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 (%struct.fcoe_ctlr_device*, i8*, ...) @LIBFCOE_SYSFS_DBG(%struct.fcoe_ctlr_device* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %99

93:                                               ; preds = %45
  br label %94

94:                                               ; preds = %45, %93
  %95 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %96 = call i32 (%struct.fcoe_ctlr_device*, i8*, ...) @LIBFCOE_SYSFS_DBG(%struct.fcoe_ctlr_device* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i64, i64* @ENOTSUPP, align 8
  %98 = sub i64 0, %97
  store i64 %98, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %94, %81, %75, %61, %49, %25
  %100 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local %struct.fcoe_ctlr_device* @dev_to_ctlr(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @LIBFCOE_SYSFS_DBG(%struct.fcoe_ctlr_device*, i8*, ...) #1

declare dso_local i32 @fcoe_parse_mode(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
