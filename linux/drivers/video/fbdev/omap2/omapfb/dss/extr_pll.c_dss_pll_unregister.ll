; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_pll.c_dss_pll_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_pll.c_dss_pll_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { i32 }

@dss_plls = common dso_local global %struct.dss_pll** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_pll_unregister(%struct.dss_pll* %0) #0 {
  %2 = alloca %struct.dss_pll*, align 8
  %3 = alloca i32, align 4
  store %struct.dss_pll* %0, %struct.dss_pll** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.dss_pll** %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %10, i64 %12
  %14 = load %struct.dss_pll*, %struct.dss_pll** %13, align 8
  %15 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  %16 = icmp eq %struct.dss_pll* %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %18, i64 %20
  store %struct.dss_pll* null, %struct.dss_pll** %21, align 8
  br label %26

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %17, %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.dss_pll**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
