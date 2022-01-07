; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_hvfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_hvfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.fb_info = type { %struct.hvfb_par* }
%struct.hvfb_par = type { i32, i32, i32, i32 }

@panic_notifier_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @hvfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvfb_remove(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.hvfb_par*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %5 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %6 = call %struct.fb_info* @hv_get_drvdata(%struct.hv_device* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.hvfb_par*, %struct.hvfb_par** %8, align 8
  store %struct.hvfb_par* %9, %struct.hvfb_par** %4, align 8
  %10 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %11 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %10, i32 0, i32 3
  %12 = call i32 @atomic_notifier_chain_unregister(i32* @panic_notifier_list, i32* %11)
  %13 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %14 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %16 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = call i32 @unregister_framebuffer(%struct.fb_info* %17)
  %19 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %20 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %19, i32 0, i32 2
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %23 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vmbus_close(i32 %24)
  %26 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %27 = call i32 @hv_set_drvdata(%struct.hv_device* %26, i32* null)
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = call i32 @hvfb_putmem(%struct.fb_info* %28)
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = call i32 @framebuffer_release(%struct.fb_info* %30)
  ret i32 0
}

declare dso_local %struct.fb_info* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @atomic_notifier_chain_unregister(i32*, i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, i32*) #1

declare dso_local i32 @hvfb_putmem(%struct.fb_info*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
