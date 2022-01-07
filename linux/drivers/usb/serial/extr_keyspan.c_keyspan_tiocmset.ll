; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.keyspan_port_private = type { i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @keyspan_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.keyspan_port_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %7, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %13 = call %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.keyspan_port_private* %13, %struct.keyspan_port_private** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TIOCM_RTS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %8, align 8
  %20 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TIOCM_DTR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %8, align 8
  %28 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TIOCM_RTS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %8, align 8
  %36 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TIOCM_DTR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %8, align 8
  %44 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %47 = call i32 @keyspan_send_setup(%struct.usb_serial_port* %46, i32 0)
  ret i32 0
}

declare dso_local %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @keyspan_send_setup(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
