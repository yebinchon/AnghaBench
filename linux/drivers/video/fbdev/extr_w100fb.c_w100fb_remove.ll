; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { i32, i32, %struct.w100fb_par* }
%struct.w100fb_par = type { i32, i32 }

@remapped_base = common dso_local global i32 0, align 4
@remapped_regs = common dso_local global i32 0, align 4
@remapped_fbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w100fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w100fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.w100fb_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.w100fb_par*, %struct.w100fb_par** %8, align 8
  store %struct.w100fb_par* %9, %struct.w100fb_par** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = call i32 @unregister_framebuffer(%struct.fb_info* %10)
  %12 = load %struct.w100fb_par*, %struct.w100fb_par** %4, align 8
  %13 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vfree(i32 %14)
  %16 = load %struct.w100fb_par*, %struct.w100fb_par** %4, align 8
  %17 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vfree(i32 %18)
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = call i32 @fb_dealloc_cmap(i32* %25)
  %27 = load i32, i32* @remapped_base, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = load i32, i32* @remapped_regs, align 4
  %30 = call i32 @iounmap(i32 %29)
  %31 = load i32, i32* @remapped_fbuf, align 4
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = call i32 @framebuffer_release(%struct.fb_info* %33)
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
