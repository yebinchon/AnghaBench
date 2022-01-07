; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.sierra_port_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @sierra_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sierra_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sierra_port_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = call %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %6)
  store %struct.sierra_port_private* %7, %struct.sierra_port_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %10 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %13 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %15 = call i32 @sierra_send_setup(%struct.usb_serial_port* %14)
  ret void
}

declare dso_local %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @sierra_send_setup(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
