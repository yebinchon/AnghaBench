; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_opticon_process_status_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_opticon_process_status_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.opticon_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i8*, i64)* @opticon_process_status_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opticon_process_status_packet(%struct.usb_serial_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.opticon_private*, align 8
  %8 = alloca i64, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %10 = call %struct.opticon_private* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.opticon_private* %10, %struct.opticon_private** %7, align 8
  %11 = load %struct.opticon_private*, %struct.opticon_private** %7, align 8
  %12 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.opticon_private*, %struct.opticon_private** %7, align 8
  %22 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.opticon_private*, %struct.opticon_private** %7, align 8
  %25 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.opticon_private*, %struct.opticon_private** %7, align 8
  %28 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %27, i32 0, i32 1
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local %struct.opticon_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
