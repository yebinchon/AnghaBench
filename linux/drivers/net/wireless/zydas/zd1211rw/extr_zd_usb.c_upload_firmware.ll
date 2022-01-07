; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32 }
%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ub\00", align 1
@E2P_DATA_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"firmware version %#06x and device bootcode version %#06x differ\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"device has old bootcode, please report success or failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"firmware device id %#06x is equal to the actual device id\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"uphr\00", align 1
@FW_START = common dso_local global i32 0, align 4
@REBOOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Could not upload firmware code uph. Error number %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_usb*)* @upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_firmware(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca [128 x i8], align 16
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %10 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %11 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  store %struct.firmware* null, %struct.firmware** %7, align 8
  store %struct.firmware* null, %struct.firmware** %8, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = call i32 @get_bcdDevice(%struct.usb_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %16 = call i32 @get_fw_name(%struct.zd_usb* %14, i8* %15, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = call i32 @request_fw_file(%struct.firmware** %7, i32 %16, i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %86

23:                                               ; preds = %1
  %24 = load %struct.firmware*, %struct.firmware** %7, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @E2P_DATA_OFFSET, align 4
  %28 = call i32 @get_word(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %23
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 17171
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 0
  %43 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %32
  %45 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %46 = load %struct.firmware*, %struct.firmware** %7, align 8
  %47 = call i32 @handle_version_mismatch(%struct.zd_usb* %45, %struct.firmware* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %86

51:                                               ; preds = %44
  br label %57

52:                                               ; preds = %23
  %53 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dev_dbg_f(i32* %54, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %51
  %58 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %60 = call i32 @get_fw_name(%struct.zd_usb* %58, i8* %59, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 0
  %63 = call i32 @request_fw_file(%struct.firmware** %8, i32 %60, i32* %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %86

67:                                               ; preds = %57
  %68 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %69 = load %struct.firmware*, %struct.firmware** %8, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.firmware*, %struct.firmware** %8, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FW_START, align 4
  %76 = load i32, i32* @REBOOT, align 4
  %77 = call i32 @upload_code(%struct.usb_device* %68, i32 %71, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %67
  %81 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %82 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %81, i32 0, i32 0
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80, %67
  br label %86

86:                                               ; preds = %85, %66, %50, %22
  %87 = load %struct.firmware*, %struct.firmware** %7, align 8
  %88 = call i32 @release_firmware(%struct.firmware* %87)
  %89 = load %struct.firmware*, %struct.firmware** %8, align 8
  %90 = call i32 @release_firmware(%struct.firmware* %89)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local i32 @get_bcdDevice(%struct.usb_device*) #1

declare dso_local i32 @request_fw_file(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @get_fw_name(%struct.zd_usb*, i8*, i32, i8*) #1

declare dso_local i32 @get_word(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @handle_version_mismatch(%struct.zd_usb*, %struct.firmware*) #1

declare dso_local i32 @dev_dbg_f(i32*, i8*, i32) #1

declare dso_local i32 @upload_code(%struct.usb_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
