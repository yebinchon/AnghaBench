; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cg14.c_cg14_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cg14.c_cg14_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { i32, %struct.cg14_par* }
%struct.cg14_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cg14_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cg14_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.cg14_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.fb_info* @dev_get_drvdata(i32* %6)
  store %struct.fb_info* %7, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.cg14_par*, %struct.cg14_par** %9, align 8
  store %struct.cg14_par* %10, %struct.cg14_par** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = call i32 @unregister_framebuffer(%struct.fb_info* %11)
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = call i32 @fb_dealloc_cmap(i32* %14)
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = load %struct.cg14_par*, %struct.cg14_par** %4, align 8
  %19 = call i32 @cg14_unmap_regs(%struct.platform_device* %16, %struct.fb_info* %17, %struct.cg14_par* %18)
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = call i32 @framebuffer_release(%struct.fb_info* %20)
  ret i32 0
}

declare dso_local %struct.fb_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @cg14_unmap_regs(%struct.platform_device*, %struct.fb_info*, %struct.cg14_par*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
