; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbefb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbefb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { %struct.gbefb_par* }
%struct.gbefb_par = type { i32 }

@GBE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gbefb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbefb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.gbefb_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.gbefb_par*, %struct.gbefb_par** %8, align 8
  store %struct.gbefb_par* %9, %struct.gbefb_par** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = call i32 @unregister_framebuffer(%struct.fb_info* %10)
  %12 = call i32 (...) @gbe_turn_off()
  %13 = load %struct.gbefb_par*, %struct.gbefb_par** %4, align 8
  %14 = getelementptr inbounds %struct.gbefb_par, %struct.gbefb_par* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @arch_phys_wc_del(i32 %15)
  %17 = load i32, i32* @GBE_BASE, align 4
  %18 = call i32 @release_mem_region(i32 %17, i32 4)
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @gbefb_remove_sysfs(i32* %20)
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = call i32 @framebuffer_release(%struct.fb_info* %22)
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @gbe_turn_off(...) #1

declare dso_local i32 @arch_phys_wc_del(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @gbefb_remove_sysfs(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
