; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_pll.c_dss_pll_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_pll.c_dss_pll_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { i32 }

@dss_plls = common dso_local global %struct.dss_pll** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dss_pll* @dss_pll_find(i8* %0) #0 {
  %2 = alloca %struct.dss_pll*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.dss_pll** %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %5
  %11 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %11, i64 %13
  %15 = load %struct.dss_pll*, %struct.dss_pll** %14, align 8
  %16 = icmp ne %struct.dss_pll* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %18, i64 %20
  %22 = load %struct.dss_pll*, %struct.dss_pll** %21, align 8
  %23 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load %struct.dss_pll**, %struct.dss_pll*** @dss_plls, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dss_pll*, %struct.dss_pll** %29, i64 %31
  %33 = load %struct.dss_pll*, %struct.dss_pll** %32, align 8
  store %struct.dss_pll* %33, %struct.dss_pll** %2, align 8
  br label %39

34:                                               ; preds = %17, %10
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %5
  store %struct.dss_pll* null, %struct.dss_pll** %2, align 8
  br label %39

39:                                               ; preds = %38, %28
  %40 = load %struct.dss_pll*, %struct.dss_pll** %2, align 8
  ret %struct.dss_pll* %40
}

declare dso_local i32 @ARRAY_SIZE(%struct.dss_pll**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
