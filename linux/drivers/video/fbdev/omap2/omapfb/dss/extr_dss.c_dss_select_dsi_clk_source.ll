; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_select_dsi_clk_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_select_dsi_clk_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@DSS_CONTROL = common dso_local global i32 0, align 4
@dss = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_select_dsi_clk_source(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %19 [
    i32 128, label %8
    i32 129, label %9
    i32 130, label %14
  ]

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  store i32 1, i32* %5, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  store i32 1, i32* %5, align 4
  br label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @BUG()
  br label %36

21:                                               ; preds = %14, %9, %8
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 10
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @DSS_CONTROL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @REG_FLD_MOD(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss, i32 0, i32 0), align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
