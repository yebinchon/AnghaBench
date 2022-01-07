; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.ti_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @ti_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.ti_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  store %struct.usb_serial_port* %7, %struct.usb_serial_port** %3, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.ti_port* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.ti_port* %9, %struct.ti_port** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %11 = call i64 @I_IXOFF(%struct.tty_struct* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %15 = call i64 @C_CRTSCTS(%struct.tty_struct* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %1
  %18 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %20 = call i32 @ti_stop_read(%struct.ti_port* %18, %struct.tty_struct* %19)
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

declare dso_local %struct.ti_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @ti_stop_read(%struct.ti_port*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
