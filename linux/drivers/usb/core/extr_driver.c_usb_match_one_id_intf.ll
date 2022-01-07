; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_match_one_id_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_match_one_id_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.usb_host_interface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.usb_device_id = type { i32, i64, i64, i64, i64 }

@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@USB_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_CLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_SUBCLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_PROTOCOL = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_match_one_id_intf(%struct.usb_device* %0, %struct.usb_host_interface* %1, %struct.usb_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %6, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %7, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %16 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @USB_DEVICE_ID_MATCH_VENDOR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %23 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_CLASS, align 4
  %26 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_SUBCLASS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_PROTOCOL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_NUMBER, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %24, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %104

35:                                               ; preds = %21, %14, %3
  %36 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %37 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_CLASS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %44 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %47 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %104

52:                                               ; preds = %42, %35
  %53 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %54 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_SUBCLASS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %61 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %64 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %104

69:                                               ; preds = %59, %52
  %70 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %71 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_PROTOCOL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %78 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %81 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %79, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %104

86:                                               ; preds = %76, %69
  %87 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %88 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_NUMBER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %95 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %98 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %96, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %104

103:                                              ; preds = %93, %86
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %102, %85, %68, %51, %34
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
