; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_intf.c_r871xu_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_intf.c_r871xu_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.usb_interface = type { i32 }
%struct.net_device = type { i32 }
%struct.usb_device = type { i64 }
%struct._adapter = type { i32, i32, i32 }

@drvpriv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @r871xu_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r871xu_dev_remove(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct._adapter*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.net_device* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %8)
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct._adapter* @netdev_priv(%struct.net_device* %13)
  store %struct._adapter* %14, %struct._adapter** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %16 = call i32 @usb_set_intfdata(%struct.usb_interface* %15, i32* null)
  %17 = load %struct._adapter*, %struct._adapter** %5, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @release_firmware(i32 %19)
  %21 = load %struct._adapter*, %struct._adapter** %5, align 8
  %22 = getelementptr inbounds %struct._adapter, %struct._adapter* %21, i32 0, i32 1
  %23 = call i32 @wait_for_completion(i32* %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drvpriv, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load %struct._adapter*, %struct._adapter** %5, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %12
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @unregister_netdev(%struct.net_device* %30)
  %32 = call i32 (...) @flush_scheduled_work()
  %33 = call i32 @udelay(i32 1)
  %34 = load %struct._adapter*, %struct._adapter** %5, align 8
  %35 = call i32 @r8712_stop_drv_timers(%struct._adapter* %34)
  %36 = load %struct._adapter*, %struct._adapter** %5, align 8
  %37 = call i32 @r871x_dev_unload(%struct._adapter* %36)
  %38 = load %struct._adapter*, %struct._adapter** %5, align 8
  %39 = call i32 @r8712_free_drv_sw(%struct._adapter* %38)
  %40 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %41 = call i32 @usb_put_dev(%struct.usb_device* %40)
  br label %42

42:                                               ; preds = %29, %1
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %50 = call i32 @usb_reset_device(%struct.usb_device* %49)
  br label %51

51:                                               ; preds = %48, %42
  ret void
}

declare dso_local %struct.net_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @r8712_stop_drv_timers(%struct._adapter*) #1

declare dso_local i32 @r871x_dev_unload(%struct._adapter*) #1

declare dso_local i32 @r8712_free_drv_sw(%struct._adapter*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
