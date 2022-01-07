; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mfd_cell = type { i32 (%struct.platform_device*)* }
%struct.fb_info = type { i32, %struct.tmiofb_par* }
%struct.tmiofb_par = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tmiofb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmiofb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mfd_cell*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tmiofb_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %7)
  store %struct.mfd_cell* %8, %struct.mfd_cell** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.fb_info* %10, %struct.fb_info** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call i32 @platform_get_irq(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = icmp ne %struct.fb_info* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = load %struct.tmiofb_par*, %struct.tmiofb_par** %17, align 8
  store %struct.tmiofb_par* %18, %struct.tmiofb_par** %6, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = call i32 @unregister_framebuffer(%struct.fb_info* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = call i32 @tmiofb_hw_stop(%struct.platform_device* %21)
  %23 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %24 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %23, i32 0, i32 0
  %25 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.platform_device*)* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %29 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %28, i32 0, i32 0
  %30 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %29, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = call i32 %30(%struct.platform_device* %31)
  br label %33

33:                                               ; preds = %27, %15
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.fb_info* %35)
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @iounmap(i32 %39)
  %41 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %42 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iounmap(i32 %43)
  %45 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %46 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iounmap(i32 %47)
  %49 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %50 = call i32 @framebuffer_release(%struct.fb_info* %49)
  br label %51

51:                                               ; preds = %33, %1
  ret i32 0
}

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @tmiofb_hw_stop(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.fb_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
