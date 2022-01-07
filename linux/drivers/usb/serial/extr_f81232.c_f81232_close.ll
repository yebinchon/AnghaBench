; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.f81232_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @f81232_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f81232_close(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.f81232_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = call %struct.f81232_private* @usb_get_serial_port_data(%struct.usb_serial_port* %4)
  store %struct.f81232_private* %5, %struct.f81232_private** %3, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %7 = call i32 @f81232_port_disable(%struct.usb_serial_port* %6)
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %9 = call i32 @usb_serial_generic_close(%struct.usb_serial_port* %8)
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_kill_urb(i32 %12)
  %14 = load %struct.f81232_private*, %struct.f81232_private** %3, align 8
  %15 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %14, i32 0, i32 1
  %16 = call i32 @flush_work(i32* %15)
  %17 = load %struct.f81232_private*, %struct.f81232_private** %3, align 8
  %18 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %17, i32 0, i32 0
  %19 = call i32 @flush_work(i32* %18)
  ret void
}

declare dso_local %struct.f81232_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @f81232_port_disable(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_serial_generic_close(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
