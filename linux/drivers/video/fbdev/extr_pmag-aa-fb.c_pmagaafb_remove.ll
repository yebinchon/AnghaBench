; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmag-aa-fb.c_pmagaafb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmag-aa-fb.c_pmagaafb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tc_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.fb_info = type { i32, %struct.aafb_par* }
%struct.aafb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pmagaafb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmagaafb_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tc_dev*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.aafb_par*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.tc_dev* @to_tc_dev(%struct.device* %8)
  store %struct.tc_dev* %9, %struct.tc_dev** %3, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %10)
  store %struct.fb_info* %11, %struct.fb_info** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 1
  %14 = load %struct.aafb_par*, %struct.aafb_par** %13, align 8
  store %struct.aafb_par* %14, %struct.aafb_par** %5, align 8
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = call i32 @put_device(%struct.device* %15)
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = call i32 @unregister_framebuffer(%struct.fb_info* %17)
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @iounmap(i32 %21)
  %23 = load %struct.aafb_par*, %struct.aafb_par** %5, align 8
  %24 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iounmap(i32 %25)
  %27 = load %struct.tc_dev*, %struct.tc_dev** %3, align 8
  %28 = getelementptr inbounds %struct.tc_dev, %struct.tc_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.tc_dev*, %struct.tc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.tc_dev, %struct.tc_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %34, %35
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @release_mem_region(i64 %38, i64 %39)
  %41 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %42 = call i32 @framebuffer_release(%struct.fb_info* %41)
  ret i32 0
}

declare dso_local %struct.tc_dev* @to_tc_dev(%struct.device*) #1

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
