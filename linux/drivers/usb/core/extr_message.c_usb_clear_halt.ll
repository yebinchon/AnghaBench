; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_clear_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_clear_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_clear_halt(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @usb_pipeendpoint(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @usb_pipein(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.usb_device* %19, i32 0)
  %21 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %22 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %23 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %26 = call i32 @usb_control_msg(%struct.usb_device* %18, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32* null, i32 0, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %17
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @usb_reset_endpoint(%struct.usb_device* %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_reset_endpoint(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
