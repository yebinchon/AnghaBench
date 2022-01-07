; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i32 }
%struct.ti_port = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*, i8*, i32)* @ti_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_write(%struct.tty_struct* %0, %struct.usb_serial_port* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ti_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %12 = call %struct.ti_port* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.ti_port* %12, %struct.ti_port** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

16:                                               ; preds = %4
  %17 = load %struct.ti_port*, %struct.ti_port** %10, align 8
  %18 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %35

24:                                               ; preds = %16
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 0
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.ti_port*, %struct.ti_port** %10, align 8
  %30 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %29, i32 0, i32 0
  %31 = call i32 @kfifo_in_locked(i32* %26, i8* %27, i32 %28, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.ti_port*, %struct.ti_port** %10, align 8
  %33 = call i32 @ti_send(%struct.ti_port* %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %24, %21, %15
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.ti_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @kfifo_in_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @ti_send(%struct.ti_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
