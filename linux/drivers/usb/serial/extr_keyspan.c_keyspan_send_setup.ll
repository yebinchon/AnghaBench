; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_send_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_send_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.keyspan_serial_private = type { %struct.keyspan_device_details* }
%struct.keyspan_device_details = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @keyspan_send_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyspan_send_setup(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial*, align 8
  %6 = alloca %struct.keyspan_serial_private*, align 8
  %7 = alloca %struct.keyspan_device_details*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 0
  %10 = load %struct.usb_serial*, %struct.usb_serial** %9, align 8
  store %struct.usb_serial* %10, %struct.usb_serial** %5, align 8
  %11 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %12 = call %struct.keyspan_serial_private* @usb_get_serial_data(%struct.usb_serial* %11)
  store %struct.keyspan_serial_private* %12, %struct.keyspan_serial_private** %6, align 8
  %13 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %6, align 8
  %14 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %13, i32 0, i32 0
  %15 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %14, align 8
  store %struct.keyspan_device_details* %15, %struct.keyspan_device_details** %7, align 8
  %16 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %7, align 8
  %17 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %44 [
    i32 132, label %19
    i32 131, label %24
    i32 130, label %29
    i32 128, label %34
    i32 129, label %39
  ]

19:                                               ; preds = %2
  %20 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @keyspan_usa26_send_setup(%struct.usb_serial* %20, %struct.usb_serial_port* %21, i32 %22)
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @keyspan_usa28_send_setup(%struct.usb_serial* %25, %struct.usb_serial_port* %26, i32 %27)
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @keyspan_usa49_send_setup(%struct.usb_serial* %30, %struct.usb_serial_port* %31, i32 %32)
  br label %44

34:                                               ; preds = %2
  %35 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @keyspan_usa90_send_setup(%struct.usb_serial* %35, %struct.usb_serial_port* %36, i32 %37)
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @keyspan_usa67_send_setup(%struct.usb_serial* %40, %struct.usb_serial_port* %41, i32 %42)
  br label %44

44:                                               ; preds = %2, %39, %34, %29, %24, %19
  ret void
}

declare dso_local %struct.keyspan_serial_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i32 @keyspan_usa26_send_setup(%struct.usb_serial*, %struct.usb_serial_port*, i32) #1

declare dso_local i32 @keyspan_usa28_send_setup(%struct.usb_serial*, %struct.usb_serial_port*, i32) #1

declare dso_local i32 @keyspan_usa49_send_setup(%struct.usb_serial*, %struct.usb_serial_port*, i32) #1

declare dso_local i32 @keyspan_usa90_send_setup(%struct.usb_serial*, %struct.usb_serial_port*, i32) #1

declare dso_local i32 @keyspan_usa67_send_setup(%struct.usb_serial*, %struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
