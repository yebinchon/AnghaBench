; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_edge_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_edge_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.edgeport_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @edge_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edge_port_remove(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.edgeport_port*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = call %struct.edgeport_port* @usb_get_serial_port_data(%struct.usb_serial_port* %4)
  store %struct.edgeport_port* %5, %struct.edgeport_port** %3, align 8
  %6 = load %struct.edgeport_port*, %struct.edgeport_port** %3, align 8
  %7 = call i32 @kfree(%struct.edgeport_port* %6)
  ret i32 0
}

declare dso_local %struct.edgeport_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @kfree(%struct.edgeport_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
