; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_setup_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_setup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.lcd_panel* }
%struct.lcd_panel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@lcdc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAP_LCDC_PANEL_TFT = common dso_local global i32 0, align 4
@OMAP_LCDC_CONTROL = common dso_local global i32 0, align 4
@OMAP_LCDC_CTRL_LCD_TFT = common dso_local global i32 0, align 4
@OMAP_LCDC_TIMING2 = common dso_local global i32 0, align 4
@OMAP_LCDC_SIGNAL_MASK = common dso_local global i32 0, align 4
@OMAP_LCDC_TIMING0 = common dso_local global i32 0, align 4
@OMAP_LCDC_TIMING1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [134 x i8] c"Pixel clock divider value is obsolete.\0ATry to set pixel_clock to %lu and pcd to 0 in drivers/video/omap/lcd_%s.c and submit a patch.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_regs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lcd_panel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.lcd_panel*, %struct.lcd_panel** %7, align 8
  store %struct.lcd_panel* %8, %struct.lcd_panel** %2, align 8
  %9 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %10 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OMAP_LCDC_PANEL_TFT, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @OMAP_LCDC_CONTROL, align 4
  %15 = call i32 @omap_readl(i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @OMAP_LCDC_CTRL_LCD_TFT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %1, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = load i32, i32* @OMAP_LCDC_CTRL_LCD_TFT, align 4
  br label %25

24:                                               ; preds = %0
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @OMAP_LCDC_CONTROL, align 4
  %31 = call i32 @omap_writel(i32 %29, i32 %30)
  %32 = load i32, i32* @OMAP_LCDC_TIMING2, align 4
  %33 = call i32 @omap_readl(i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = and i32 %34, -66060289
  store i32 %35, i32* %1, align 4
  %36 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %37 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OMAP_LCDC_SIGNAL_MASK, align 4
  %40 = and i32 %38, %39
  %41 = shl i32 %40, 20
  %42 = load i32, i32* %1, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @OMAP_LCDC_TIMING2, align 4
  %46 = call i32 @omap_writel(i32 %44, i32 %45)
  %47 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %48 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  %51 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %52 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = shl i32 %54, 10
  %56 = load i32, i32* %1, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %1, align 4
  %58 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %59 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %1, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %1, align 4
  %65 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %66 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = shl i32 %68, 24
  %70 = load i32, i32* %1, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @OMAP_LCDC_TIMING0, align 4
  %74 = call i32 @omap_writel(i32 %72, i32 %73)
  %75 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %76 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %1, align 4
  %79 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %80 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = shl i32 %82, 10
  %84 = load i32, i32* %1, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %1, align 4
  %86 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %87 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 16
  %90 = load i32, i32* %1, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %1, align 4
  %92 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %93 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 24
  %96 = load i32, i32* %1, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* %1, align 4
  %99 = load i32, i32* @OMAP_LCDC_TIMING1, align 4
  %100 = call i32 @omap_writel(i32 %98, i32 %99)
  %101 = load i32, i32* @OMAP_LCDC_TIMING2, align 4
  %102 = call i32 @omap_readl(i32 %101)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = and i32 %103, -256
  store i32 %104, i32* %1, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 8
  %106 = call i64 @clk_get_rate(i32 %105)
  store i64 %106, i64* %4, align 8
  %107 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %108 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %107, i32 0, i32 10
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %25
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %114 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %115, 1000
  %117 = call i32 @calc_ck_div(i32 %112, i32 %116, i32* %5)
  br label %136

118:                                              ; preds = %25
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %124 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = udiv i64 %122, %125
  %127 = udiv i64 %126, 1000
  %128 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %129 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_warn(i32 %121, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str, i64 0, i64 0), i64 %127, i32 %130)
  %132 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %133 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %132, i32 0, i32 10
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %118, %111
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 255
  %139 = load i32, i32* %1, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %1, align 4
  %141 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %142 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 8
  %145 = load i32, i32* %1, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %1, align 4
  %147 = load i32, i32* %1, align 4
  %148 = load i32, i32* @OMAP_LCDC_TIMING2, align 4
  %149 = call i32 @omap_writel(i32 %147, i32 %148)
  %150 = load i64, i64* %4, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = udiv i64 %150, %152
  %154 = udiv i64 %153, 1000
  %155 = trunc i64 %154 to i32
  %156 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %157 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %156, i32 0, i32 11
  store i32 %155, i32* %157, align 8
  ret void
}

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @calc_ck_div(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
