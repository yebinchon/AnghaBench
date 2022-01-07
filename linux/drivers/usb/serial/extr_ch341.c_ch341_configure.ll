; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.ch341_private = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CH341_REQ_READ_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Chip version: 0x%02x\0A\00", align 1
@CH341_REQ_SERIAL_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.ch341_private*)* @ch341_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_configure(%struct.usb_device* %0, %struct.ch341_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.ch341_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.ch341_private* %1, %struct.ch341_private** %5, align 8
  store i32 2, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 2, i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = load i32, i32* @CH341_REQ_READ_VERSION, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @ch341_control_in(%struct.usb_device* %17, i32 %18, i32 0, i32 0, i8* %19, i32 2)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %53

24:                                               ; preds = %16
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 signext %29)
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = load i32, i32* @CH341_REQ_SERIAL_INIT, align 4
  %33 = call i32 @ch341_control_out(%struct.usb_device* %31, i32 %32, i32 0, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %53

37:                                               ; preds = %24
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %40 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %41 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ch341_set_baudrate_lcr(%struct.usb_device* %38, %struct.ch341_private* %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %53

47:                                               ; preds = %37
  %48 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %49 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %50 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ch341_set_handshake(%struct.usb_device* %48, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %46, %36, %23
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ch341_control_in(%struct.usb_device*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 signext) #1

declare dso_local i32 @ch341_control_out(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @ch341_set_baudrate_lcr(%struct.usb_device*, %struct.ch341_private*, i32) #1

declare dso_local i32 @ch341_set_handshake(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
