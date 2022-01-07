; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { i32, %struct.sh7760fb_par* }
%struct.sh7760fb_par = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh7760fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.sh7760fb_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %8, align 8
  store %struct.sh7760fb_par* %9, %struct.sh7760fb_par** %4, align 8
  %10 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = call i32 @sh7760fb_blank(i32 %10, %struct.fb_info* %11)
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = call i32 @unregister_framebuffer(%struct.fb_info* %13)
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = call i32 @fb_dealloc_cmap(i32* %16)
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = call i32 @sh7760fb_free_mem(%struct.fb_info* %18)
  %20 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %21 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %26 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %29 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %28, i32 0, i32 3
  %30 = call i32 @free_irq(i64 %27, i32* %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %33 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @iounmap(i32 %34)
  %36 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %37 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %42 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @resource_size(%struct.TYPE_2__* %43)
  %45 = call i32 @release_mem_region(i32 %40, i32 %44)
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = call i32 @framebuffer_release(%struct.fb_info* %46)
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sh7760fb_blank(i32, %struct.fb_info*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @sh7760fb_free_mem(%struct.fb_info*) #1

declare dso_local i32 @free_irq(i64, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
