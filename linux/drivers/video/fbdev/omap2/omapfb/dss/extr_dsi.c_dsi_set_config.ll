; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_dss_dsi_config = type { i64, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.dsi_clk_calc_ctx = type { i32, i32, i32, %struct.TYPE_2__ }

@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to find suitable DSI clock settings\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HSDIV_DSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to find suitable DSI LP clock settings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dss_dsi_config*)* @dsi_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_set_config(%struct.omap_dss_device* %0, %struct.omap_dss_dsi_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_dsi_config*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.dsi_data*, align 8
  %8 = alloca %struct.dsi_clk_calc_ctx, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_dsi_config* %1, %struct.omap_dss_dsi_config** %5, align 8
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %12 = call %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device* %11)
  store %struct.platform_device* %12, %struct.platform_device** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %14 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %13)
  store %struct.dsi_data* %14, %struct.dsi_data** %7, align 8
  %15 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %16 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %19 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %22 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %24 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %27 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %29 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %35 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %36 = call i32 @dsi_vm_calc(%struct.dsi_data* %34, %struct.omap_dss_dsi_config* %35, %struct.dsi_clk_calc_ctx* %8)
  store i32 %36, i32* %9, align 4
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %39 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %40 = call i32 @dsi_cm_calc(%struct.dsi_data* %38, %struct.omap_dss_dsi_config* %39, %struct.dsi_clk_calc_ctx* %8)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = call i32 @DSSERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %91

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %8, i32 0, i32 3
  %50 = call i32 @dsi_pll_calc_dsi_fck(%struct.TYPE_2__* %49)
  %51 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %8, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @HSDIV_DSI, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %58 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %61 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %64 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %63, i32 0, i32 6
  %65 = call i32 @dsi_lp_clock_calc(i32 %56, i32 %59, i32 %62, i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %91

70:                                               ; preds = %48
  %71 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %72 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %8, i32 0, i32 3
  %74 = bitcast %struct.TYPE_2__* %72 to i8*
  %75 = bitcast %struct.TYPE_2__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 8, i1 false)
  %76 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %8, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %79 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %8, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %83 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %87 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %89 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  store i32 0, i32* %3, align 4
  br label %96

91:                                               ; preds = %68, %44
  %92 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %93 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %70
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsi_vm_calc(%struct.dsi_data*, %struct.omap_dss_dsi_config*, %struct.dsi_clk_calc_ctx*) #1

declare dso_local i32 @dsi_cm_calc(%struct.dsi_data*, %struct.omap_dss_dsi_config*, %struct.dsi_clk_calc_ctx*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_pll_calc_dsi_fck(%struct.TYPE_2__*) #1

declare dso_local i32 @dsi_lp_clock_calc(i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
