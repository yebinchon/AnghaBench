; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_usb_serial_port_get_by_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_usb_serial_port_get_by_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32, i32, i64 }

@table_lock = common dso_local global i32 0, align 4
@serial_minors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_serial_port* @usb_serial_port_get_by_minor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 @mutex_lock(i32* @table_lock)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.usb_serial_port* @idr_find(i32* @serial_minors, i32 %6)
  store %struct.usb_serial_port* %7, %struct.usb_serial_port** %4, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %9 = icmp ne %struct.usb_serial_port* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 0
  %14 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  store %struct.usb_serial* %14, %struct.usb_serial** %3, align 8
  %15 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %16 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %24 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  store %struct.usb_serial_port* null, %struct.usb_serial_port** %4, align 8
  br label %30

26:                                               ; preds = %11
  %27 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %28 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %27, i32 0, i32 0
  %29 = call i32 @kref_get(i32* %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %10
  %32 = call i32 @mutex_unlock(i32* @table_lock)
  %33 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  ret %struct.usb_serial_port* %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.usb_serial_port* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
