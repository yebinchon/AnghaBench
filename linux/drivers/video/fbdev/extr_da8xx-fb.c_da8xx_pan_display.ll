; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i32, i32 }
%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.da8xx_fb_par* }
%struct.fb_fix_screeninfo = type { i32, i32 }
%struct.da8xx_fb_par = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_1_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @da8xx_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_var_screeninfo, align 8
  %7 = alloca %struct.da8xx_fb_par*, align 8
  %8 = alloca %struct.fb_fix_screeninfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 2
  %14 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %13, align 8
  store %struct.da8xx_fb_par* %14, %struct.da8xx_fb_par** %7, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  store %struct.fb_fix_screeninfo* %16, %struct.fb_fix_screeninfo** %8, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %138

34:                                               ; preds = %25, %2
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = call i32 @memcpy(%struct.fb_var_screeninfo* %6, %struct.fb_var_screeninfo* %36, i32 24)
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %47 = call i64 @fb_check_var(%struct.fb_var_screeninfo* %6, %struct.fb_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %137

52:                                               ; preds = %34
  %53 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = call i32 @memcpy(%struct.fb_var_screeninfo* %54, %struct.fb_var_screeninfo* %6, i32 24)
  %56 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %57 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %63 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %61, %65
  %67 = add nsw i64 %59, %66
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %69, %74
  %76 = sdiv i64 %75, 8
  %77 = add nsw i64 %67, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %85 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %83, %86
  %88 = add i32 %79, %87
  %89 = sub i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %92 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %95 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %97 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %96, i32 0, i32 3
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %101 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %52
  %105 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %106 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_0_REG, align 4
  %109 = call i32 @lcdc_write(i32 %107, i32 %108)
  %110 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %111 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG, align 4
  %114 = call i32 @lcdc_write(i32 %112, i32 %113)
  br label %132

115:                                              ; preds = %52
  %116 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %117 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %122 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_1_REG, align 4
  %125 = call i32 @lcdc_write(i32 %123, i32 %124)
  %126 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %127 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG, align 4
  %130 = call i32 @lcdc_write(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %120, %115
  br label %132

132:                                              ; preds = %131, %104
  %133 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %134 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %133, i32 0, i32 3
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %132, %49
  br label %138

138:                                              ; preds = %137, %25
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @memcpy(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i64 @fb_check_var(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
