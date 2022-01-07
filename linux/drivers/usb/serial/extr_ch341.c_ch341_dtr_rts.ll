; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ch341_private = type { i32, i32 }

@CH341_BIT_RTS = common dso_local global i32 0, align 4
@CH341_BIT_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @ch341_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch341_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ch341_private*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = call %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port* %7)
  store %struct.ch341_private* %8, %struct.ch341_private** %5, align 8
  %9 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %10 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @CH341_BIT_RTS, align 4
  %17 = load i32, i32* @CH341_BIT_DTR, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %20 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @CH341_BIT_RTS, align 4
  %25 = load i32, i32* @CH341_BIT_DTR, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %29 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %23, %15
  %33 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %34 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %33, i32 0, i32 1
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %38 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %43 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ch341_set_handshake(i32 %41, i32 %44)
  ret void
}

declare dso_local %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ch341_set_handshake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
