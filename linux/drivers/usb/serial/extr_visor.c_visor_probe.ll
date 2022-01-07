; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_visor.c_visor_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_visor.c_visor_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.usb_device_id = type { i64, i64, i64 }

@SAMSUNG_VENDOR_ID = common dso_local global i64 0, align 8
@SAMSUNG_SPH_I500_ID = common dso_local global i64 0, align 8
@USB_CLASS_COMM = common dso_local global i64 0, align 8
@USB_CDC_SUBCLASS_ACM = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"active config #%d != 1 ??\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @visor_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visor_probe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.usb_serial*, %struct.usb_device_id*)*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SAMSUNG_VENDOR_ID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SAMSUNG_SPH_I500_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %21 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USB_CLASS_COMM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %19
  %29 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %30 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_CDC_SUBCLASS_ACM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %83

40:                                               ; preds = %28, %19, %13, %2
  %41 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %42 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %66

50:                                               ; preds = %40
  %51 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %52 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %56 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %83

66:                                               ; preds = %40
  %67 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %73 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = bitcast i8* %75 to i32 (%struct.usb_serial*, %struct.usb_device_id*)*
  store i32 (%struct.usb_serial*, %struct.usb_device_id*)* %76, i32 (%struct.usb_serial*, %struct.usb_device_id*)** %7, align 8
  %77 = load i32 (%struct.usb_serial*, %struct.usb_device_id*)*, i32 (%struct.usb_serial*, %struct.usb_device_id*)** %7, align 8
  %78 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %79 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %80 = call i32 %77(%struct.usb_serial* %78, %struct.usb_device_id* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %71, %66
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %50, %37
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
