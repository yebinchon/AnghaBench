; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.wdm_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@WDM_RESETTING = common dso_local global i32 0, align 4
@WDM_READ = common dso_local global i32 0, align 4
@WDM_IN_USE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @wdm_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_pre_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.wdm_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.wdm_device* @wdm_find_device(%struct.usb_interface* %4)
  store %struct.wdm_device* %5, %struct.wdm_device** %3, align 8
  %6 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %7 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %6, i32 0, i32 5
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load i32, i32* @WDM_RESETTING, align 4
  %10 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %11 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %10, i32 0, i32 7
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load i32, i32* @WDM_READ, align 4
  %14 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %15 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %14, i32 0, i32 7
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @WDM_IN_USE, align 4
  %18 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %19 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %18, i32 0, i32 7
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %24 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %26 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %25, i32 0, i32 5
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %29 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %28, i32 0, i32 4
  %30 = call i32 @wake_up_all(i32* %29)
  %31 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %32 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %31, i32 0, i32 3
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %35 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %34, i32 0, i32 2
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %38 = call i32 @kill_urbs(%struct.wdm_device* %37)
  %39 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %40 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %39, i32 0, i32 1
  %41 = call i32 @cancel_work_sync(i32* %40)
  %42 = load %struct.wdm_device*, %struct.wdm_device** %3, align 8
  %43 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %42, i32 0, i32 0
  %44 = call i32 @cancel_work_sync(i32* %43)
  ret i32 0
}

declare dso_local %struct.wdm_device* @wdm_find_device(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kill_urbs(%struct.wdm_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
