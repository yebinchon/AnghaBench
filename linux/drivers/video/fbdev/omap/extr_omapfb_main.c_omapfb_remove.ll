; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omapfb_device = type { i32, i32* }

@OMAPFB_DISABLED = common dso_local global i32 0, align 4
@omapdss_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omapfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.omapfb_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.omapfb_device* %6, %struct.omapfb_device** %3, align 8
  %7 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %8 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @OMAPFB_DISABLED, align 4
  %11 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %12 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @omapfb_free_resources(%struct.omapfb_device* %13, i32 %14)
  %16 = call i32 @platform_device_unregister(i32* @omapdss_device)
  %17 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %18 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  ret i32 0
}

declare dso_local %struct.omapfb_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @omapfb_free_resources(%struct.omapfb_device*, i32) #1

declare dso_local i32 @platform_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
