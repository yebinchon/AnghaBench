; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.pl2303_private = type { i32, i32 }

@CONTROL_DTR = common dso_local global i32 0, align 4
@CONTROL_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @pl2303_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl2303_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pl2303_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.pl2303_private* %9, %struct.pl2303_private** %5, align 8
  %10 = load %struct.pl2303_private*, %struct.pl2303_private** %5, align 8
  %11 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @CONTROL_DTR, align 4
  %18 = load i32, i32* @CONTROL_RTS, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.pl2303_private*, %struct.pl2303_private** %5, align 8
  %21 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @CONTROL_DTR, align 4
  %26 = load i32, i32* @CONTROL_RTS, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.pl2303_private*, %struct.pl2303_private** %5, align 8
  %30 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %24, %16
  %34 = load %struct.pl2303_private*, %struct.pl2303_private** %5, align 8
  %35 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.pl2303_private*, %struct.pl2303_private** %5, align 8
  %38 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %37, i32 0, i32 1
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pl2303_set_control_lines(%struct.usb_serial_port* %41, i32 %42)
  ret void
}

declare dso_local %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pl2303_set_control_lines(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
