; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_get_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DT_STRING = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i16, i8, i8*, i32)* @usb_get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_get_string(%struct.usb_device* %0, i16 zeroext %1, i8 zeroext %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i16 %1, i16* %7, align 2
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %54, %5
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %19 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %18, i32 0)
  %20 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %21 = load i32, i32* @USB_DIR_IN, align 4
  %22 = load i32, i32* @USB_DT_STRING, align 4
  %23 = shl i32 %22, 8
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %23, %25
  %27 = load i16, i16* %7, align 2
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %31 = call i32 @usb_control_msg(%struct.usb_device* %17, i32 %19, i32 %20, i32 %21, i32 %26, i16 zeroext %27, i8* %28, i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @EPIPE, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %16
  br label %54

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @USB_DT_STRING, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENODATA, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  br label %54

53:                                               ; preds = %43, %40
  br label %57

54:                                               ; preds = %50, %39
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %13

57:                                               ; preds = %53, %13
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i16 zeroext, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
