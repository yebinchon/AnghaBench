; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usbctrl_vendorreq_sync_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usbctrl_vendorreq_sync_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@_usbctrl_vendorreq_sync_read.count = internal global i32 0, align 4
@REALTEK_USB_VENQT_READ = common dso_local global i32 0, align 4
@FW_8192C_START_ADDRESS = common dso_local global i32 0, align 4
@FW_8192C_END_ADDRESS = common dso_local global i32 0, align 4
@MAX_USBCTRL_VENDORREQ_TIMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"reg 0x%x, usbctrl_vendorreq TimeOut! status:0x%x value=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i32, i8*, i32)* @_usbctrl_vendorreq_sync_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_usbctrl_vendorreq_sync_read(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %18 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %17, i32 0)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* @REALTEK_USB_VENQT_READ, align 4
  store i32 %19, i32* %15, align 4
  br label %20

20:                                               ; preds = %44, %6
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @usb_control_msg(%struct.usb_device* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i8* %27, i32 %28, i32 1000)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @FW_8192C_START_ADDRESS, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @FW_8192C_END_ADDRESS, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %49

41:                                               ; preds = %36, %32
  br label %43

42:                                               ; preds = %20
  br label %49

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* @MAX_USBCTRL_VENDORREQ_TIMES, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %20, label %49

49:                                               ; preds = %44, %42, %40
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* @_usbctrl_vendorreq_sync_read.count, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @_usbctrl_vendorreq_sync_read.count, align 4
  %55 = icmp slt i32 %53, 4
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %56, %52, %49
  %64 = load i32, i32* %14, align 4
  ret i32 %64
}

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
