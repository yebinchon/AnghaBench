; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.spcp8x5_private = type { i32, i32 }

@MCR_CONTROL_LINE_DTR = common dso_local global i32 0, align 4
@MCR_CONTROL_LINE_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @spcp8x5_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spcp8x5_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spcp8x5_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.spcp8x5_private* %9, %struct.spcp8x5_private** %5, align 8
  %10 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %11 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @MCR_CONTROL_LINE_DTR, align 4
  %18 = load i32, i32* @MCR_CONTROL_LINE_RTS, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %21 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @MCR_CONTROL_LINE_DTR, align 4
  %24 = load i32, i32* @MCR_CONTROL_LINE_RTS, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %28 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %22, %16
  %32 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %33 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %36 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %35, i32 0, i32 1
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @spcp8x5_set_ctrl_line(%struct.usb_serial_port* %39, i32 %40)
  ret void
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spcp8x5_set_ctrl_line(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
