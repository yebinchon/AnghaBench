; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_serial_set_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_serial_set_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.serial_struct = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @serial_set_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_set_serial(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.usb_serial_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  store %struct.usb_serial_port* %9, %struct.usb_serial_port** %6, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.tty_struct*, %struct.serial_struct*)**
  %17 = load i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)** %16, align 8
  %18 = icmp ne i32 (%struct.tty_struct*, %struct.serial_struct*)* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.tty_struct*, %struct.serial_struct*)**
  %27 = load i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)** %26, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %29 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %30 = call i32 %27(%struct.tty_struct* %28, %struct.serial_struct* %29)
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOTTY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
