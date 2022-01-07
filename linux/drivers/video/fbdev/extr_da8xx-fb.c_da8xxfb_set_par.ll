; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xxfb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xxfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_6__, %struct.TYPE_9__, %struct.da8xx_fb_par* }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.da8xx_fb_par = type { i64, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@DA8XX_FRAME_WAIT = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"lcd init failed\0A\00", align 1
@LCD_DMA_FRM_BUF_BASE_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_1_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @da8xxfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xxfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.da8xx_fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %8, align 8
  store %struct.da8xx_fb_par* %9, %struct.da8xx_fb_par** %4, align 8
  %10 = call i32 (...) @da8xx_fb_is_raster_enabled()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @DA8XX_FRAME_WAIT, align 4
  %15 = call i32 @lcd_disable_raster(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %18 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %17, i32 0, i32 3
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = call i32 @fb_var_to_videomode(%struct.TYPE_8__* %18, %struct.TYPE_9__* %20)
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %27 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %30 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %32, 8
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %38

36:                                               ; preds = %16
  %37 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %44 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %48 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %46, %50
  %52 = sdiv i32 %51, 8
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %57 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %58 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %57, i32 0, i32 4
  %59 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %60 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %59, i32 0, i32 3
  %61 = call i32 @lcd_init(%struct.da8xx_fb_par* %56, %struct.TYPE_7__* %58, %struct.TYPE_8__* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %38
  %65 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %66 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %142

70:                                               ; preds = %38
  %71 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %78, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %74, %84
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %89, %93
  %95 = sdiv i32 %94, 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %85, %96
  %98 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %99 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %101 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %106, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %102, %112
  %114 = sub nsw i64 %113, 1
  %115 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %116 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %118 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_0_REG, align 4
  %121 = call i32 @lcdc_write(i64 %119, i32 %120)
  %122 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %123 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG, align 4
  %126 = call i32 @lcdc_write(i64 %124, i32 %125)
  %127 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %128 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_1_REG, align 4
  %131 = call i32 @lcdc_write(i64 %129, i32 %130)
  %132 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %133 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG, align 4
  %136 = call i32 @lcdc_write(i64 %134, i32 %135)
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %70
  %140 = call i32 (...) @lcd_enable_raster()
  br label %141

141:                                              ; preds = %139, %70
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %64
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @da8xx_fb_is_raster_enabled(...) #1

declare dso_local i32 @lcd_disable_raster(i32) #1

declare dso_local i32 @fb_var_to_videomode(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @lcd_init(%struct.da8xx_fb_par*, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @lcdc_write(i64, i32) #1

declare dso_local i32 @lcd_enable_raster(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
