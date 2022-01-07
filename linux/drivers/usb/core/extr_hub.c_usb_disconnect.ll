; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_8__, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_port = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.usb_hub = type { i32, %struct.usb_port** }

@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"USB disconnect, device number %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unregistering device\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@device_state_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_disconnect(%struct.usb_device** %0) #0 {
  %2 = alloca %struct.usb_device**, align 8
  %3 = alloca %struct.usb_port*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_hub*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_device** %0, %struct.usb_device*** %2, align 8
  store %struct.usb_port* null, %struct.usb_port** %3, align 8
  %7 = load %struct.usb_device**, %struct.usb_device*** %2, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  store %struct.usb_hub* null, %struct.usb_hub** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %11 = call i32 @usb_set_device_state(%struct.usb_device* %9, i32 %10)
  %12 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 1
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_info(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 1
  %20 = call i32 @pm_runtime_barrier(%struct.TYPE_8__* %19)
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = call i32 @usb_lock_device(%struct.usb_device* %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = call i32 @hub_disconnect_children(%struct.usb_device* %23)
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 1
  %27 = call i32 @dev_dbg(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = call i32 @usb_disable_device(%struct.usb_device* %28, i32 0)
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = call i32 @usb_hcd_synchronize_unlinks(%struct.usb_device* %30)
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %1
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.usb_hub* @usb_hub_to_struct_hub(i64 %42)
  store %struct.usb_hub* %43, %struct.usb_hub** %5, align 8
  %44 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %45 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %44, i32 0, i32 1
  %46 = load %struct.usb_port**, %struct.usb_port*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %46, i64 %49
  %51 = load %struct.usb_port*, %struct.usb_port** %50, align 8
  store %struct.usb_port* %51, %struct.usb_port** %3, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i32 @sysfs_remove_link(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %57 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 @sysfs_remove_link(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %62 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @test_and_set_bit(i32 %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %36
  %67 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %68 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %67, i32 0, i32 0
  %69 = call i32 @pm_runtime_get_sync(%struct.TYPE_9__* %68)
  br label %70

70:                                               ; preds = %66, %36
  br label %71

71:                                               ; preds = %70, %1
  %72 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %73 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 2
  %74 = call i32 @usb_remove_ep_devs(i32* %73)
  %75 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %76 = call i32 @usb_unlock_device(%struct.usb_device* %75)
  %77 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %78 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %77, i32 0, i32 1
  %79 = call i32 @device_del(%struct.TYPE_8__* %78)
  %80 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %81 = call i32 @release_devnum(%struct.usb_device* %80)
  %82 = call i32 @spin_lock_irq(i32* @device_state_lock)
  %83 = load %struct.usb_device**, %struct.usb_device*** %2, align 8
  store %struct.usb_device* null, %struct.usb_device** %83, align 8
  %84 = call i32 @spin_unlock_irq(i32* @device_state_lock)
  %85 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %86 = icmp ne %struct.usb_port* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %71
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %90 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @test_and_clear_bit(i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %96 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %95, i32 0, i32 0
  %97 = call i32 @pm_runtime_put(%struct.TYPE_9__* %96)
  br label %98

98:                                               ; preds = %94, %87, %71
  %99 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %100 = call i32 @hub_free_dev(%struct.usb_device* %99)
  %101 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %102 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %101, i32 0, i32 1
  %103 = call i32 @put_device(%struct.TYPE_8__* %102)
  ret void
}

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @pm_runtime_barrier(%struct.TYPE_8__*) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @hub_disconnect_children(%struct.usb_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @usb_disable_device(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_hcd_synchronize_unlinks(%struct.usb_device*) #1

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(i64) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_9__*) #1

declare dso_local i32 @usb_remove_ep_devs(i32*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

declare dso_local i32 @device_del(%struct.TYPE_8__*) #1

declare dso_local i32 @release_devnum(%struct.usb_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_9__*) #1

declare dso_local i32 @hub_free_dev(%struct.usb_device*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
