; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_lclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_lclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [5 x i8] c"dsi0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"video0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dsi1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"video1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @dispc_mgr_lclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dispc_mgr_lclk_rate(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dss_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @dss_mgr_is_lcd(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @DISPC_DIVISORo(i32 %12)
  %14 = call i32 @dispc_read_reg(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @FLD_GET(i32 %15, i32 23, i32 16)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dss_get_lcd_clk_source(i32 %17)
  switch i32 %18, label %47 [
    i32 128, label %19
    i32 129, label %21
    i32 130, label %34
  ]

19:                                               ; preds = %11
  %20 = call i64 (...) @dss_get_dispc_clk_rate()
  store i64 %20, i64* %6, align 8
  br label %49

21:                                               ; preds = %11
  %22 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.dss_pll* %22, %struct.dss_pll** %4, align 8
  %23 = load %struct.dss_pll*, %struct.dss_pll** %4, align 8
  %24 = icmp ne %struct.dss_pll* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dss_pll* %26, %struct.dss_pll** %4, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.dss_pll*, %struct.dss_pll** %4, align 8
  %29 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  br label %49

34:                                               ; preds = %11
  %35 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dss_pll* %35, %struct.dss_pll** %4, align 8
  %36 = load %struct.dss_pll*, %struct.dss_pll** %4, align 8
  %37 = icmp ne %struct.dss_pll* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dss_pll* %39, %struct.dss_pll** %4, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.dss_pll*, %struct.dss_pll** %4, align 8
  %42 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  br label %49

47:                                               ; preds = %11
  %48 = call i32 (...) @BUG()
  store i64 0, i64* %2, align 8
  br label %56

49:                                               ; preds = %40, %27, %19
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %50, %52
  store i64 %53, i64* %2, align 8
  br label %56

54:                                               ; preds = %1
  %55 = call i64 (...) @dispc_fclk_rate()
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %54, %49, %47
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i64 @dss_mgr_is_lcd(i32) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @DISPC_DIVISORo(i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dss_get_lcd_clk_source(i32) #1

declare dso_local i64 @dss_get_dispc_clk_rate(...) #1

declare dso_local %struct.dss_pll* @dss_pll_find(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @dispc_fclk_rate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
