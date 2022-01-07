; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_bus.c_new_id_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_bus.c_new_id_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.usb_serial_driver = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.device_driver }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @new_id_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @new_id_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_serial_driver*, align 8
  %8 = alloca i64, align 8
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %10 = call %struct.usb_serial_driver* @to_usb_serial_driver(%struct.device_driver* %9)
  store %struct.usb_serial_driver* %10, %struct.usb_serial_driver** %7, align 8
  %11 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %7, align 8
  %12 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %11, i32 0, i32 2
  %13 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %7, align 8
  %14 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @usb_store_new_id(i32* %12, i32 %15, %struct.device_driver* %16, i8* %17, i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  %23 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %7, align 8
  %24 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %7, align 8
  %29 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %7, align 8
  %33 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %7, align 8
  %38 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @usb_store_new_id(i32* %31, i32 %36, %struct.device_driver* %41, i8* %42, i64 %43)
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %27, %22, %3
  %46 = load i64, i64* %8, align 8
  ret i64 %46
}

declare dso_local %struct.usb_serial_driver* @to_usb_serial_driver(%struct.device_driver*) #1

declare dso_local i64 @usb_store_new_id(i32*, i32, %struct.device_driver*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
