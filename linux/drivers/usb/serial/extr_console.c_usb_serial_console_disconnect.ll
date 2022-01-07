; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_console.c_usb_serial_console_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_console.c_usb_serial_console_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.usb_serial = type { i64* }

@usbcons_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_serial_console_disconnect(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %3 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %4 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %11 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @usbcons_info, i32 0, i32 0), align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = call i32 (...) @usb_serial_console_exit()
  %19 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %20 = call i32 @usb_serial_put(%struct.usb_serial* %19)
  br label %21

21:                                               ; preds = %17, %9, %1
  ret void
}

declare dso_local i32 @usb_serial_console_exit(...) #1

declare dso_local i32 @usb_serial_put(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
