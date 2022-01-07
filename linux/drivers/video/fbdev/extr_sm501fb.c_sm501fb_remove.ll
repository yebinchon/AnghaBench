; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sm501fb_info = type { %struct.fb_info** }
%struct.fb_info = type { i32 }

@HEAD_CRT = common dso_local global i32 0, align 4
@HEAD_PANEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sm501fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sm501fb_info*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.sm501fb_info* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sm501fb_info* %7, %struct.sm501fb_info** %3, align 8
  %8 = load %struct.sm501fb_info*, %struct.sm501fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %8, i32 0, i32 0
  %10 = load %struct.fb_info**, %struct.fb_info*** %9, align 8
  %11 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %10, i64 0
  %12 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  store %struct.fb_info* %12, %struct.fb_info** %4, align 8
  %13 = load %struct.sm501fb_info*, %struct.sm501fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %13, i32 0, i32 0
  %15 = load %struct.fb_info**, %struct.fb_info*** %14, align 8
  %16 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %15, i64 1
  %17 = load %struct.fb_info*, %struct.fb_info** %16, align 8
  store %struct.fb_info* %17, %struct.fb_info** %5, align 8
  %18 = load %struct.sm501fb_info*, %struct.sm501fb_info** %3, align 8
  %19 = load i32, i32* @HEAD_CRT, align 4
  %20 = call i32 @sm501_free_init_fb(%struct.sm501fb_info* %18, i32 %19)
  %21 = load %struct.sm501fb_info*, %struct.sm501fb_info** %3, align 8
  %22 = load i32, i32* @HEAD_PANEL, align 4
  %23 = call i32 @sm501_free_init_fb(%struct.sm501fb_info* %21, i32 %22)
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = icmp ne %struct.fb_info* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %28 = call i32 @unregister_framebuffer(%struct.fb_info* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %31 = icmp ne %struct.fb_info* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %34 = call i32 @unregister_framebuffer(%struct.fb_info* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.sm501fb_info*, %struct.sm501fb_info** %3, align 8
  %37 = call i32 @sm501fb_stop(%struct.sm501fb_info* %36)
  %38 = load %struct.sm501fb_info*, %struct.sm501fb_info** %3, align 8
  %39 = call i32 @kfree(%struct.sm501fb_info* %38)
  %40 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %41 = call i32 @framebuffer_release(%struct.fb_info* %40)
  %42 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %43 = call i32 @framebuffer_release(%struct.fb_info* %42)
  ret i32 0
}

declare dso_local %struct.sm501fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sm501_free_init_fb(%struct.sm501fb_info*, i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @sm501fb_stop(%struct.sm501fb_info*) #1

declare dso_local i32 @kfree(%struct.sm501fb_info*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
