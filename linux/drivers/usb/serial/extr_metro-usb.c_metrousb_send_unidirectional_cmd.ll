; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_metro-usb.c_metrousb_send_unidirectional_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_metro-usb.c_metrousb_send_unidirectional_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.usb_serial_port*)* @metrousb_send_unidirectional_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metrousb_send_unidirectional_cmd(i32 %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @metrousb_is_unidirectional_mode(%struct.TYPE_2__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 4, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %27 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %32 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_sndintpipe(i32 %35, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %42 = call i32 @usb_interrupt_msg(i32 %30, i32 %39, i32* %40, i32 4, i32* %7, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %23
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %23
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %53, %47, %20, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @metrousb_is_unidirectional_mode(%struct.TYPE_2__*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
