; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_handle_version_mismatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_handle_version_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32 }
%struct.firmware = type { i64, i64 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"ur\00", align 1
@FW_START = common dso_local global i64 0, align 8
@REBOOT = common dso_local global i32 0, align 4
@E2P_BOOT_CODE_OFFSET = common dso_local global i32 0, align 4
@E2P_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_usb*, %struct.firmware*)* @handle_version_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_version_mismatch(%struct.zd_usb* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  store %struct.zd_usb* %0, %struct.zd_usb** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %10 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %11 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %10)
  store %struct.usb_device* %11, %struct.usb_device** %5, align 8
  store %struct.firmware* null, %struct.firmware** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %14 = call i32 @get_fw_name(%struct.zd_usb* %12, i8* %13, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = call i32 @request_fw_file(%struct.firmware** %6, i32 %14, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = load %struct.firmware*, %struct.firmware** %6, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.firmware*, %struct.firmware** %6, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FW_START, align 8
  %30 = load i32, i32* @REBOOT, align 4
  %31 = call i32 @upload_code(%struct.usb_device* %22, i64 %25, i64 %28, i64 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %59

35:                                               ; preds = %21
  %36 = load i32, i32* @E2P_BOOT_CODE_OFFSET, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %41 = load %struct.firmware*, %struct.firmware** %4, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load %struct.firmware*, %struct.firmware** %4, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %49, %51
  %53 = load i64, i64* @E2P_START, align 8
  %54 = load i32, i32* @E2P_BOOT_CODE_OFFSET, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i32, i32* @REBOOT, align 4
  %58 = call i32 @upload_code(%struct.usb_device* %40, i64 %46, i64 %52, i64 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %35, %34, %20
  %60 = load %struct.firmware*, %struct.firmware** %6, align 8
  %61 = call i32 @release_firmware(%struct.firmware* %60)
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local i32 @request_fw_file(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @get_fw_name(%struct.zd_usb*, i8*, i32, i8*) #1

declare dso_local i32 @upload_code(%struct.usb_device*, i64, i64, i64, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
