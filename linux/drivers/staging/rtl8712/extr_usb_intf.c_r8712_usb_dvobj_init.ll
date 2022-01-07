; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_intf.c_r8712_usb_dvobj_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_intf.c_r8712_usb_dvobj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i32 }
%struct._adapter = type { i32, %struct.dvobj_priv }
%struct.dvobj_priv = type { i32, i32, %struct._adapter*, %struct.usb_device* }
%struct.usb_device = type { i64, i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@pintf = common dso_local global %struct.TYPE_2__* null, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"r8712u: USB_SPEED_HIGH with %d endpoints\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"r8712u: USB_SPEED_LOW with %d endpoints\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct._adapter*)* @r8712_usb_dvobj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @r8712_usb_dvobj_init(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_interface_descriptor*, align 8
  %6 = alloca %struct.dvobj_priv*, align 8
  %7 = alloca %struct.usb_device*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %8 = load i64, i64* @_SUCCESS, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct._adapter*, %struct._adapter** %2, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 1
  store %struct.dvobj_priv* %10, %struct.dvobj_priv** %6, align 8
  %11 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %12 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %11, i32 0, i32 3
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  %14 = load %struct._adapter*, %struct._adapter** %2, align 8
  %15 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %16 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %15, i32 0, i32 2
  store %struct._adapter* %14, %struct._adapter** %16, align 8
  %17 = load %struct._adapter*, %struct._adapter** %2, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 0
  store i32 6, i32* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pintf, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i64 0
  store %struct.usb_host_interface* %22, %struct.usb_host_interface** %4, align 8
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 0
  store %struct.usb_interface_descriptor* %24, %struct.usb_interface_descriptor** %5, align 8
  %25 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %26 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %29 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_SPEED_HIGH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %37 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 1
  %40 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %41 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %53

44:                                               ; preds = %1
  %45 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %46 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 1
  %49 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %50 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %44, %35
  %54 = load %struct._adapter*, %struct._adapter** %2, align 8
  %55 = call i64 @r8712_alloc_io_queue(%struct._adapter* %54)
  %56 = load i64, i64* @_FAIL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @_FAIL, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @r8712_alloc_io_queue(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
