; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_stop_command_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_stop_command_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_serial_port** }
%struct.usb_serial_port = type { i32 }
%struct.whiteheat_command_private = type { i32, i32 }

@COMMAND_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*)* @stop_command_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_command_port(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.whiteheat_command_private*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %5 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %6 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %5, i32 0, i32 0
  %7 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %6, align 8
  %8 = load i64, i64* @COMMAND_PORT, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %7, i64 %8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  store %struct.usb_serial_port* %10, %struct.usb_serial_port** %3, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = call %struct.whiteheat_command_private* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.whiteheat_command_private* %12, %struct.whiteheat_command_private** %4, align 8
  %13 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %4, align 8
  %14 = getelementptr inbounds %struct.whiteheat_command_private, %struct.whiteheat_command_private* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %4, align 8
  %17 = getelementptr inbounds %struct.whiteheat_command_private, %struct.whiteheat_command_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %4, align 8
  %21 = getelementptr inbounds %struct.whiteheat_command_private, %struct.whiteheat_command_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_kill_urb(i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.whiteheat_command_private*, %struct.whiteheat_command_private** %4, align 8
  %31 = getelementptr inbounds %struct.whiteheat_command_private, %struct.whiteheat_command_private* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  ret void
}

declare dso_local %struct.whiteheat_command_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
