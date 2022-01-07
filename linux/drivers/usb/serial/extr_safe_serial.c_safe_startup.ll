; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_safe_serial.c_safe_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_safe_serial.c_safe_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CDC_DEVICE_CLASS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@LINEO_INTERFACE_CLASS = common dso_local global i64 0, align 8
@LINEO_INTERFACE_SUBCLASS_SAFESERIAL = common dso_local global i64 0, align 8
@padded = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @safe_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_interface_descriptor*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %5 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %6 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CDC_DEVICE_CLASS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %18 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.usb_interface_descriptor* %22, %struct.usb_interface_descriptor** %4, align 8
  %23 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LINEO_INTERFACE_CLASS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %16
  %32 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %33 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LINEO_INTERFACE_SUBCLASS_SAFESERIAL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %31
  %41 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %42 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %46 [
    i32 129, label %44
    i32 128, label %45
  ]

44:                                               ; preds = %40
  br label %49

45:                                               ; preds = %40
  store i32 1, i32* @padded, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %45, %44
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %37, %28, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
