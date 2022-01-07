; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_pxa168fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_pxa168fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.TYPE_2__, %struct.pxa168fb_info* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pxa168fb_info = type { i64, i64 }
%struct.fb_videomode = type { i32 }

@PIX_FMT_PSEUDOCOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@LCD_SPU_DUMB_CTRL = common dso_local global i64 0, align 8
@LCD_SPU_V_H_ACTIVE = common dso_local global i64 0, align 8
@LCD_CFG_GRA_PITCH = common dso_local global i64 0, align 8
@LCD_SPU_GRA_HPXL_VLN = common dso_local global i64 0, align 8
@LCD_SPU_GZM_HPXL_VLN = common dso_local global i64 0, align 8
@LCD_SPU_H_PORCH = common dso_local global i64 0, align 8
@LCD_SPU_V_PORCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @pxa168fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pxa168fb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_videomode, align 4
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %8, align 8
  store %struct.pxa168fb_info* %9, %struct.pxa168fb_info** %3, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  store %struct.fb_var_screeninfo* %11, %struct.fb_var_screeninfo** %4, align 8
  %12 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PIX_FMT_PSEUDOCOLOR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = sdiv i32 %34, 8
  %36 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, -2
  %53 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %54 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  %67 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %68 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LCD_SPU_V_H_ACTIVE, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = call i32 @fb_var_to_videomode(%struct.fb_videomode* %5, %struct.fb_var_screeninfo* %74)
  %76 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %77 = call i32 @set_clock_divider(%struct.pxa168fb_info* %76, %struct.fb_videomode* %5)
  %78 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %79 = call i32 @set_dma_control0(%struct.pxa168fb_info* %78)
  %80 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %81 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_dma_control1(%struct.pxa168fb_info* %80, i32 %84)
  %86 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %87 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LCD_CFG_GRA_PITCH, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @readl(i64 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, -65536
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = ashr i32 %100, 3
  %102 = or i32 %93, %101
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %105 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @LCD_CFG_GRA_PITCH, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 16
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %113, %116
  %118 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %119 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @LCD_SPU_GRA_HPXL_VLN, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 16
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  %132 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %133 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @LCD_SPU_GZM_HPXL_VLN, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writel(i32 %131, i64 %136)
  %138 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %139 = call i32 @set_dumb_panel_control(%struct.fb_info* %138)
  %140 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %141 = call i32 @set_dumb_screen_dimensions(%struct.fb_info* %140)
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 16
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %145, %148
  %150 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %151 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @LCD_SPU_H_PORCH, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  %156 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 16
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %159, %162
  %164 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %165 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @LCD_SPU_V_PORCH, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writel(i32 %163, i64 %168)
  %170 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %171 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @readl(i64 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %176, 1
  %178 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %179 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @writel(i32 %177, i64 %182)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @fb_var_to_videomode(%struct.fb_videomode*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @set_clock_divider(%struct.pxa168fb_info*, %struct.fb_videomode*) #1

declare dso_local i32 @set_dma_control0(%struct.pxa168fb_info*) #1

declare dso_local i32 @set_dma_control1(%struct.pxa168fb_info*, i32) #1

declare dso_local i32 @set_dumb_panel_control(%struct.fb_info*) #1

declare dso_local i32 @set_dumb_screen_dimensions(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
