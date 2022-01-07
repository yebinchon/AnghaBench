; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_handle_framedone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_handle_framedone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32 (i32, i32)*, i64 }

@DSI_TIMING2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DISPC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @dsi_handle_framedone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_handle_framedone(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %6)
  store %struct.dsi_data* %7, %struct.dsi_data** %5, align 8
  %8 = call i32 (...) @dispc_enable_sidle()
  %9 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %10 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @DSI_TIMING2, align 4
  %16 = call i32 @REG_FLD_MOD(%struct.platform_device* %14, i32 %15, i32 1, i32 15, i32 15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 1
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %23 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(i32 %21, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = call i32 @dsi_perf_show(%struct.platform_device* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %17
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dispc_enable_sidle(...) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_perf_show(%struct.platform_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
