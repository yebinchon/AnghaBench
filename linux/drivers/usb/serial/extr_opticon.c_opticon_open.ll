; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_opticon_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_opticon_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.opticon_private = type { i32, i32 }

@CONTROL_RTS = common dso_local global i32 0, align 4
@RESEND_CTS_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @opticon_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opticon_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.opticon_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %10 = call %struct.opticon_private* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.opticon_private* %10, %struct.opticon_private** %6, align 8
  %11 = load %struct.opticon_private*, %struct.opticon_private** %6, align 8
  %12 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.opticon_private*, %struct.opticon_private** %6, align 8
  %16 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.opticon_private*, %struct.opticon_private** %6, align 8
  %18 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %22 = load i32, i32* @CONTROL_RTS, align 4
  %23 = call i32 @send_control_msg(%struct.usb_serial_port* %21, i32 %22, i32 0)
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_clear_halt(i32 %28, i32 %33)
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %37 = call i32 @usb_serial_generic_open(%struct.tty_struct* %35, %struct.usb_serial_port* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %2
  %43 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %44 = load i32, i32* @RESEND_CTS_STATE, align 4
  %45 = call i32 @send_control_msg(%struct.usb_serial_port* %43, i32 %44, i32 1)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.opticon_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @send_control_msg(%struct.usb_serial_port*, i32, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_serial_generic_open(%struct.tty_struct*, %struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
