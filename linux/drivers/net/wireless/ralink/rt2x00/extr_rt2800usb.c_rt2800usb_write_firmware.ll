; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_write_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_write_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT2860 = common dso_local global i32 0, align 4
@RT2872 = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Firmware loading not required - NIC in AutoRun mode\0A\00", align 1
@REQUIRE_FIRMWARE = common dso_local global i32 0, align 4
@FIRMWARE_IMAGE_BASE = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID = common dso_local global i32 0, align 4
@H2M_MAILBOX_STATUS = common dso_local global i32 0, align 4
@USB_DEVICE_MODE = common dso_local global i32 0, align 4
@USB_MODE_FIRMWARE = common dso_local global i32 0, align 4
@REGISTER_TIMEOUT_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to write Firmware to device\0A\00", align 1
@H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32*, i64)* @rt2800usb_write_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800usb_write_firmware(%struct.rt2x00_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = load i32, i32* @RT2860, align 4
  %14 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %18 = load i32, i32* @RT2872, align 4
  %19 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %23 = load i32, i32* @RT3070, align 4
  %24 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16, %3
  store i32 0, i32* %9, align 4
  store i32 4096, i32* %10, align 4
  br label %28

27:                                               ; preds = %21
  store i32 4096, i32* %9, align 4
  store i32 4096, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %30 = call i32 @rt2800usb_autorun_detect(%struct.rt2x00_dev* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %77

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %40 = call i32 @rt2x00_info(%struct.rt2x00_dev* %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @REQUIRE_FIRMWARE, align 4
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %43 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %42, i32 0, i32 0
  %44 = call i32 @__clear_bit(i32 %41, i32* %43)
  br label %54

45:                                               ; preds = %35
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = load i32, i32* @FIRMWARE_IMAGE_BASE, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev* %46, i32 %47, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %38
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %56 = load i32, i32* @H2M_MAILBOX_CID, align 4
  %57 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %55, i32 %56, i32 -1)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %59 = load i32, i32* @H2M_MAILBOX_STATUS, align 4
  %60 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %58, i32 %59, i32 -1)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %62 = load i32, i32* @USB_DEVICE_MODE, align 4
  %63 = load i32, i32* @USB_MODE_FIRMWARE, align 4
  %64 = load i32, i32* @REGISTER_TIMEOUT_FIRMWARE, align 4
  %65 = call i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev* %61, i32 %62, i32 0, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %70 = call i32 @rt2x00_err(%struct.rt2x00_dev* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %77

72:                                               ; preds = %54
  %73 = call i32 @msleep(i32 10)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %75 = load i32, i32* @H2M_MAILBOX_CSR, align 4
  %76 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %74, i32 %75, i32 0)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %68, %33
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800usb_autorun_detect(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_info(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev*, i32, i32*, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
