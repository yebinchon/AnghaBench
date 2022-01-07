; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_edge_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_edge_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.edgeport_port = type { %struct.usb_serial_port*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @edge_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edge_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.edgeport_port*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.edgeport_port* @kzalloc(i32 16, i32 %5)
  store %struct.edgeport_port* %6, %struct.edgeport_port** %4, align 8
  %7 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %8 = icmp ne %struct.edgeport_port* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %14 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %17 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %18 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %17, i32 0, i32 0
  store %struct.usb_serial_port* %16, %struct.usb_serial_port** %18, align 8
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %20 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %21 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %19, %struct.edgeport_port* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.edgeport_port* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.edgeport_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
