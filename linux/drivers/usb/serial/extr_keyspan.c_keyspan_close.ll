; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.keyspan_port_private = type { i32*, i32*, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @keyspan_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyspan_close(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.keyspan_port_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = call %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %5)
  store %struct.keyspan_port_private* %6, %struct.keyspan_port_private** %4, align 8
  %7 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %4, align 8
  %8 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %7, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %4, align 8
  %10 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %12 = call i32 @keyspan_send_setup(%struct.usb_serial_port* %11, i32 2)
  %13 = call i32 @mdelay(i32 100)
  %14 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %4, align 8
  %15 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %4, align 8
  %17 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %4, align 8
  %19 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_kill_urb(i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %42, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %4, align 8
  %27 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_kill_urb(i32 %32)
  %34 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %4, align 8
  %35 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_kill_urb(i32 %40)
  br label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %22

45:                                               ; preds = %22
  ret void
}

declare dso_local %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @keyspan_send_setup(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
