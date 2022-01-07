; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.edgeport_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ASYNC_CLOSING_WAIT_NONE = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.edgeport_port*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  store %struct.usb_serial_port* %10, %struct.usb_serial_port** %5, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %12 = call %struct.edgeport_port* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.edgeport_port* %12, %struct.edgeport_port** %6, align 8
  %13 = load %struct.edgeport_port*, %struct.edgeport_port** %6, align 8
  %14 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ASYNC_CLOSING_WAIT_NONE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @jiffies_to_msecs(i32 %23)
  %25 = sdiv i32 %24, 10
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* @PORT_16550A, align 4
  %28 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %29 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.edgeport_port*, %struct.edgeport_port** %6, align 8
  %31 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %36 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.edgeport_port*, %struct.edgeport_port** %6, align 8
  %38 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %43 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %45 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.edgeport_port*, %struct.edgeport_port** %6, align 8
  %47 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %52 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %54 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %53, i32 0, i32 0
  store i32 9600, i32* %54, align 8
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 5, %55
  %57 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %58 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %61 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  ret i32 0
}

declare dso_local %struct.edgeport_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
