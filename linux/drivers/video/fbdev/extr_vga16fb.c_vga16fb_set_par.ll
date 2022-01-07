; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vga16fb.c_vga16fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vga16fb.c_vga16fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.vga16fb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.vga16fb_par = type { i32, i32, i32*, i32, i32, i64 }

@VGA_GFX_C = common dso_local global i32 0, align 4
@VGA_SEQ_C = common dso_local global i32 0, align 4
@VGA_ATT_C = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_MODE = common dso_local global i64 0, align 8
@MODE_TEXT = common dso_local global i32 0, align 4
@VGA_SEQ_PLANE_WRITE = common dso_local global i64 0, align 8
@VGA_SEQ_CHARACTER_MAP = common dso_local global i64 0, align 8
@VGA_SEQ_MEMORY_MODE = common dso_local global i64 0, align 8
@MODE_SKIP4 = common dso_local global i32 0, align 4
@VGA_GFX_SR_VALUE = common dso_local global i64 0, align 8
@VGA_GFX_SR_ENABLE = common dso_local global i64 0, align 8
@VGA_GFX_COMPARE_VALUE = common dso_local global i64 0, align 8
@VGA_GFX_DATA_ROTATE = common dso_local global i64 0, align 8
@VGA_GFX_PLANE_READ = common dso_local global i64 0, align 8
@VGA_GFX_MODE = common dso_local global i64 0, align 8
@VGA_GFX_MISC = common dso_local global i64 0, align 8
@MODE_CFB = common dso_local global i32 0, align 4
@VGA_GFX_COMPARE_MASK = common dso_local global i64 0, align 8
@VGA_GFX_BIT_MASK = common dso_local global i64 0, align 8
@VGA_ATC_MODE = common dso_local global i64 0, align 8
@MODE_8BPP = common dso_local global i32 0, align 4
@VGA_ATC_OVERSCAN = common dso_local global i64 0, align 8
@VGA_ATC_PLANE_ENABLE = common dso_local global i64 0, align 8
@VGA_ATC_PEL = common dso_local global i64 0, align 8
@VGA_ATC_COLOR_PAGE = common dso_local global i64 0, align 8
@VGA_CRTC_MAX_SCAN = common dso_local global i64 0, align 8
@VGA_MIS_W = common dso_local global i32 0, align 4
@VGA_MIS_R = common dso_local global i32 0, align 4
@EGA_GFX_E0 = common dso_local global i32 0, align 4
@EGA_GFX_E1 = common dso_local global i32 0, align 4
@VGA_PEL_MSK = common dso_local global i32 0, align 4
@VGA_CRTC_V_SYNC_END = common dso_local global i64 0, align 8
@VGA_CRTC_REGS = common dso_local global i32 0, align 4
@VGA_IS1_RC = common dso_local global i32 0, align 4
@VGA_ATT_IW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @vga16fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga16fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.vga16fb_par*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.vga16fb_par*, %struct.vga16fb_par** %11, align 8
  store %struct.vga16fb_par* %12, %struct.vga16fb_par** %3, align 8
  %13 = load i32, i32* @VGA_GFX_C, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @VGA_SEQ_C, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i32, i32* @VGA_ATT_C, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %23 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %24 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 1, %25
  %27 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %28 = getelementptr inbounds i32, i32* %19, i64 %27
  store i32 %26, i32* %28, align 4
  %29 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %30 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MODE_TEXT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i64, i64* @VGA_SEQ_PLANE_WRITE, align 8
  %37 = getelementptr inbounds i32, i32* %19, i64 %36
  store i32 3, i32* %37, align 4
  br label %41

38:                                               ; preds = %1
  %39 = load i64, i64* @VGA_SEQ_PLANE_WRITE, align 8
  %40 = getelementptr inbounds i32, i32* %19, i64 %39
  store i32 15, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* @VGA_SEQ_CHARACTER_MAP, align 8
  %43 = getelementptr inbounds i32, i32* %19, i64 %42
  store i32 0, i32* %43, align 4
  %44 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %45 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MODE_TEXT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i64, i64* @VGA_SEQ_MEMORY_MODE, align 8
  %52 = getelementptr inbounds i32, i32* %19, i64 %51
  store i32 3, i32* %52, align 4
  br label %67

53:                                               ; preds = %41
  %54 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %55 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MODE_SKIP4, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i64, i64* @VGA_SEQ_MEMORY_MODE, align 8
  %62 = getelementptr inbounds i32, i32* %19, i64 %61
  store i32 14, i32* %62, align 4
  br label %66

63:                                               ; preds = %53
  %64 = load i64, i64* @VGA_SEQ_MEMORY_MODE, align 8
  %65 = getelementptr inbounds i32, i32* %19, i64 %64
  store i32 6, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i64, i64* @VGA_GFX_SR_VALUE, align 8
  %69 = getelementptr inbounds i32, i32* %16, i64 %68
  store i32 0, i32* %69, align 4
  %70 = load i64, i64* @VGA_GFX_SR_ENABLE, align 8
  %71 = getelementptr inbounds i32, i32* %16, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load i64, i64* @VGA_GFX_COMPARE_VALUE, align 8
  %73 = getelementptr inbounds i32, i32* %16, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i64, i64* @VGA_GFX_DATA_ROTATE, align 8
  %75 = getelementptr inbounds i32, i32* %16, i64 %74
  store i32 0, i32* %75, align 4
  %76 = load i64, i64* @VGA_GFX_PLANE_READ, align 8
  %77 = getelementptr inbounds i32, i32* %16, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %79 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MODE_TEXT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load i64, i64* @VGA_GFX_MODE, align 8
  %86 = getelementptr inbounds i32, i32* %16, i64 %85
  store i32 16, i32* %86, align 4
  %87 = load i64, i64* @VGA_GFX_MISC, align 8
  %88 = getelementptr inbounds i32, i32* %16, i64 %87
  store i32 6, i32* %88, align 4
  br label %105

89:                                               ; preds = %67
  %90 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %91 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MODE_CFB, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i64, i64* @VGA_GFX_MODE, align 8
  %98 = getelementptr inbounds i32, i32* %16, i64 %97
  store i32 64, i32* %98, align 4
  br label %102

99:                                               ; preds = %89
  %100 = load i64, i64* @VGA_GFX_MODE, align 8
  %101 = getelementptr inbounds i32, i32* %16, i64 %100
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i64, i64* @VGA_GFX_MISC, align 8
  %104 = getelementptr inbounds i32, i32* %16, i64 %103
  store i32 5, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %84
  %106 = load i64, i64* @VGA_GFX_COMPARE_MASK, align 8
  %107 = getelementptr inbounds i32, i32* %16, i64 %106
  store i32 15, i32* %107, align 4
  %108 = load i64, i64* @VGA_GFX_BIT_MASK, align 8
  %109 = getelementptr inbounds i32, i32* %16, i64 %108
  store i32 255, i32* %109, align 4
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %118, %105
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %111, 16
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %22, i64 %116
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %110

121:                                              ; preds = %110
  %122 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %123 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MODE_TEXT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i64, i64* @VGA_ATC_MODE, align 8
  %130 = getelementptr inbounds i32, i32* %22, i64 %129
  store i32 4, i32* %130, align 4
  br label %145

131:                                              ; preds = %121
  %132 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %133 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MODE_8BPP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i64, i64* @VGA_ATC_MODE, align 8
  %140 = getelementptr inbounds i32, i32* %22, i64 %139
  store i32 65, i32* %140, align 4
  br label %144

141:                                              ; preds = %131
  %142 = load i64, i64* @VGA_ATC_MODE, align 8
  %143 = getelementptr inbounds i32, i32* %22, i64 %142
  store i32 129, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %128
  %146 = load i64, i64* @VGA_ATC_OVERSCAN, align 8
  %147 = getelementptr inbounds i32, i32* %22, i64 %146
  store i32 0, i32* %147, align 4
  %148 = load i64, i64* @VGA_ATC_PLANE_ENABLE, align 8
  %149 = getelementptr inbounds i32, i32* %22, i64 %148
  store i32 15, i32* %149, align 4
  %150 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %151 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MODE_8BPP, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %145
  %157 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %158 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 3
  %162 = shl i32 %161, 1
  %163 = load i64, i64* @VGA_ATC_PEL, align 8
  %164 = getelementptr inbounds i32, i32* %22, i64 %163
  store i32 %162, i32* %164, align 4
  br label %173

165:                                              ; preds = %145
  %166 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, 7
  %171 = load i64, i64* @VGA_ATC_PEL, align 8
  %172 = getelementptr inbounds i32, i32* %22, i64 %171
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %165, %156
  %174 = load i64, i64* @VGA_ATC_COLOR_PAGE, align 8
  %175 = getelementptr inbounds i32, i32* %22, i64 %174
  store i32 0, i32* %175, align 4
  %176 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %177 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @MODE_TEXT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %173
  store i32 16, i32* %8, align 4
  %183 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %184 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @VGA_CRTC_MAX_SCAN, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, -32
  %190 = load i32, i32* %8, align 4
  %191 = sub nsw i32 %190, 1
  %192 = or i32 %189, %191
  %193 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %194 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @VGA_CRTC_MAX_SCAN, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32 %192, i32* %197, align 4
  br label %198

198:                                              ; preds = %182, %173
  %199 = load i32, i32* @VGA_MIS_W, align 4
  %200 = load i32, i32* @VGA_MIS_R, align 4
  %201 = call i32 @vga_io_r(i32 %200)
  %202 = or i32 %201, 1
  %203 = call i32 @vga_io_w(i32 %199, i32 %202)
  %204 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %205 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %198
  %209 = load i32, i32* @EGA_GFX_E0, align 4
  %210 = call i32 @vga_io_w(i32 %209, i32 0)
  %211 = load i32, i32* @EGA_GFX_E1, align 4
  %212 = call i32 @vga_io_w(i32 %211, i32 1)
  br label %213

213:                                              ; preds = %208, %198
  %214 = load i32, i32* @VGA_MIS_W, align 4
  %215 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %216 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @vga_io_w(i32 %214, i32 %217)
  %219 = call i32 @vga_io_wseq(i64 0, i32 1)
  %220 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %221 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %213
  %225 = load i32, i32* @VGA_PEL_MSK, align 4
  %226 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %227 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @vga_io_w(i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %224, %213
  %231 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %232 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %233 = getelementptr inbounds i32, i32* %19, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, 32
  %236 = call i32 @vga_io_wseq(i64 %231, i32 %235)
  store i32 2, i32* %9, align 4
  br label %237

237:                                              ; preds = %249, %230
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @VGA_SEQ_C, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %237
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %19, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @vga_io_wseq(i64 %243, i32 %247)
  br label %249

249:                                              ; preds = %241
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %9, align 4
  br label %237

252:                                              ; preds = %237
  %253 = call i32 @vga_io_wseq(i64 0, i32 3)
  %254 = load i64, i64* @VGA_CRTC_V_SYNC_END, align 8
  %255 = trunc i64 %254 to i32
  %256 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %257 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* @VGA_CRTC_V_SYNC_END, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @vga_io_wcrt(i32 %255, i32 %261)
  store i32 0, i32* %9, align 4
  br label %263

263:                                              ; preds = %277, %252
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* @VGA_CRTC_REGS, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %280

267:                                              ; preds = %263
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %270 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @vga_io_wcrt(i32 %268, i32 %275)
  br label %277

277:                                              ; preds = %267
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  br label %263

280:                                              ; preds = %263
  store i32 0, i32* %9, align 4
  br label %281

281:                                              ; preds = %292, %280
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* @VGA_GFX_C, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %281
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %16, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @vga_io_wgfx(i32 %286, i32 %290)
  br label %292

292:                                              ; preds = %285
  %293 = load i32, i32* %9, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %9, align 4
  br label %281

295:                                              ; preds = %281
  store i32 0, i32* %9, align 4
  br label %296

296:                                              ; preds = %309, %295
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* @VGA_ATT_C, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %312

300:                                              ; preds = %296
  %301 = load i32, i32* @VGA_IS1_RC, align 4
  %302 = call i32 @vga_io_r(i32 %301)
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %22, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @vga_io_wattr(i32 %303, i32 %307)
  br label %309

309:                                              ; preds = %300
  %310 = load i32, i32* %9, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %9, align 4
  br label %296

312:                                              ; preds = %296
  %313 = call i32 @mdelay(i32 50)
  %314 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %315 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %316 = getelementptr inbounds i32, i32* %19, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @vga_io_wseq(i64 %314, i32 %317)
  %319 = load i32, i32* @VGA_IS1_RC, align 4
  %320 = call i32 @vga_io_r(i32 %319)
  %321 = load i32, i32* @VGA_ATT_IW, align 4
  %322 = call i32 @vga_io_w(i32 %321, i32 32)
  %323 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %324 = call i32 @vga16fb_update_fix(%struct.fb_info* %323)
  %325 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %325)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vga_io_w(i32, i32) #2

declare dso_local i32 @vga_io_r(i32) #2

declare dso_local i32 @vga_io_wseq(i64, i32) #2

declare dso_local i32 @vga_io_wcrt(i32, i32) #2

declare dso_local i32 @vga_io_wgfx(i32, i32) #2

declare dso_local i32 @vga_io_wattr(i32, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @vga16fb_update_fix(%struct.fb_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
