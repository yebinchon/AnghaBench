; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_sync_vc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_sync_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @dsi_sync_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_sync_vc(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %7)
  store %struct.dsi_data* %8, %struct.dsi_data** %6, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = call i32 @dsi_bus_is_locked(%struct.platform_device* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = call i32 (...) @in_interrupt()
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dsi_vc_is_enabled(%struct.platform_device* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %39 [
    i32 128, label %31
    i32 129, label %35
  ]

31:                                               ; preds = %22
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dsi_sync_vc_vp(%struct.platform_device* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dsi_sync_vc_l4(%struct.platform_device* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %22
  %40 = call i32 (...) @BUG()
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %35, %31, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.platform_device*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @dsi_vc_is_enabled(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_sync_vc_vp(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_sync_vc_l4(%struct.platform_device*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
