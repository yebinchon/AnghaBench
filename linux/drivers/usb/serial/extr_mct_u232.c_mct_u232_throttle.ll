; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.mct_u232_private = type { i32, i32, i32 }

@THROTTLED = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @mct_u232_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mct_u232_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.mct_u232_private*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  store %struct.usb_serial_port* %8, %struct.usb_serial_port** %3, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %10 = call %struct.mct_u232_private* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.mct_u232_private* %10, %struct.mct_u232_private** %4, align 8
  %11 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %12 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load i32, i32* @THROTTLED, align 4
  %15 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %16 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %20 = call i64 @C_CRTSCTS(%struct.tty_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load i32, i32* @TIOCM_RTS, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %26 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %30 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %33 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mct_u232_set_modem_ctrl(%struct.usb_serial_port* %35, i32 %36)
  br label %42

38:                                               ; preds = %1
  %39 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %40 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_irq(i32* %40)
  br label %42

42:                                               ; preds = %38, %22
  ret void
}

declare dso_local %struct.mct_u232_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mct_u232_set_modem_ctrl(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
