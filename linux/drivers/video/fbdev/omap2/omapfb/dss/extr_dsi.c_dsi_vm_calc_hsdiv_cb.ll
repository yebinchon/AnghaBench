; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vm_calc_hsdiv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vm_calc_hsdiv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_clk_calc_ctx = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32*, i64* }

@HSDIV_DISPC = common dso_local global i64 0, align 8
@OMAP_DSS_DSI_BURST_MODE = common dso_local global i64 0, align 8
@dsi_vm_calc_dispc_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @dsi_vm_calc_hsdiv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vm_calc_hsdiv_cb(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsi_clk_calc_ctx*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.dsi_clk_calc_ctx*
  store %struct.dsi_clk_calc_ctx* %10, %struct.dsi_clk_calc_ctx** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @HSDIV_DISPC, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %11, i32* %17, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @HSDIV_DISPC, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %18, i64* %24, align 8
  %25 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OMAP_DSS_DSI_BURST_MODE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 10000000
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %8, align 8
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @dsi_vm_calc_dispc_cb, align 4
  %50 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %7, align 8
  %51 = call i32 @dispc_div_calc(i64 %44, i32 %47, i64 %48, i32 %49, %struct.dsi_clk_calc_ctx* %50)
  ret i32 %51
}

declare dso_local i32 @dispc_div_calc(i64, i32, i64, i32, %struct.dsi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
