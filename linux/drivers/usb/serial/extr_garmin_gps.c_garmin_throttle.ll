; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_garmin_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_garmin_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.garmin_data = type { i32, i32 }

@FLAGS_QUEUING = common dso_local global i32 0, align 4
@FLAGS_THROTTLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @garmin_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garmin_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.garmin_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  store %struct.usb_serial_port* %7, %struct.usb_serial_port** %3, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.garmin_data* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.garmin_data* %9, %struct.garmin_data** %4, align 8
  %10 = load %struct.garmin_data*, %struct.garmin_data** %4, align 8
  %11 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load i32, i32* @FLAGS_QUEUING, align 4
  %14 = load i32, i32* @FLAGS_THROTTLED, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.garmin_data*, %struct.garmin_data** %4, align 8
  %17 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.garmin_data*, %struct.garmin_data** %4, align 8
  %21 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock_irq(i32* %21)
  ret void
}

declare dso_local %struct.garmin_data* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
