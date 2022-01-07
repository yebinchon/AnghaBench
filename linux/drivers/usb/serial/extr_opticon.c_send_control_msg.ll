; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_send_control_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_send_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32, i32)* @send_control_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_control_msg(%struct.usb_serial_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_serial*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 0
  %13 = load %struct.usb_serial*, %struct.usb_serial** %12, align 8
  store %struct.usb_serial* %13, %struct.usb_serial** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kzalloc(i32 1, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %26 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %29 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_sndctrlpipe(i32 %30, i32 0)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @USB_DIR_OUT, align 4
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @usb_control_msg(i32 %27, i32 %31, i32 %32, i32 %37, i32 0, i32 0, i32* %38, i32 1, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %21
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %44, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
