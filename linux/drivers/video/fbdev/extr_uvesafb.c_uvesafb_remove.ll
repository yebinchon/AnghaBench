; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fb_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.uvesafb_par* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.uvesafb_par = type { i32, i32, i32, i32 }

@uvesafb_dev_attgrp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uvesafb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.uvesafb_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = icmp ne %struct.fb_info* %7, null
  br i1 %8, label %9, label %59

9:                                                ; preds = %1
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 4
  %12 = load %struct.uvesafb_par*, %struct.uvesafb_par** %11, align 8
  store %struct.uvesafb_par* %12, %struct.uvesafb_par** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @sysfs_remove_group(i32* %15, i32* @uvesafb_dev_attgrp)
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = call i32 @unregister_framebuffer(%struct.fb_info* %17)
  %19 = call i32 @release_region(i32 960, i32 32)
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @iounmap(i32 %22)
  %24 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %25 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @arch_phys_wc_del(i32 %26)
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @release_mem_region(i32 %31, i32 %35)
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fb_destroy_modedb(i32 %40)
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = call i32 @fb_dealloc_cmap(i32* %43)
  %45 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %46 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %50 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kfree(i32 %51)
  %53 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %54 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kfree(i32 %55)
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = call i32 @framebuffer_release(%struct.fb_info* %57)
  br label %59

59:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @arch_phys_wc_del(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @fb_destroy_modedb(i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
