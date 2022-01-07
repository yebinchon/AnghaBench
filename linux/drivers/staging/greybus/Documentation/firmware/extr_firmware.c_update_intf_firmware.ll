; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/Documentation/firmware/extr_firmware.c_update_intf_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/Documentation/firmware/extr_firmware.c_update_intf_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Get Interface Firmware Version\0A\00", align 1
@FW_MGMT_IOC_GET_INTF_FW = common dso_local global i32 0, align 4
@intf_fw_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to get interface firmware version: %s (%d)\0A\00", align 1
@fwdev = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Interface Firmware tag (%s), major (%d), minor (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Loading Interface Firmware\0A\00", align 1
@GB_FW_U_LOAD_METHOD_UNIPRO = common dso_local global i32 0, align 4
@intf_load = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@firmware_tag = common dso_local global i8* null, align 8
@GB_FIRMWARE_U_TAG_MAX_SIZE = common dso_local global i32 0, align 4
@FW_MGMT_IOC_INTF_LOAD_AND_VALIDATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to load interface firmware: %s (%d)\0A\00", align 1
@GB_FW_U_LOAD_STATUS_VALIDATED = common dso_local global i64 0, align 8
@GB_FW_U_LOAD_STATUS_UNVALIDATED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Load status says loading failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"Interface Firmware (%s) Load done: major: %d, minor: %d, status: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Initiate Mode switch\0A\00", align 1
@FW_MGMT_IOC_MODE_SWITCH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to initiate mode-switch (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @update_intf_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_intf_firmware(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @FW_MGMT_IOC_GET_INTF_FW, align 4
  %8 = call i32 (i32, i32, ...) @ioctl(i32 %6, i32 %7, %struct.TYPE_4__* @intf_fw_info)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** @fwdev, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 %13)
  store i32 -1, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intf_fw_info, i32 0, i32 0), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intf_fw_info, i32 0, i32 1), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intf_fw_info, i32 0, i32 2), align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %16, i32 %17, i32 %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @GB_FW_U_LOAD_METHOD_UNIPRO, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 4), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 2), align 4
  %22 = load i8*, i8** @firmware_tag, align 8
  %23 = load i32, i32* @GB_FIRMWARE_U_TAG_MAX_SIZE, align 4
  %24 = call i32 @strncpy(i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 3) to i8*), i8* %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @FW_MGMT_IOC_INTF_LOAD_AND_VALIDATE, align 4
  %27 = call i32 (i32, i32, ...) @ioctl(i32 %25, i32 %26, %struct.TYPE_3__* @intf_load)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %15
  %31 = load i8*, i8** @fwdev, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %31, i32 %32)
  store i32 -1, i32* %2, align 4
  br label %62

34:                                               ; preds = %15
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 0), align 8
  %36 = load i64, i64* @GB_FW_U_LOAD_STATUS_VALIDATED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 0), align 8
  %40 = load i64, i64* @GB_FW_U_LOAD_STATUS_UNVALIDATED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 0), align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %43)
  store i32 -1, i32* %2, align 4
  br label %62

45:                                               ; preds = %38, %34
  %46 = load i8*, i8** @firmware_tag, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 1), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 2), align 4
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @intf_load, i32 0, i32 0), align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i8* %46, i32 %47, i32 %48, i64 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @FW_MGMT_IOC_MODE_SWITCH, align 4
  %54 = call i32 (i32, i32, ...) @ioctl(i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %42, %30, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ioctl(i32, i32, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
