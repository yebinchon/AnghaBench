; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_endpoint_hack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_endpoint_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_device*, %struct.usb_interface* }
%struct.usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_interface** }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.device }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.usb_serial_endpoints = type { i64, %struct.usb_endpoint_descriptor** }

@.str = private unnamed_addr constant [42 x i8] c"found interrupt in on separate interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_serial_endpoints*)* @pl2303_endpoint_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_endpoint_hack(%struct.usb_serial* %0, %struct.usb_serial_endpoints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_serial_endpoints*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_serial_endpoints* %1, %struct.usb_serial_endpoints** %5, align 8
  %12 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %13 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %12, i32 0, i32 1
  %14 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  store %struct.usb_interface* %14, %struct.usb_interface** %6, align 8
  %15 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %16 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %7, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 1
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.usb_interface**, %struct.usb_interface*** %24, align 8
  %26 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %25, i64 0
  %27 = load %struct.usb_interface*, %struct.usb_interface** %26, align 8
  %28 = icmp eq %struct.usb_interface* %20, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

30:                                               ; preds = %2
  %31 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.usb_interface**, %struct.usb_interface*** %34, align 8
  %36 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %35, i64 0
  %37 = load %struct.usb_interface*, %struct.usb_interface** %36, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 0
  %39 = load %struct.usb_host_interface*, %struct.usb_host_interface** %38, align 8
  store %struct.usb_host_interface* %39, %struct.usb_host_interface** %9, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %81, %30
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %43 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %40
  %48 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %49 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %54, %struct.usb_endpoint_descriptor** %10, align 8
  %55 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %56 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %81

59:                                               ; preds = %47
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %63 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %66 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %65, i32 0, i32 1
  %67 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %66, align 8
  %68 = call i64 @ARRAY_SIZE(%struct.usb_endpoint_descriptor** %67)
  %69 = icmp slt i64 %64, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %59
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %72 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %73 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %72, i32 0, i32 1
  %74 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %73, align 8
  %75 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %76 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = getelementptr inbounds %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %74, i64 %77
  store %struct.usb_endpoint_descriptor* %71, %struct.usb_endpoint_descriptor** %79, align 8
  br label %80

80:                                               ; preds = %70, %59
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %40

84:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %29
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.usb_endpoint_descriptor**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
