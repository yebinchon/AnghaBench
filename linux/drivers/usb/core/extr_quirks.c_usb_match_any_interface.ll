; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_quirks.c_usb_match_any_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_quirks.c_usb_match_any_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_host_config*, %struct.TYPE_4__ }
%struct.usb_host_config = type { %struct.usb_interface_cache**, %struct.TYPE_3__ }
%struct.usb_interface_cache = type { i64, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_device_id*)* @usb_match_any_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_match_any_interface(%struct.usb_device* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface_cache*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %61, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %11
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load %struct.usb_host_config*, %struct.usb_host_config** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %21, i64 %23
  store %struct.usb_host_config* %24, %struct.usb_host_config** %7, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %57, %18
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %28 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %26, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %34 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %33, i32 0, i32 0
  %35 = load %struct.usb_interface_cache**, %struct.usb_interface_cache*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.usb_interface_cache*, %struct.usb_interface_cache** %35, i64 %37
  %39 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %38, align 8
  store %struct.usb_interface_cache* %39, %struct.usb_interface_cache** %9, align 8
  %40 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %9, align 8
  %41 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %57

45:                                               ; preds = %32
  %46 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %9, align 8
  %47 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %46, i32 0, i32 1
  %48 = load %struct.usb_host_interface*, %struct.usb_host_interface** %47, align 8
  %49 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %48, i64 0
  store %struct.usb_host_interface* %49, %struct.usb_host_interface** %10, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %51 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %52 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %53 = call i64 @usb_match_one_id_intf(%struct.usb_device* %50, %struct.usb_host_interface* %51, %struct.usb_device_id* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %65

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %25

60:                                               ; preds = %25
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %11

64:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @usb_match_one_id_intf(%struct.usb_device*, %struct.usb_host_interface*, %struct.usb_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
