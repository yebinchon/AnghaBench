; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_sierra_get_swoc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_sierra_get_swoc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.swoc_info = type { i8*, i8* }

@.str = private unnamed_addr constant [43 x i8] c"SWIMS: Attempting to get TRU-Install info\0A\00", align 1
@SWIMS_USB_REQUEST_GetSwocInfo = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.swoc_info*)* @sierra_get_swoc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_get_swoc_info(%struct.usb_device* %0, %struct.swoc_info* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.swoc_info*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.swoc_info* %1, %struct.swoc_info** %4, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %10, i32 0)
  %12 = load i32, i32* @SWIMS_USB_REQUEST_GetSwocInfo, align 4
  %13 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %17 = bitcast %struct.swoc_info* %16 to i8*
  %18 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %19 = call i32 @usb_control_msg(%struct.usb_device* %9, i32 %11, i32 %12, i32 %15, i32 0, i32 0, i8* %17, i32 16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %21 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @le16_to_cpu(i8* %22)
  %24 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %25 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %27 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @le16_to_cpu(i8* %28)
  %30 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %31 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i8* @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
