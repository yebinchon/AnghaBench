; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_reset_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_reset_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2fb_par = type { i32 }

@PM2R_CHIP_CONFIG = common dso_local global i32 0, align 4
@PM2F_VGA_ENABLE = common dso_local global i32 0, align 4
@PM2F_VGA_FIXED = common dso_local global i32 0, align 4
@PM2R_BYPASS_WRITE_MASK = common dso_local global i32 0, align 4
@PM2R_FRAMEBUFFER_WRITE_MASK = common dso_local global i32 0, align 4
@PM2R_FIFO_CONTROL = common dso_local global i32 0, align 4
@PM2R_APERTURE_ONE = common dso_local global i32 0, align 4
@PM2R_APERTURE_TWO = common dso_local global i32 0, align 4
@PM2R_RASTERIZER_MODE = common dso_local global i32 0, align 4
@PM2R_DELTA_MODE = common dso_local global i32 0, align 4
@PM2F_DELTA_ORDER_RGB = common dso_local global i32 0, align 4
@PM2R_LB_READ_FORMAT = common dso_local global i32 0, align 4
@PM2R_LB_WRITE_FORMAT = common dso_local global i32 0, align 4
@PM2R_LB_READ_MODE = common dso_local global i32 0, align 4
@PM2R_LB_SOURCE_OFFSET = common dso_local global i32 0, align 4
@PM2R_FB_SOURCE_OFFSET = common dso_local global i32 0, align 4
@PM2R_FB_PIXEL_OFFSET = common dso_local global i32 0, align 4
@PM2R_FB_WINDOW_BASE = common dso_local global i32 0, align 4
@PM2R_LB_WINDOW_BASE = common dso_local global i32 0, align 4
@PM2R_FB_SOFT_WRITE_MASK = common dso_local global i32 0, align 4
@PM2R_FB_HARD_WRITE_MASK = common dso_local global i32 0, align 4
@PM2R_FB_READ_PIXEL = common dso_local global i32 0, align 4
@PM2R_DITHER_MODE = common dso_local global i32 0, align 4
@PM2R_AREA_STIPPLE_MODE = common dso_local global i32 0, align 4
@PM2R_DEPTH_MODE = common dso_local global i32 0, align 4
@PM2R_STENCIL_MODE = common dso_local global i32 0, align 4
@PM2R_TEXTURE_ADDRESS_MODE = common dso_local global i32 0, align 4
@PM2R_TEXTURE_READ_MODE = common dso_local global i32 0, align 4
@PM2R_TEXEL_LUT_MODE = common dso_local global i32 0, align 4
@PM2R_YUV_MODE = common dso_local global i32 0, align 4
@PM2R_COLOR_DDA_MODE = common dso_local global i32 0, align 4
@PM2R_TEXTURE_COLOR_MODE = common dso_local global i32 0, align 4
@PM2R_FOG_MODE = common dso_local global i32 0, align 4
@PM2R_ALPHA_BLEND_MODE = common dso_local global i32 0, align 4
@PM2R_LOGICAL_OP_MODE = common dso_local global i32 0, align 4
@PM2R_STATISTICS_MODE = common dso_local global i32 0, align 4
@PM2R_SCISSOR_MODE = common dso_local global i32 0, align 4
@PM2R_FILTER_MODE = common dso_local global i32 0, align 4
@PM2F_SYNCHRONIZATION = common dso_local global i32 0, align 4
@PM2R_RD_PIXEL_MASK = common dso_local global i32 0, align 4
@PM2I_RD_MODE_CONTROL = common dso_local global i32 0, align 4
@PM2I_RD_CURSOR_CONTROL = common dso_local global i32 0, align 4
@PM2I_RD_MISC_CONTROL = common dso_local global i32 0, align 4
@PM2F_RD_PALETTE_WIDTH_8 = common dso_local global i32 0, align 4
@PM2I_RD_COLOR_KEY_CONTROL = common dso_local global i32 0, align 4
@PM2I_RD_OVERLAY_KEY = common dso_local global i32 0, align 4
@PM2I_RD_RED_KEY = common dso_local global i32 0, align 4
@PM2I_RD_GREEN_KEY = common dso_local global i32 0, align 4
@PM2I_RD_BLUE_KEY = common dso_local global i32 0, align 4
@PM2VI_RD_MISC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm2fb_par*)* @reset_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_config(%struct.pm2fb_par* %0) #0 {
  %2 = alloca %struct.pm2fb_par*, align 8
  store %struct.pm2fb_par* %0, %struct.pm2fb_par** %2, align 8
  %3 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %4 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %3, i32 53)
  %5 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %6 = load i32, i32* @PM2R_CHIP_CONFIG, align 4
  %7 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %8 = load i32, i32* @PM2R_CHIP_CONFIG, align 4
  %9 = call i32 @pm2_RD(%struct.pm2fb_par* %7, i32 %8)
  %10 = load i32, i32* @PM2F_VGA_ENABLE, align 4
  %11 = load i32, i32* @PM2F_VGA_FIXED, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = call i32 @pm2_WR(%struct.pm2fb_par* %5, i32 %6, i32 %14)
  %16 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %17 = load i32, i32* @PM2R_BYPASS_WRITE_MASK, align 4
  %18 = call i32 @pm2_WR(%struct.pm2fb_par* %16, i32 %17, i32 -1)
  %19 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %20 = load i32, i32* @PM2R_FRAMEBUFFER_WRITE_MASK, align 4
  %21 = call i32 @pm2_WR(%struct.pm2fb_par* %19, i32 %20, i32 -1)
  %22 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %23 = load i32, i32* @PM2R_FIFO_CONTROL, align 4
  %24 = call i32 @pm2_WR(%struct.pm2fb_par* %22, i32 %23, i32 0)
  %25 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %26 = load i32, i32* @PM2R_APERTURE_ONE, align 4
  %27 = call i32 @pm2_WR(%struct.pm2fb_par* %25, i32 %26, i32 0)
  %28 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %29 = load i32, i32* @PM2R_APERTURE_TWO, align 4
  %30 = call i32 @pm2_WR(%struct.pm2fb_par* %28, i32 %29, i32 0)
  %31 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %32 = load i32, i32* @PM2R_RASTERIZER_MODE, align 4
  %33 = call i32 @pm2_WR(%struct.pm2fb_par* %31, i32 %32, i32 0)
  %34 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %35 = load i32, i32* @PM2R_DELTA_MODE, align 4
  %36 = load i32, i32* @PM2F_DELTA_ORDER_RGB, align 4
  %37 = call i32 @pm2_WR(%struct.pm2fb_par* %34, i32 %35, i32 %36)
  %38 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %39 = load i32, i32* @PM2R_LB_READ_FORMAT, align 4
  %40 = call i32 @pm2_WR(%struct.pm2fb_par* %38, i32 %39, i32 0)
  %41 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %42 = load i32, i32* @PM2R_LB_WRITE_FORMAT, align 4
  %43 = call i32 @pm2_WR(%struct.pm2fb_par* %41, i32 %42, i32 0)
  %44 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %45 = load i32, i32* @PM2R_LB_READ_MODE, align 4
  %46 = call i32 @pm2_WR(%struct.pm2fb_par* %44, i32 %45, i32 0)
  %47 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %48 = load i32, i32* @PM2R_LB_SOURCE_OFFSET, align 4
  %49 = call i32 @pm2_WR(%struct.pm2fb_par* %47, i32 %48, i32 0)
  %50 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %51 = load i32, i32* @PM2R_FB_SOURCE_OFFSET, align 4
  %52 = call i32 @pm2_WR(%struct.pm2fb_par* %50, i32 %51, i32 0)
  %53 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %54 = load i32, i32* @PM2R_FB_PIXEL_OFFSET, align 4
  %55 = call i32 @pm2_WR(%struct.pm2fb_par* %53, i32 %54, i32 0)
  %56 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %57 = load i32, i32* @PM2R_FB_WINDOW_BASE, align 4
  %58 = call i32 @pm2_WR(%struct.pm2fb_par* %56, i32 %57, i32 0)
  %59 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %60 = load i32, i32* @PM2R_LB_WINDOW_BASE, align 4
  %61 = call i32 @pm2_WR(%struct.pm2fb_par* %59, i32 %60, i32 0)
  %62 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %63 = load i32, i32* @PM2R_FB_SOFT_WRITE_MASK, align 4
  %64 = call i32 @pm2_WR(%struct.pm2fb_par* %62, i32 %63, i32 -1)
  %65 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %66 = load i32, i32* @PM2R_FB_HARD_WRITE_MASK, align 4
  %67 = call i32 @pm2_WR(%struct.pm2fb_par* %65, i32 %66, i32 -1)
  %68 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %69 = load i32, i32* @PM2R_FB_READ_PIXEL, align 4
  %70 = call i32 @pm2_WR(%struct.pm2fb_par* %68, i32 %69, i32 0)
  %71 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %72 = load i32, i32* @PM2R_DITHER_MODE, align 4
  %73 = call i32 @pm2_WR(%struct.pm2fb_par* %71, i32 %72, i32 0)
  %74 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %75 = load i32, i32* @PM2R_AREA_STIPPLE_MODE, align 4
  %76 = call i32 @pm2_WR(%struct.pm2fb_par* %74, i32 %75, i32 0)
  %77 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %78 = load i32, i32* @PM2R_DEPTH_MODE, align 4
  %79 = call i32 @pm2_WR(%struct.pm2fb_par* %77, i32 %78, i32 0)
  %80 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %81 = load i32, i32* @PM2R_STENCIL_MODE, align 4
  %82 = call i32 @pm2_WR(%struct.pm2fb_par* %80, i32 %81, i32 0)
  %83 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %84 = load i32, i32* @PM2R_TEXTURE_ADDRESS_MODE, align 4
  %85 = call i32 @pm2_WR(%struct.pm2fb_par* %83, i32 %84, i32 0)
  %86 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %87 = load i32, i32* @PM2R_TEXTURE_READ_MODE, align 4
  %88 = call i32 @pm2_WR(%struct.pm2fb_par* %86, i32 %87, i32 0)
  %89 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %90 = load i32, i32* @PM2R_TEXEL_LUT_MODE, align 4
  %91 = call i32 @pm2_WR(%struct.pm2fb_par* %89, i32 %90, i32 0)
  %92 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %93 = load i32, i32* @PM2R_YUV_MODE, align 4
  %94 = call i32 @pm2_WR(%struct.pm2fb_par* %92, i32 %93, i32 0)
  %95 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %96 = load i32, i32* @PM2R_COLOR_DDA_MODE, align 4
  %97 = call i32 @pm2_WR(%struct.pm2fb_par* %95, i32 %96, i32 0)
  %98 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %99 = load i32, i32* @PM2R_TEXTURE_COLOR_MODE, align 4
  %100 = call i32 @pm2_WR(%struct.pm2fb_par* %98, i32 %99, i32 0)
  %101 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %102 = load i32, i32* @PM2R_FOG_MODE, align 4
  %103 = call i32 @pm2_WR(%struct.pm2fb_par* %101, i32 %102, i32 0)
  %104 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %105 = load i32, i32* @PM2R_ALPHA_BLEND_MODE, align 4
  %106 = call i32 @pm2_WR(%struct.pm2fb_par* %104, i32 %105, i32 0)
  %107 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %108 = load i32, i32* @PM2R_LOGICAL_OP_MODE, align 4
  %109 = call i32 @pm2_WR(%struct.pm2fb_par* %107, i32 %108, i32 0)
  %110 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %111 = load i32, i32* @PM2R_STATISTICS_MODE, align 4
  %112 = call i32 @pm2_WR(%struct.pm2fb_par* %110, i32 %111, i32 0)
  %113 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %114 = load i32, i32* @PM2R_SCISSOR_MODE, align 4
  %115 = call i32 @pm2_WR(%struct.pm2fb_par* %113, i32 %114, i32 0)
  %116 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %117 = load i32, i32* @PM2R_FILTER_MODE, align 4
  %118 = load i32, i32* @PM2F_SYNCHRONIZATION, align 4
  %119 = call i32 @pm2_WR(%struct.pm2fb_par* %116, i32 %117, i32 %118)
  %120 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %121 = load i32, i32* @PM2R_RD_PIXEL_MASK, align 4
  %122 = call i32 @pm2_WR(%struct.pm2fb_par* %120, i32 %121, i32 255)
  %123 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %124 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %156 [
    i32 129, label %126
    i32 128, label %152
  ]

126:                                              ; preds = %1
  %127 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %128 = load i32, i32* @PM2I_RD_MODE_CONTROL, align 4
  %129 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %127, i32 %128, i32 0)
  %130 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %131 = load i32, i32* @PM2I_RD_CURSOR_CONTROL, align 4
  %132 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %130, i32 %131, i32 0)
  %133 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %134 = load i32, i32* @PM2I_RD_MISC_CONTROL, align 4
  %135 = load i32, i32* @PM2F_RD_PALETTE_WIDTH_8, align 4
  %136 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %133, i32 %134, i32 %135)
  %137 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %138 = load i32, i32* @PM2I_RD_COLOR_KEY_CONTROL, align 4
  %139 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %137, i32 %138, i32 0)
  %140 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %141 = load i32, i32* @PM2I_RD_OVERLAY_KEY, align 4
  %142 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %140, i32 %141, i32 0)
  %143 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %144 = load i32, i32* @PM2I_RD_RED_KEY, align 4
  %145 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %143, i32 %144, i32 0)
  %146 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %147 = load i32, i32* @PM2I_RD_GREEN_KEY, align 4
  %148 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %146, i32 %147, i32 0)
  %149 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %150 = load i32, i32* @PM2I_RD_BLUE_KEY, align 4
  %151 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %149, i32 %150, i32 0)
  br label %156

152:                                              ; preds = %1
  %153 = load %struct.pm2fb_par*, %struct.pm2fb_par** %2, align 8
  %154 = load i32, i32* @PM2VI_RD_MISC_CONTROL, align 4
  %155 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %153, i32 %154, i32 1)
  br label %156

156:                                              ; preds = %1, %152, %126
  ret void
}

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2_RD(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2v_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
