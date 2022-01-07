; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cm_calc_dispc_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cm_calc_dispc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_clk_calc_ctx = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.omap_video_timings }
%struct.TYPE_4__ = type { %struct.omap_video_timings* }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.omap_video_timings = type { i64, i32, i32, i32, i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64, i8*)* @dsi_cm_calc_dispc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cm_calc_dispc_cb(i32 %0, i32 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dsi_clk_calc_ctx*, align 8
  %12 = alloca %struct.omap_video_timings*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.dsi_clk_calc_ctx*
  store %struct.dsi_clk_calc_ctx* %14, %struct.dsi_clk_calc_ctx** %11, align 8
  %15 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %16 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %15, i32 0, i32 2
  store %struct.omap_video_timings* %16, %struct.omap_video_timings** %12, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %19 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %23 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %27 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 %25, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %31 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i64 %29, i64* %32, align 8
  %33 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %34 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %35 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.omap_video_timings*, %struct.omap_video_timings** %37, align 8
  %39 = bitcast %struct.omap_video_timings* %33 to i8*
  %40 = bitcast %struct.omap_video_timings* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 48, i1 false)
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %43 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.omap_video_timings*, %struct.omap_video_timings** %47, align 8
  %49 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %52 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %54 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.omap_video_timings*, %struct.omap_video_timings** %56, align 8
  %58 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %61 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %63 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %62, i32 0, i32 4
  store i32 1, i32* %63, align 4
  %64 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %65 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %64, i32 0, i32 3
  store i32 1, i32* %65, align 8
  %66 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %67 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %66, i32 0, i32 2
  store i32 1, i32* %67, align 4
  %68 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %69 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  %70 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %71 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %73 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
