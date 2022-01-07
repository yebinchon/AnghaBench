; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_get_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@USB_STS_RETRIES = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@USB_REQ_GET_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RT_PORT = common dso_local global i32 0, align 4
@USB_STS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i8*, i32, i32)* @get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port_status(%struct.usb_device* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @ETIMEDOUT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %47, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @USB_STS_RETRIES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @EPIPE, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br label %31

31:                                               ; preds = %29, %15
  %32 = phi i1 [ false, %15 ], [ %30, %29 ]
  br i1 %32, label %33, label %50

33:                                               ; preds = %31
  %34 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %35, i32 0)
  %37 = load i32, i32* @USB_REQ_GET_STATUS, align 4
  %38 = load i32, i32* @USB_DIR_IN, align 4
  %39 = load i32, i32* @USB_RT_PORT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @USB_STS_TIMEOUT, align 4
  %46 = call i32 @usb_control_msg(%struct.usb_device* %34, i32 %36, i32 %37, i32 %40, i32 %41, i32 %42, i8* %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %15

50:                                               ; preds = %31
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
