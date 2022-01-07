; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_usb_card_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_usb_card_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i64 }
%struct.rsi_91x_usbdev = type { i32*, i32*, i32, i32 }

@RSI_USB_TX_HEAD_ROOM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ERR_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Card write failed with error code :%10d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsi_hw*, i32*, i32, i32)* @rsi_usb_card_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_usb_card_write(%struct.rsi_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rsi_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rsi_91x_usbdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %15 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rsi_91x_usbdev*
  store %struct.rsi_91x_usbdev* %17, %struct.rsi_91x_usbdev** %9, align 8
  %18 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %9, align 8
  %19 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %9, align 8
  %22 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RSI_USB_TX_HEAD_ROOM, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @memset(i32* %29, i32 0, i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @RSI_USB_TX_HEAD_ROOM, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load i32, i32* @RSI_USB_TX_HEAD_ROOM, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %9, align 8
  %46 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %9, align 8
  %49 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @usb_sndbulkpipe(i32 %50, i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 %56, 5
  %58 = call i32 @usb_bulk_msg(i32 %47, i32 %52, i8* %54, i32 %55, i32* %12, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %4
  %62 = load i32, i32* @ERR_ZONE, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @rsi_dbg(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %9, align 8
  %66 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %4
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @rsi_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
