; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl871x_load_fw_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl871x_load_fw_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct._adapter = type { i32, %struct.firmware*, %struct.usb_interface*, %struct.TYPE_2__, i32 }
%struct.usb_interface = type { i32 }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"r8712u: Firmware request failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @rtl871x_load_fw_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl871x_load_fw_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct._adapter*
  store %struct._adapter* %9, %struct._adapter** %5, align 8
  %10 = load %struct._adapter*, %struct._adapter** %5, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 4
  %12 = call i32 @complete(i32* %11)
  %13 = load %struct.firmware*, %struct.firmware** %3, align 8
  %14 = icmp ne %struct.firmware* %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = load %struct._adapter*, %struct._adapter** %5, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %6, align 8
  %20 = load %struct._adapter*, %struct._adapter** %5, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %21, align 8
  store %struct.usb_interface* %22, %struct.usb_interface** %7, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = call i32 @usb_put_dev(%struct.usb_device* %26)
  %28 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %29 = call i32 @usb_set_intfdata(%struct.usb_interface* %28, i32* null)
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.firmware*, %struct.firmware** %3, align 8
  %32 = load %struct._adapter*, %struct._adapter** %5, align 8
  %33 = getelementptr inbounds %struct._adapter, %struct._adapter* %32, i32 0, i32 1
  store %struct.firmware* %31, %struct.firmware** %33, align 8
  %34 = load %struct._adapter*, %struct._adapter** %5, align 8
  %35 = getelementptr inbounds %struct._adapter, %struct._adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @register_netdev(i32 %36)
  br label %38

38:                                               ; preds = %30, %15
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @register_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
