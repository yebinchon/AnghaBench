; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_wwn_vpd_unit_serial_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_wwn_vpd_unit_serial_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.t10_wwn = type { %struct.se_device* }
%struct.se_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@INQUIRY_VPD_SERIAL_LEN = common dso_local global i32 0, align 4
@DF_FIRMWARE_VPD_UNIT_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Underlying SCSI device firmware provided VPD Unit Serial, ignoring request\0A\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Emulated VPD Unit Serial exceeds INQUIRY_VPD_SERIAL_LEN: %d\0A\00", align 1
@EOVERFLOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"Unable to set VPD Unit Serial while active %d $FABRIC_MOD exports exist\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DF_EMULATED_VPD_UNIT_SERIAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Target_Core_ConfigFS: Set emulated VPD Unit Serial: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @target_wwn_vpd_unit_serial_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_wwn_vpd_unit_serial_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.t10_wwn*, align 8
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.config_item*, %struct.config_item** %5, align 8
  %14 = call %struct.t10_wwn* @to_t10_wwn(%struct.config_item* %13)
  store %struct.t10_wwn* %14, %struct.t10_wwn** %8, align 8
  %15 = load %struct.t10_wwn*, %struct.t10_wwn** %8, align 8
  %16 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %15, i32 0, i32 0
  %17 = load %struct.se_device*, %struct.se_device** %16, align 8
  store %struct.se_device* %17, %struct.se_device** %9, align 8
  %18 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.se_device*, %struct.se_device** %9, align 8
  %23 = getelementptr inbounds %struct.se_device, %struct.se_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DF_FIRMWARE_VPD_UNIT_SERIAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @EOPNOTSUPP, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %78

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @EOVERFLOW, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %78

42:                                               ; preds = %32
  %43 = load %struct.se_device*, %struct.se_device** %9, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.se_device*, %struct.se_device** %9, align 8
  %49 = getelementptr inbounds %struct.se_device, %struct.se_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %78

54:                                               ; preds = %42
  %55 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %56 = call i32 @memset(i8* %21, i32 0, i32 %55)
  %57 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @snprintf(i8* %21, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load %struct.se_device*, %struct.se_device** %9, align 8
  %61 = getelementptr inbounds %struct.se_device, %struct.se_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %65 = call i8* @strstrip(i8* %21)
  %66 = call i32 @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @DF_EMULATED_VPD_UNIT_SERIAL, align 4
  %68 = load %struct.se_device*, %struct.se_device** %9, align 8
  %69 = getelementptr inbounds %struct.se_device, %struct.se_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.se_device*, %struct.se_device** %9, align 8
  %73 = getelementptr inbounds %struct.se_device, %struct.se_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %4, align 8
  store i32 1, i32* %12, align 4
  br label %78

78:                                               ; preds = %54, %47, %37, %28
  %79 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local %struct.t10_wwn* @to_t10_wwn(%struct.config_item*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
