; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @dsi_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.dsi_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %12 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %11)
  store %struct.dsi_data* %12, %struct.dsi_data** %8, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @of_platform_depopulate(i32* %14)
  %16 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %23 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %22, i32 0, i32 3
  %24 = call i32 @dss_pll_unregister(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %26 = call i32 @dsi_uninit_output(%struct.platform_device* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_disable(i32* %28)
  %30 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %31 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %3
  %35 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %36 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %41 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @regulator_disable(i32* %42)
  %44 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %45 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %39, %34, %3
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @of_platform_depopulate(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dss_pll_unregister(i32*) #1

declare dso_local i32 @dsi_uninit_output(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
