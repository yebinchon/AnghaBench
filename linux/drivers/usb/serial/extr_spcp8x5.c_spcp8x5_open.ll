; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.usb_serial* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_serial = type { i32 }
%struct.spcp8x5_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @spcp8x5_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spcp8x5_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca %struct.spcp8x5_private*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 2
  %11 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  store %struct.usb_serial* %11, %struct.usb_serial** %6, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %13 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.spcp8x5_private* %13, %struct.spcp8x5_private** %7, align 8
  %14 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %15 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_clear_halt(i32 %16, i32 %21)
  %23 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %24 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %27 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_clear_halt(i32 %25, i32 %30)
  %32 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %33 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %36 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_sndctrlpipe(i32 %37, i32 0)
  %39 = call i32 @usb_control_msg(i32 %34, i32 %38, i32 9, i32 0, i32 1, i32 0, i32* null, i32 0, i32 100)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %60

44:                                               ; preds = %2
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %46 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %7, align 8
  %47 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @spcp8x5_set_ctrl_line(%struct.usb_serial_port* %45, i32 %48)
  %50 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %51 = icmp ne %struct.tty_struct* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %55 = call i32 @spcp8x5_set_termios(%struct.tty_struct* %53, %struct.usb_serial_port* %54, i32* null)
  br label %56

56:                                               ; preds = %52, %44
  %57 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %58 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %59 = call i32 @usb_serial_generic_open(%struct.tty_struct* %57, %struct.usb_serial_port* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %42
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @spcp8x5_set_ctrl_line(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @spcp8x5_set_termios(%struct.tty_struct*, %struct.usb_serial_port*, i32*) #1

declare dso_local i32 @usb_serial_generic_open(%struct.tty_struct*, %struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
