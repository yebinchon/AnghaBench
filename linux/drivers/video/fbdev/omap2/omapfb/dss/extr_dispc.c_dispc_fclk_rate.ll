; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_fclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_fclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [5 x i8] c"dsi0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"video0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dsi1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"video1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @dispc_fclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dispc_fclk_rate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.dss_pll*, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  %4 = call i32 (...) @dss_get_dispc_clk_source()
  switch i32 %4, label %33 [
    i32 128, label %5
    i32 129, label %7
    i32 130, label %20
  ]

5:                                                ; preds = %0
  %6 = call i64 (...) @dss_get_dispc_clk_rate()
  store i64 %6, i64* %3, align 8
  br label %35

7:                                                ; preds = %0
  %8 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.dss_pll* %8, %struct.dss_pll** %2, align 8
  %9 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  %10 = icmp ne %struct.dss_pll* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dss_pll* %12, %struct.dss_pll** %2, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  %15 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  br label %35

20:                                               ; preds = %0
  %21 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dss_pll* %21, %struct.dss_pll** %2, align 8
  %22 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  %23 = icmp ne %struct.dss_pll* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dss_pll* %25, %struct.dss_pll** %2, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  %28 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  br label %35

33:                                               ; preds = %0
  %34 = call i32 (...) @BUG()
  store i64 0, i64* %1, align 8
  br label %37

35:                                               ; preds = %26, %13, %5
  %36 = load i64, i64* %3, align 8
  store i64 %36, i64* %1, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i64, i64* %1, align 8
  ret i64 %38
}

declare dso_local i32 @dss_get_dispc_clk_source(...) #1

declare dso_local i64 @dss_get_dispc_clk_rate(...) #1

declare dso_local %struct.dss_pll* @dss_pll_find(i8*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
