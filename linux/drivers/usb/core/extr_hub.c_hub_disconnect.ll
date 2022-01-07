; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_hub = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.usb_device = type { i32 }

@HUB_DISCONNECT = common dso_local global i32 0, align 4
@usb_port_peer_mutex = common dso_local global i32 0, align 4
@device_state_lock = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@highspeed_hubs = common dso_local global i32 0, align 4
@hub_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @hub_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.usb_hub* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.usb_hub* %7, %struct.usb_hub** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %8)
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %13 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %15 = load i32, i32* @HUB_DISCONNECT, align 4
  %16 = call i32 @hub_quiesce(%struct.usb_hub* %14, i32 %15)
  %17 = call i32 @mutex_lock(i32* @usb_port_peer_mutex)
  %18 = call i32 @spin_lock_irq(i32* @device_state_lock)
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %25 = call i32 @usb_set_intfdata(%struct.usb_interface* %24, i32* null)
  %26 = call i32 @spin_unlock_irq(i32* @device_state_lock)
  br label %27

27:                                               ; preds = %34, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @usb_hub_remove_port_device(%struct.usb_hub* %31, i32 %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %27

37:                                               ; preds = %27
  %38 = call i32 @mutex_unlock(i32* @usb_port_peer_mutex)
  %39 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %40 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %39, i32 0, i32 7
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @USB_SPEED_HIGH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @highspeed_hubs, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* @highspeed_hubs, align 4
  br label %49

49:                                               ; preds = %46, %37
  %50 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %51 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_free_urb(i32 %52)
  %54 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %55 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kfree(i32 %56)
  %58 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %59 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @kfree(i32 %60)
  %62 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %63 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %67 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @kfree(i32 %68)
  %70 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 0
  %72 = call i32 @pm_suspend_ignore_children(i32* %71, i32 0)
  %73 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %74 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %73, i32 0, i32 1
  %75 = load i32, i32* @hub_release, align 4
  %76 = call i32 @kref_put(i32* %74, i32 %75)
  ret void
}

declare dso_local %struct.usb_hub* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @hub_quiesce(%struct.usb_hub*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_hub_remove_port_device(%struct.usb_hub*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
