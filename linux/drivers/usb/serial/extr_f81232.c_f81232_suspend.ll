; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_serial_port** }
%struct.usb_serial_port = type { i32, i32* }
%struct.f81232_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32)* @f81232_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f81232_suspend(%struct.usb_serial* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.f81232_private*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %9 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %8, i32 0, i32 0
  %10 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %9, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %10, i64 0
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %11, align 8
  store %struct.usb_serial_port* %12, %struct.usb_serial_port** %5, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %14 = call %struct.f81232_private* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.f81232_private* %14, %struct.f81232_private** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_kill_urb(i32 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %36 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_kill_urb(i32 %37)
  %39 = load %struct.f81232_private*, %struct.f81232_private** %6, align 8
  %40 = icmp ne %struct.f81232_private* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.f81232_private*, %struct.f81232_private** %6, align 8
  %43 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %42, i32 0, i32 1
  %44 = call i32 @flush_work(i32* %43)
  %45 = load %struct.f81232_private*, %struct.f81232_private** %6, align 8
  %46 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %45, i32 0, i32 0
  %47 = call i32 @flush_work(i32* %46)
  br label %48

48:                                               ; preds = %41, %34
  ret i32 0
}

declare dso_local %struct.f81232_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
