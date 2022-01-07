; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_select_dispc_clk_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_select_dispc_clk_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FEAT_REG_DISPC_CLK_SWITCH = common dso_local global i32 0, align 4
@DSS_CONTROL = common dso_local global i32 0, align 4
@dss = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dss_select_dispc_clk_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_select_dispc_clk_source(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %10 [
    i32 128, label %7
    i32 129, label %8
    i32 130, label %9
  ]

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %12

9:                                                ; preds = %1
  store i32 2, i32* %3, align 4
  br label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @BUG()
  br label %21

12:                                               ; preds = %9, %8, %7
  %13 = load i32, i32* @FEAT_REG_DISPC_CLK_SWITCH, align 4
  %14 = call i32 @dss_feat_get_reg_field(i32 %13, i32* %4, i32* %5)
  %15 = load i32, i32* @DSS_CONTROL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @REG_FLD_MOD(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss, i32 0, i32 0), align 4
  br label %21

21:                                               ; preds = %12, %10
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dss_feat_get_reg_field(i32, i32*, i32*) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
