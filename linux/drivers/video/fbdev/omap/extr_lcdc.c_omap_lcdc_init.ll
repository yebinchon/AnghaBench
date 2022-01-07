; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_omap_lcdc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_omap_lcdc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.clk*, %struct.omapfb_device*, i64 }
%struct.clk = type { i32 }
%struct.omapfb_device = type { i32 }
%struct.omapfb_mem_desc = type { i32 }

@lcdc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OMAP_LCDC_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"lcd_ck\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to access LCD clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tc_ck\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to access TC clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to adjust LCD rate\0A\00", align 1
@OMAP_LCDC_IRQ = common dso_local global i32 0, align 4
@lcdc_irq_handler = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"unable to get IRQ\0A\00", align 1
@lcdc_dma_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"unable to get LCD DMA\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"omapfb: LCDC initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)* @omap_lcdc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_lcdc_init(%struct.omapfb_device* %0, i32 %1, %struct.omapfb_mem_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapfb_mem_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk*, align 8
  store %struct.omapfb_device* %0, %struct.omapfb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.omapfb_mem_desc* %2, %struct.omapfb_mem_desc** %7, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 3), align 8
  %12 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  store %struct.omapfb_device* %12, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 2), align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 0), align 8
  store i64 0, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32, i32* @OMAP_LCDC_CONTROL, align 4
  %16 = call i32 @omap_writel(i64 %14, i32 %15)
  %17 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %18 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @clk_get(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = bitcast i8* %20 to %struct.clk*
  store %struct.clk* %21, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1), align 8
  %22 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1), align 8
  %23 = call i64 @IS_ERR(%struct.clk* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %27 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1), align 8
  %31 = call i32 @PTR_ERR(%struct.clk* %30)
  store i32 %31, i32* %8, align 4
  br label %137

32:                                               ; preds = %3
  %33 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %34 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @clk_get(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = bitcast i8* %36 to %struct.clk*
  store %struct.clk* %37, %struct.clk** %11, align 8
  %38 = load %struct.clk*, %struct.clk** %11, align 8
  %39 = call i64 @IS_ERR(%struct.clk* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %43 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.clk*, %struct.clk** %11, align 8
  %47 = call i32 @PTR_ERR(%struct.clk* %46)
  store i32 %47, i32* %8, align 4
  br label %134

48:                                               ; preds = %32
  %49 = load %struct.clk*, %struct.clk** %11, align 8
  %50 = call i32 @clk_get_rate(%struct.clk* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.clk*, %struct.clk** %11, align 8
  %52 = call i32 @clk_put(%struct.clk* %51)
  %53 = call i64 (...) @machine_is_ams_delta()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %56, 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = call i64 (...) @machine_is_omap_h3()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %62, 3
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1), align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @clk_set_rate(%struct.clk* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %72 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %134

75:                                               ; preds = %64
  %76 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1), align 8
  %77 = call i32 @clk_enable(%struct.clk* %76)
  %78 = load i32, i32* @OMAP_LCDC_IRQ, align 4
  %79 = load i32, i32* @lcdc_irq_handler, align 4
  %80 = load i32, i32* @MODULE_NAME, align 4
  %81 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %82 = call i32 @request_irq(i32 %78, i32 %79, i32 0, i32 %80, %struct.omapfb_device* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %87 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %131

90:                                               ; preds = %75
  %91 = load i32, i32* @lcdc_dma_handler, align 4
  %92 = call i32 @omap_request_lcd_dma(i32 %91, i32* null)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %97 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %127

100:                                              ; preds = %90
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @omap_set_lcd_dma_single_transfer(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @omap_set_lcd_dma_ext_controller(i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = call i32 (...) @alloc_palette_ram()
  store i32 %108, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %125

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %7, align 8
  %114 = call i32 @setup_fbmem(%struct.omapfb_mem_desc* %113)
  store i32 %114, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %119

117:                                              ; preds = %112
  %118 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = call i32 (...) @free_palette_ram()
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124, %110
  %126 = call i32 (...) @omap_free_lcd_dma()
  br label %127

127:                                              ; preds = %125, %95
  %128 = load i32, i32* @OMAP_LCDC_IRQ, align 4
  %129 = load %struct.omapfb_device*, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 2), align 8
  %130 = call i32 @free_irq(i32 %128, %struct.omapfb_device* %129)
  br label %131

131:                                              ; preds = %127, %85
  %132 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1), align 8
  %133 = call i32 @clk_disable(%struct.clk* %132)
  br label %134

134:                                              ; preds = %131, %70, %41
  %135 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1), align 8
  %136 = call i32 @clk_put(%struct.clk* %135)
  br label %137

137:                                              ; preds = %134, %25
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %117
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @omap_writel(i64, i32) #1

declare dso_local i8* @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i64 @machine_is_ams_delta(...) #1

declare dso_local i64 @machine_is_omap_h3(...) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.omapfb_device*) #1

declare dso_local i32 @omap_request_lcd_dma(i32, i32*) #1

declare dso_local i32 @omap_set_lcd_dma_single_transfer(i32) #1

declare dso_local i32 @omap_set_lcd_dma_ext_controller(i32) #1

declare dso_local i32 @alloc_palette_ram(...) #1

declare dso_local i32 @setup_fbmem(%struct.omapfb_mem_desc*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @free_palette_ram(...) #1

declare dso_local i32 @omap_free_lcd_dma(...) #1

declare dso_local i32 @free_irq(i32, %struct.omapfb_device*) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
