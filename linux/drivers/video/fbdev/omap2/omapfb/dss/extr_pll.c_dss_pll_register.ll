; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_pll.c_dss_pll_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_pll.c_dss_pll_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { i32 }

@dss_plls = common dso_local global %struct.dss_pll** null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_pll_register(%struct.dss_pll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dss_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.dss_pll* %0, %struct.dss_pll** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.dss_pll** %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %11, i64 %13
  %15 = load %struct.dss_pll*, %struct.dss_pll** %14, align 8
  %16 = icmp ne %struct.dss_pll* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %19 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %19, i64 %21
  store %struct.dss_pll* %18, %struct.dss_pll** %22, align 8
  store i32 0, i32* %2, align 4
  br label %30

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ARRAY_SIZE(%struct.dss_pll**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
