; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_read_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_read_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_FIRMWARE_READ_DATA = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"read over firmware interface failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"incomplete read over firmware interface: %d/%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_read_fw(%struct.zd_usb* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zd_usb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %14 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %13)
  store %struct.usb_device* %14, %struct.usb_device** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %63

23:                                               ; preds = %4
  %24 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %26 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %25, i32 0)
  %27 = load i32, i32* @USB_REQ_FIRMWARE_READ_DATA, align 4
  %28 = load i32, i32* @USB_DIR_IN, align 4
  %29 = or i32 %28, 64
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @usb_control_msg(%struct.usb_device* %24, i32 %26, i32 %27, i32 %29, i32 %30, i32 0, i32* %31, i32 %32, i32 5000)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %59

41:                                               ; preds = %23
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %59

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @memcpy(i32* %55, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %45, %36
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %20
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
