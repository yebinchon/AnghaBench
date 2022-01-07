; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/Documentation/firmware/extr_firmware.c_update_backend_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/Documentation/firmware/extr_firmware.c_update_backend_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Getting Backend Firmware Version\0A\00", align 1
@backend_fw_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@firmware_tag = common dso_local global i8* null, align 8
@GB_FIRMWARE_U_TAG_MAX_SIZE = common dso_local global i32 0, align 4
@FW_MGMT_IOC_GET_BACKEND_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to get backend firmware version: %s (%d)\0A\00", align 1
@fwdev = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Backend Firmware tag (%s), major (%d), minor (%d), status (%d)\0A\00", align 1
@GB_FW_U_BACKEND_VERSION_STATUS_RETRY = common dso_local global i32 0, align 4
@GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS = common dso_local global i32 0, align 4
@GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Updating Backend Firmware\0A\00", align 1
@backend_update = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FW_MGMT_IOC_INTF_BACKEND_FW_UPDATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to load backend firmware: %s (%d)\0A\00", align 1
@GB_FW_U_BACKEND_FW_STATUS_RETRY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Retrying firmware update: %d\0A\00", align 1
@GB_FW_U_BACKEND_FW_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Load status says loading failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Backend Firmware (%s) Load done: status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @update_backend_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_backend_firmware(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = load i8*, i8** @firmware_tag, align 8
  %7 = load i32, i32* @GB_FIRMWARE_U_TAG_MAX_SIZE, align 4
  %8 = call i32 @strncpy(i8* bitcast (%struct.TYPE_4__* @backend_fw_info to i8*), i8* %6, i32 %7)
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FW_MGMT_IOC_GET_BACKEND_FW, align 4
  %12 = call i32 @ioctl(i32 %10, i32 %11, %struct.TYPE_4__* @backend_fw_info)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i8*, i8** @fwdev, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %17)
  store i32 -1, i32* %2, align 4
  br label %75

19:                                               ; preds = %9
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_fw_info, i32 0, i32 0), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_fw_info, i32 0, i32 1), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_fw_info, i32 0, i32 2), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_fw_info, i32 0, i32 3), align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_fw_info, i32 0, i32 3), align 8
  %26 = load i32, i32* @GB_FW_U_BACKEND_VERSION_STATUS_RETRY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %9

29:                                               ; preds = %19
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_fw_info, i32 0, i32 3), align 8
  %31 = load i32, i32* @GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_fw_info, i32 0, i32 3), align 8
  %35 = load i32, i32* @GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** @fwdev, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_fw_info, i32 0, i32 3), align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39)
  store i32 -1, i32* %2, align 4
  br label %75

41:                                               ; preds = %33, %29
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i8*, i8** @firmware_tag, align 8
  %44 = load i32, i32* @GB_FIRMWARE_U_TAG_MAX_SIZE, align 4
  %45 = call i32 @strncpy(i8* bitcast (%struct.TYPE_4__* @backend_update to i8*), i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %60, %41
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_update, i32 0, i32 3), align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @FW_MGMT_IOC_INTF_BACKEND_FW_UPDATE, align 4
  %49 = call i32 @ioctl(i32 %47, i32 %48, %struct.TYPE_4__* @backend_update)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i8*, i8** @fwdev, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 %54)
  store i32 -1, i32* %2, align 4
  br label %75

56:                                               ; preds = %46
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_update, i32 0, i32 3), align 8
  %58 = load i32, i32* @GB_FW_U_BACKEND_FW_STATUS_RETRY, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_update, i32 0, i32 3), align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %46

63:                                               ; preds = %56
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_update, i32 0, i32 3), align 8
  %65 = load i32, i32* @GB_FW_U_BACKEND_FW_STATUS_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_update, i32 0, i32 3), align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  br label %74

70:                                               ; preds = %63
  %71 = load i8*, i8** @firmware_tag, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backend_update, i32 0, i32 3), align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %67
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %52, %37, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
