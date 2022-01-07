; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.musb = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@musb_phy_callback = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @musb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.musb* @dev_to_musb(%struct.device* %8)
  store %struct.musb* %9, %struct.musb** %4, align 8
  %10 = load %struct.musb*, %struct.musb** %4, align 8
  %11 = call i32 @musb_exit_debugfs(%struct.musb* %10)
  %12 = load %struct.musb*, %struct.musb** %4, align 8
  %13 = getelementptr inbounds %struct.musb, %struct.musb* %12, i32 0, i32 7
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.musb*, %struct.musb** %4, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 6
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load %struct.musb*, %struct.musb** %4, align 8
  %19 = getelementptr inbounds %struct.musb, %struct.musb* %18, i32 0, i32 5
  %20 = call i32 @cancel_delayed_work_sync(i32* %19)
  %21 = load %struct.musb*, %struct.musb** %4, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  %25 = load %struct.musb*, %struct.musb** %4, align 8
  %26 = call i32 @musb_host_cleanup(%struct.musb* %25)
  %27 = load %struct.musb*, %struct.musb** %4, align 8
  %28 = call i32 @musb_gadget_cleanup(%struct.musb* %27)
  %29 = load %struct.musb*, %struct.musb** %4, align 8
  %30 = call i32 @musb_platform_disable(%struct.musb* %29)
  %31 = load %struct.musb*, %struct.musb** %4, align 8
  %32 = getelementptr inbounds %struct.musb, %struct.musb* %31, i32 0, i32 3
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.musb*, %struct.musb** %4, align 8
  %36 = call i32 @musb_disable_interrupts(%struct.musb* %35)
  %37 = load %struct.musb*, %struct.musb** %4, align 8
  %38 = getelementptr inbounds %struct.musb, %struct.musb* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MUSB_DEVCTL, align 4
  %41 = call i32 @musb_writeb(i32 %39, i32 %40, i32 0)
  %42 = load %struct.musb*, %struct.musb** %4, align 8
  %43 = getelementptr inbounds %struct.musb, %struct.musb* %42, i32 0, i32 3
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.musb*, %struct.musb** %4, align 8
  %47 = call i32 @musb_platform_exit(%struct.musb* %46)
  %48 = load %struct.musb*, %struct.musb** %4, align 8
  %49 = getelementptr inbounds %struct.musb, %struct.musb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pm_runtime_dont_use_autosuspend(i32 %50)
  %52 = load %struct.musb*, %struct.musb** %4, align 8
  %53 = getelementptr inbounds %struct.musb, %struct.musb* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pm_runtime_put_sync(i32 %54)
  %56 = load %struct.musb*, %struct.musb** %4, align 8
  %57 = getelementptr inbounds %struct.musb, %struct.musb* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pm_runtime_disable(i32 %58)
  store i32* null, i32** @musb_phy_callback, align 8
  %60 = load %struct.musb*, %struct.musb** %4, align 8
  %61 = getelementptr inbounds %struct.musb, %struct.musb* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %1
  %65 = load %struct.musb*, %struct.musb** %4, align 8
  %66 = getelementptr inbounds %struct.musb, %struct.musb* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @musb_dma_controller_destroy(i64 %67)
  br label %69

69:                                               ; preds = %64, %1
  %70 = load %struct.musb*, %struct.musb** %4, align 8
  %71 = getelementptr inbounds %struct.musb, %struct.musb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usb_phy_shutdown(i32 %72)
  %74 = load %struct.musb*, %struct.musb** %4, align 8
  %75 = call i32 @musb_free(%struct.musb* %74)
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = call i32 @device_init_wakeup(%struct.device* %76, i32 0)
  ret i32 0
}

declare dso_local %struct.musb* @dev_to_musb(%struct.device*) #1

declare dso_local i32 @musb_exit_debugfs(%struct.musb*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @musb_host_cleanup(%struct.musb*) #1

declare dso_local i32 @musb_gadget_cleanup(%struct.musb*) #1

declare dso_local i32 @musb_platform_disable(%struct.musb*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_disable_interrupts(%struct.musb*) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @musb_platform_exit(%struct.musb*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @musb_dma_controller_destroy(i64) #1

declare dso_local i32 @usb_phy_shutdown(i32) #1

declare dso_local i32 @musb_free(%struct.musb*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
