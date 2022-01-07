; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_select_lcd_clk_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_select_lcd_clk_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@FEAT_LCD_CLK_SRC = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD2 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD3 = common dso_local global i32 0, align 4
@DSS_CONTROL = common dso_local global i32 0, align 4
@dss = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_select_lcd_clk_source(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @FEAT_LCD_CLK_SRC, align 4
  %9 = call i32 @dss_has_feature(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @dss_select_dispc_clk_source(i32 %12)
  br label %72

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %35 [
    i32 128, label %16
    i32 129, label %17
    i32 130, label %23
  ]

16:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %37

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  store i32 1, i32* %5, align 4
  br label %37

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @OMAP_DSS_CHANNEL_LCD3, align 4
  %30 = icmp ne i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  store i32 1, i32* %5, align 4
  br label %37

35:                                               ; preds = %14
  %36 = call i32 (...) @BUG()
  br label %72

37:                                               ; preds = %31, %17, %16
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 12, i32 19
  br label %48

48:                                               ; preds = %42, %41
  %49 = phi i32 [ 0, %41 ], [ %47, %42 ]
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @DSS_CONTROL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @REG_FLD_MOD(i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %65

59:                                               ; preds = %48
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 2
  br label %65

65:                                               ; preds = %59, %58
  %66 = phi i32 [ 0, %58 ], [ %64, %59 ]
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss, i32 0, i32 0), align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %35, %11
  ret void
}

declare dso_local i32 @dss_has_feature(i32) #1

declare dso_local i32 @dss_select_dispc_clk_source(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
