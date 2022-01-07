; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_get_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_get_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dsi0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dsi1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"video0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"video1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dss_pll* (i32)* @dpi_get_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dss_pll* @dpi_get_pll(i32 %0) #0 {
  %2 = alloca %struct.dss_pll*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @omapdss_get_version()
  switch i32 %4, label %27 [
    i32 138, label %5
    i32 137, label %5
    i32 136, label %5
    i32 135, label %5
    i32 141, label %5
    i32 140, label %5
    i32 133, label %6
    i32 132, label %6
    i32 134, label %6
    i32 131, label %13
    i32 139, label %20
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store %struct.dss_pll* null, %struct.dss_pll** %2, align 8
  br label %28

6:                                                ; preds = %1, %1, %1
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %12 [
    i32 130, label %8
    i32 129, label %10
  ]

8:                                                ; preds = %6
  %9 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.dss_pll* %9, %struct.dss_pll** %2, align 8
  br label %28

10:                                               ; preds = %6
  %11 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dss_pll* %11, %struct.dss_pll** %2, align 8
  br label %28

12:                                               ; preds = %6
  store %struct.dss_pll* null, %struct.dss_pll** %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %19 [
    i32 130, label %15
    i32 128, label %17
  ]

15:                                               ; preds = %13
  %16 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.dss_pll* %16, %struct.dss_pll** %2, align 8
  br label %28

17:                                               ; preds = %13
  %18 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dss_pll* %18, %struct.dss_pll** %2, align 8
  br label %28

19:                                               ; preds = %13
  store %struct.dss_pll* null, %struct.dss_pll** %2, align 8
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  switch i32 %21, label %26 [
    i32 130, label %22
    i32 129, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %20, %20
  %23 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dss_pll* %23, %struct.dss_pll** %2, align 8
  br label %28

24:                                               ; preds = %20
  %25 = call %struct.dss_pll* @dss_pll_find(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dss_pll* %25, %struct.dss_pll** %2, align 8
  br label %28

26:                                               ; preds = %20
  store %struct.dss_pll* null, %struct.dss_pll** %2, align 8
  br label %28

27:                                               ; preds = %1
  store %struct.dss_pll* null, %struct.dss_pll** %2, align 8
  br label %28

28:                                               ; preds = %27, %26, %24, %22, %19, %17, %15, %12, %10, %8, %5
  %29 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  ret %struct.dss_pll* %29
}

declare dso_local i32 @omapdss_get_version(...) #1

declare dso_local %struct.dss_pll* @dss_pll_find(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
