; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_write_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_write_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.radeonfb_info = type { i32 }
%struct.radeon_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@nomodeset = common dso_local global i64 0, align 8
@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@common_regs = common dso_local global %struct.TYPE_2__* null, align 8
@SURFACE0_LOWER_BOUND = common dso_local global i64 0, align 8
@SURFACE0_UPPER_BOUND = common dso_local global i64 0, align 8
@SURFACE0_INFO = common dso_local global i64 0, align 8
@CRTC_GEN_CNTL = common dso_local global i64 0, align 8
@CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@CRTC_HSYNC_DIS = common dso_local global i32 0, align 4
@CRTC_VSYNC_DIS = common dso_local global i32 0, align 4
@CRTC_DISPLAY_DIS = common dso_local global i32 0, align 4
@CRTC_MORE_CNTL = common dso_local global i64 0, align 8
@DAC_CNTL = common dso_local global i32 0, align 4
@DAC_RANGE_CNTL = common dso_local global i32 0, align 4
@DAC_BLANKING = common dso_local global i32 0, align 4
@CRTC_H_TOTAL_DISP = common dso_local global i64 0, align 8
@CRTC_H_SYNC_STRT_WID = common dso_local global i64 0, align 8
@CRTC_V_TOTAL_DISP = common dso_local global i64 0, align 8
@CRTC_V_SYNC_STRT_WID = common dso_local global i64 0, align 8
@CRTC_OFFSET = common dso_local global i64 0, align 8
@CRTC_OFFSET_CNTL = common dso_local global i64 0, align 8
@CRTC_PITCH = common dso_local global i64 0, align 8
@SURFACE_CNTL = common dso_local global i64 0, align 8
@MT_DFP = common dso_local global i32 0, align 4
@MT_LCD = common dso_local global i32 0, align 4
@FP_CRTC_H_TOTAL_DISP = common dso_local global i64 0, align 8
@FP_CRTC_V_TOTAL_DISP = common dso_local global i64 0, align 8
@FP_H_SYNC_STRT_WID = common dso_local global i64 0, align 8
@FP_V_SYNC_STRT_WID = common dso_local global i64 0, align 8
@FP_HORZ_STRETCH = common dso_local global i64 0, align 8
@FP_VERT_STRETCH = common dso_local global i64 0, align 8
@FP_GEN_CNTL = common dso_local global i64 0, align 8
@TMDS_CRC = common dso_local global i64 0, align 8
@TMDS_TRANSMITTER_CNTL = common dso_local global i64 0, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@VCLK_ECP_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_write_mode(%struct.radeonfb_info* %0, %struct.radeon_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.radeonfb_info*, align 8
  %5 = alloca %struct.radeon_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %4, align 8
  store %struct.radeon_regs* %1, %struct.radeon_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %10 = call i32 @PRIMARY_MONITOR(%struct.radeonfb_info* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* @nomodeset, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %225

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %19 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %20 = call i32 @radeon_screen_blank(%struct.radeonfb_info* %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %17, %14
  %22 = call i32 @radeon_fifo_wait(i32 31)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %40, %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @common_regs, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @common_regs, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @OUTREG(i64 %32, i32 %38)
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %23

43:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %90

47:                                               ; preds = %44
  %48 = load i64, i64* @SURFACE0_LOWER_BOUND, align 8
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 16, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %53, i32 0, i32 22
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @OUTREG(i64 %52, i32 %59)
  %61 = load i64, i64* @SURFACE0_UPPER_BOUND, align 8
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 16, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %67 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %66, i32 0, i32 21
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OUTREG(i64 %65, i32 %72)
  %74 = load i64, i64* @SURFACE0_INFO, align 8
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 16, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %79, i32 0, i32 20
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @OUTREG(i64 %78, i32 %85)
  br label %87

87:                                               ; preds = %47
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %44

90:                                               ; preds = %44
  %91 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %92 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %93 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %92, i32 0, i32 19
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @OUTREG(i64 %91, i32 %94)
  %96 = load i32, i32* @CRTC_EXT_CNTL, align 4
  %97 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %98 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %97, i32 0, i32 18
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @CRTC_HSYNC_DIS, align 4
  %101 = load i32, i32* @CRTC_VSYNC_DIS, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @CRTC_DISPLAY_DIS, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = call i32 @OUTREGP(i32 %96, i32 %99, i32 %105)
  %107 = load i64, i64* @CRTC_MORE_CNTL, align 8
  %108 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %109 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %108, i32 0, i32 17
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @OUTREG(i64 %107, i32 %110)
  %112 = load i32, i32* @DAC_CNTL, align 4
  %113 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %114 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %113, i32 0, i32 16
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DAC_RANGE_CNTL, align 4
  %117 = load i32, i32* @DAC_BLANKING, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @OUTREGP(i32 %112, i32 %115, i32 %118)
  %120 = load i64, i64* @CRTC_H_TOTAL_DISP, align 8
  %121 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %122 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %121, i32 0, i32 15
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @OUTREG(i64 %120, i32 %123)
  %125 = load i64, i64* @CRTC_H_SYNC_STRT_WID, align 8
  %126 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %127 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %126, i32 0, i32 14
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @OUTREG(i64 %125, i32 %128)
  %130 = load i64, i64* @CRTC_V_TOTAL_DISP, align 8
  %131 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %132 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %131, i32 0, i32 13
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @OUTREG(i64 %130, i32 %133)
  %135 = load i64, i64* @CRTC_V_SYNC_STRT_WID, align 8
  %136 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %137 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %136, i32 0, i32 12
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @OUTREG(i64 %135, i32 %138)
  %140 = load i64, i64* @CRTC_OFFSET, align 8
  %141 = call i32 @OUTREG(i64 %140, i32 0)
  %142 = load i64, i64* @CRTC_OFFSET_CNTL, align 8
  %143 = call i32 @OUTREG(i64 %142, i32 0)
  %144 = load i64, i64* @CRTC_PITCH, align 8
  %145 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %146 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @OUTREG(i64 %144, i32 %147)
  %149 = load i64, i64* @SURFACE_CNTL, align 8
  %150 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %151 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @OUTREG(i64 %149, i32 %152)
  %154 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %155 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %156 = call i32 @radeon_write_pll_regs(%struct.radeonfb_info* %154, %struct.radeon_regs* %155)
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @MT_DFP, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %90
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @MT_LCD, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %211

164:                                              ; preds = %160, %90
  %165 = call i32 @radeon_fifo_wait(i32 10)
  %166 = load i64, i64* @FP_CRTC_H_TOTAL_DISP, align 8
  %167 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %168 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @OUTREG(i64 %166, i32 %169)
  %171 = load i64, i64* @FP_CRTC_V_TOTAL_DISP, align 8
  %172 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %173 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @OUTREG(i64 %171, i32 %174)
  %176 = load i64, i64* @FP_H_SYNC_STRT_WID, align 8
  %177 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %178 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @OUTREG(i64 %176, i32 %179)
  %181 = load i64, i64* @FP_V_SYNC_STRT_WID, align 8
  %182 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %183 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @OUTREG(i64 %181, i32 %184)
  %186 = load i64, i64* @FP_HORZ_STRETCH, align 8
  %187 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %188 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @OUTREG(i64 %186, i32 %189)
  %191 = load i64, i64* @FP_VERT_STRETCH, align 8
  %192 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %193 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @OUTREG(i64 %191, i32 %194)
  %196 = load i64, i64* @FP_GEN_CNTL, align 8
  %197 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %198 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @OUTREG(i64 %196, i32 %199)
  %201 = load i64, i64* @TMDS_CRC, align 8
  %202 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %203 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @OUTREG(i64 %201, i32 %204)
  %206 = load i64, i64* @TMDS_TRANSMITTER_CNTL, align 8
  %207 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %208 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @OUTREG(i64 %206, i32 %209)
  br label %211

211:                                              ; preds = %164, %160
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %211
  %215 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %216 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %217 = call i32 @radeon_screen_blank(%struct.radeonfb_info* %215, i32 %216, i32 0)
  br label %218

218:                                              ; preds = %214, %211
  %219 = call i32 @radeon_fifo_wait(i32 2)
  %220 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %221 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %222 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @OUTPLL(i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %218, %13
  ret void
}

declare dso_local i32 @PRIMARY_MONITOR(%struct.radeonfb_info*) #1

declare dso_local i32 @radeon_screen_blank(%struct.radeonfb_info*, i32, i32) #1

declare dso_local i32 @radeon_fifo_wait(i32) #1

declare dso_local i32 @OUTREG(i64, i32) #1

declare dso_local i32 @OUTREGP(i32, i32, i32) #1

declare dso_local i32 @radeon_write_pll_regs(%struct.radeonfb_info*, %struct.radeon_regs*) #1

declare dso_local i32 @OUTPLL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
