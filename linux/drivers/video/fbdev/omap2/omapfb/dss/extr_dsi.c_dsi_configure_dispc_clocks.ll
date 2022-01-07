; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_configure_dispc_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_configure_dispc_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.dispc_clock_info }
%struct.dispc_clock_info = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to calc dispc clocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_configure_dispc_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_configure_dispc_clocks(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.dispc_clock_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %8)
  store %struct.dsi_data* %9, %struct.dsi_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call i64 @dsi_get_pll_hsdiv_dispc_rate(%struct.platform_device* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %13 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %18 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @dispc_calc_clock_rates(i64 %22, %struct.dispc_clock_info* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = call i32 @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %31 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = bitcast %struct.dispc_clock_info* %32 to i8*
  %34 = bitcast %struct.dispc_clock_info* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i64 @dsi_get_pll_hsdiv_dispc_rate(%struct.platform_device*) #1

declare dso_local i32 @dispc_calc_clock_rates(i64, %struct.dispc_clock_info*) #1

declare dso_local i32 @DSSERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
