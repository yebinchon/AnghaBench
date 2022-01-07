; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_sdi.c_sdi_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_sdi.c_sdi_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.omap_video_timings, %struct.omap_dss_device }
%struct.TYPE_5__ = type { %struct.dispc_clock_info }
%struct.dispc_clock_info = type { i64, i64 }
%struct.omap_video_timings = type { i64, i8*, i8* }
%struct.omap_dss_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@sdi = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [45 x i8] c"failed to enable display: no output/manager\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OMAPDSS_DRIVE_SIG_RISING_EDGE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"Could not find exact pixel clock. Requested %d Hz, got %lu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @sdi_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdi_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_video_timings*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dispc_clock_info, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.omap_dss_device* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdi, i32 0, i32 4), %struct.omap_dss_device** %4, align 8
  store %struct.omap_video_timings* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdi, i32 0, i32 3), %struct.omap_video_timings** %5, align 8
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %11 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @DSSERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %113

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdi, i32 0, i32 0), align 8
  %20 = call i32 @regulator_enable(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %111

24:                                               ; preds = %18
  %25 = call i32 (...) @dispc_runtime_get()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %108

29:                                               ; preds = %24
  %30 = load i8*, i8** @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 8
  %31 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %32 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 8
  %34 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %35 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %37 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @sdi_calc_clock_div(i64 %38, i64* %6, %struct.dispc_clock_info* %7)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %106

43:                                               ; preds = %29
  %44 = bitcast %struct.dispc_clock_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.dispc_clock_info* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdi, i32 0, i32 2, i32 0) to i8*), i8* align 8 %44, i64 16, i1 false)
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = udiv i64 %45, %47
  %49 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %7, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = udiv i64 %48, %50
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %54 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %43
  %58 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %59 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @DSSWARN(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %65 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %57, %43
  %67 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %68 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %71 = call i32 @dss_mgr_set_timings(%struct.TYPE_7__* %69, %struct.omap_video_timings* %70)
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @dss_set_fck_rate(i64 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %105

77:                                               ; preds = %66
  %78 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %79 = call i32 @sdi_config_lcd_manager(%struct.omap_dss_device* %78)
  %80 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %81 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dispc_mgr_set_clock_div(i32 %84, %struct.dispc_clock_info* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdi, i32 0, i32 2, i32 0))
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdi, i32 0, i32 1), align 4
  %87 = call i32 @dss_sdi_init(i32 %86)
  %88 = call i32 (...) @dss_sdi_enable()
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %104

92:                                               ; preds = %77
  %93 = call i32 @mdelay(i32 2)
  %94 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %95 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = call i32 @dss_mgr_enable(%struct.TYPE_7__* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %102

101:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %113

102:                                              ; preds = %100
  %103 = call i32 (...) @dss_sdi_disable()
  br label %104

104:                                              ; preds = %102, %91
  br label %105

105:                                              ; preds = %104, %76
  br label %106

106:                                              ; preds = %105, %42
  %107 = call i32 (...) @dispc_runtime_put()
  br label %108

108:                                              ; preds = %106, %28
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdi, i32 0, i32 0), align 8
  %110 = call i32 @regulator_disable(i32 %109)
  br label %111

111:                                              ; preds = %108, %23
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %101, %14
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @sdi_calc_clock_div(i64, i64*, %struct.dispc_clock_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DSSWARN(i8*, i64, i64) #1

declare dso_local i32 @dss_mgr_set_timings(%struct.TYPE_7__*, %struct.omap_video_timings*) #1

declare dso_local i32 @dss_set_fck_rate(i64) #1

declare dso_local i32 @sdi_config_lcd_manager(%struct.omap_dss_device*) #1

declare dso_local i32 @dispc_mgr_set_clock_div(i32, %struct.dispc_clock_info*) #1

declare dso_local i32 @dss_sdi_init(i32) #1

declare dso_local i32 @dss_sdi_enable(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dss_mgr_enable(%struct.TYPE_7__*) #1

declare dso_local i32 @dss_sdi_disable(...) #1

declare dso_local i32 @dispc_runtime_put(...) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
