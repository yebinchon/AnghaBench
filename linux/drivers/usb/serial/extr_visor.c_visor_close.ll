; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_visor.c_visor_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_visor.c_visor_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VISOR_CLOSE_NOTIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @visor_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visor_close(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i8*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = call i32 @usb_serial_generic_close(%struct.usb_serial_port* %4)
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @usb_kill_urb(i32 %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i32 18, i32 %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %22 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_rcvctrlpipe(i32 %25, i32 0)
  %27 = load i32, i32* @VISOR_CLOSE_NOTIFICATION, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @usb_control_msg(i32 %20, i32 %26, i32 %27, i32 194, i32 0, i32 0, i8* %28, i32 18, i32 300)
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @kfree(i8* %30)
  br label %32

32:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @usb_serial_generic_close(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
