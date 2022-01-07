; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.wdm_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@wdm_class = common dso_local global i32 0, align 4
@wdm_mutex = common dso_local global i32 0, align 4
@WDM_DISCONNECTING = common dso_local global i32 0, align 4
@WDM_READ = common dso_local global i32 0, align 4
@wdm_device_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%d open files - postponing cleanup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @wdm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdm_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.wdm_device*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call i32 @usb_deregister_dev(%struct.usb_interface* %5, i32* @wdm_class)
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.wdm_device* @wdm_find_device(%struct.usb_interface* %7)
  store %struct.wdm_device* %8, %struct.wdm_device** %3, align 8
  %9 = call i32 @mutex_lock(i32* @wdm_mutex)
  %10 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %11 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %10, i32 0, i32 7
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @WDM_DISCONNECTING, align 4
  %15 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %16 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %15, i32 0, i32 8
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load i32, i32* @WDM_READ, align 4
  %19 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %20 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %19, i32 0, i32 8
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %23 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %22, i32 0, i32 7
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %27 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %26, i32 0, i32 6
  %28 = call i32 @wake_up_all(i32* %27)
  %29 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %30 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %33 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %32, i32 0, i32 3
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %36 = call i32 @kill_urbs(%struct.wdm_device* %35)
  %37 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %38 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %37, i32 0, i32 5
  %39 = call i32 @cancel_work_sync(i32* %38)
  %40 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %41 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %40, i32 0, i32 4
  %42 = call i32 @cancel_work_sync(i32* %41)
  %43 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %44 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %43, i32 0, i32 3
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %47 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = call i32 @spin_lock(i32* @wdm_device_list_lock)
  %50 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %51 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %50, i32 0, i32 1
  %52 = call i32 @list_del(i32* %51)
  %53 = call i32 @spin_unlock(i32* @wdm_device_list_lock)
  %54 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %55 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %1
  %59 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %60 = call i32 @cleanup(%struct.wdm_device* %59)
  br label %68

61:                                               ; preds = %1
  %62 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %63 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %62, i32 0, i32 0
  %64 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %65 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %61, %58
  %69 = call i32 @mutex_unlock(i32* @wdm_mutex)
  ret void
}

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local %struct.wdm_device* @wdm_find_device(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @kill_urbs(%struct.wdm_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cleanup(%struct.wdm_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
