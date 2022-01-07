; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_atyfb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_atyfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_8__, i32, %struct.TYPE_9__*, %struct.fb_var_screeninfo, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.fb_var_screeninfo = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.atyfb_par = type { i32, i32, i64, %struct.TYPE_12__, i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.fb_info*, i64, i32, i32*)*, i64 (%struct.fb_info*, i32*)*, i32 (%struct.fb_info*, i32*)* }
%struct.TYPE_10__ = type { i32 (%struct.fb_info*, i32*, i32, i32)* }

@.str = private unnamed_addr constant [18 x i8] c"Invalid pixclock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@atyfb_sync = common dso_local global i32* null, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@INTEGRATED = common dso_local global i32 0, align 4
@MEM_CNTL = common dso_local global i32 0, align 4
@MAGIC_POSTDIV = common dso_local global i32 0, align 4
@CT_BUS = common dso_local global i32 0, align 4
@DAC_CNTL = common dso_local global i32 0, align 4
@BUS_CNTL = common dso_local global i32 0, align 4
@VT_BUS = common dso_local global i32 0, align 4
@MOBIL_BUS = common dso_local global i32 0, align 4
@BUS_APER_REG_DIS = common dso_local global i32 0, align 4
@EXT_MEM_CNTL = common dso_local global i32 0, align 4
@DAC_MASK = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@CRTC_DBL_SCAN_EN = common dso_local global i32 0, align 4
@CRTC_INTERLACE_EN = common dso_local global i32 0, align 4
@EXT_VERT_STRETCH = common dso_local global i32 0, align 4
@LT_LCD_REGS = common dso_local global i32 0, align 4
@POWER_MANAGEMENT = common dso_local global i32 0, align 4
@lt_lcd_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @atyfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atyfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.atyfb_par*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.atyfb_par*
  store %struct.atyfb_par* %12, %struct.atyfb_par** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 3
  store %struct.fb_var_screeninfo* %14, %struct.fb_var_screeninfo** %5, align 8
  %15 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %16 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %299

20:                                               ; preds = %1
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %23 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %24 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %23, i32 0, i32 3
  %25 = call i32 @aty_var_to_crtc(%struct.fb_info* %21, %struct.fb_var_screeninfo* %22, %struct.TYPE_12__* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %299

30:                                               ; preds = %20
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %32 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %33 = call i64 @atyfb_get_pixclock(%struct.fb_var_screeninfo* %31, %struct.atyfb_par* %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i32 @PRINTKE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %299

40:                                               ; preds = %30
  %41 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %42 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %41, i32 0, i32 6
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32 (%struct.fb_info*, i64, i32, i32*)*, i32 (%struct.fb_info*, i64, i32, i32*)** %44, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %52 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %51, i32 0, i32 5
  %53 = call i32 %45(%struct.fb_info* %46, i64 %47, i32 %50, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %299

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %64 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %59
  %70 = load i32*, i32** @atyfb_sync, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32* %70, i32** %74, align 8
  %75 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %91

81:                                               ; preds = %59
  %82 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %87 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %81, %69
  %92 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %93 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %98 = call i32 @wait_for_idle(%struct.atyfb_par* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %101 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %102 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %101, i32 0, i32 3
  %103 = call i32 @aty_set_crtc(%struct.atyfb_par* %100, %struct.TYPE_12__* %102)
  %104 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %105 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %104, i32 0, i32 7
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32 (%struct.fb_info*, i32*, i32, i32)*, i32 (%struct.fb_info*, i32*, i32, i32)** %107, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %110 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %111 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %110, i32 0, i32 5
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %116 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 %108(%struct.fb_info* %109, i32* %111, i32 %114, i32 %117)
  %119 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %120 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %119, i32 0, i32 6
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32 (%struct.fb_info*, i32*)*, i32 (%struct.fb_info*, i32*)** %122, align 8
  %124 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %125 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %126 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %125, i32 0, i32 5
  %127 = call i32 %123(%struct.fb_info* %124, i32* %126)
  %128 = load i32, i32* @INTEGRATED, align 4
  %129 = call i64 @M64_HAS(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %154, label %131

131:                                              ; preds = %99
  %132 = load i32, i32* @MEM_CNTL, align 4
  %133 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %134 = call i32 @aty_ld_le32(i32 %132, %struct.atyfb_par* %133)
  %135 = and i32 %134, -251658241
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %6, align 8
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %149 [
    i32 8, label %140
    i32 16, label %143
    i32 32, label %146
  ]

140:                                              ; preds = %131
  %141 = load i64, i64* %6, align 8
  %142 = or i64 %141, 33554432
  store i64 %142, i64* %6, align 8
  br label %149

143:                                              ; preds = %131
  %144 = load i64, i64* %6, align 8
  %145 = or i64 %144, 50331648
  store i64 %145, i64* %6, align 8
  br label %149

146:                                              ; preds = %131
  %147 = load i64, i64* %6, align 8
  %148 = or i64 %147, 100663296
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %131, %146, %143, %140
  %150 = load i32, i32* @MEM_CNTL, align 4
  %151 = load i64, i64* %6, align 8
  %152 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %153 = call i32 @aty_st_le32(i32 %150, i64 %151, %struct.atyfb_par* %152)
  br label %260

154:                                              ; preds = %99
  %155 = load i32, i32* @MEM_CNTL, align 4
  %156 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %157 = call i32 @aty_ld_le32(i32 %155, %struct.atyfb_par* %156)
  %158 = and i32 %157, -267386881
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %6, align 8
  %160 = load i32, i32* @MAGIC_POSTDIV, align 4
  %161 = call i64 @M64_HAS(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %154
  %164 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %165 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 20
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %6, align 8
  %170 = or i64 %169, %168
  store i64 %170, i64* %6, align 8
  br label %171

171:                                              ; preds = %163, %154
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %183 [
    i32 8, label %175
    i32 24, label %175
    i32 16, label %177
    i32 32, label %180
  ]

175:                                              ; preds = %171, %171
  %176 = load i64, i64* %6, align 8
  store i64 %176, i64* %6, align 8
  br label %183

177:                                              ; preds = %171
  %178 = load i64, i64* %6, align 8
  %179 = or i64 %178, 67108864
  store i64 %179, i64* %6, align 8
  br label %183

180:                                              ; preds = %171
  %181 = load i64, i64* %6, align 8
  %182 = or i64 %181, 134217728
  store i64 %182, i64* %6, align 8
  br label %183

183:                                              ; preds = %171, %180, %177, %175
  %184 = load i32, i32* @CT_BUS, align 4
  %185 = call i64 @M64_HAS(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load i32, i32* @DAC_CNTL, align 4
  %189 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %190 = call i32 @aty_st_le32(i32 %188, i64 2264990084, %struct.atyfb_par* %189)
  %191 = load i32, i32* @BUS_CNTL, align 4
  %192 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %193 = call i32 @aty_st_le32(i32 %191, i64 1744830713, %struct.atyfb_par* %192)
  br label %255

194:                                              ; preds = %183
  %195 = load i32, i32* @VT_BUS, align 4
  %196 = call i64 @M64_HAS(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i32, i32* @DAC_CNTL, align 4
  %200 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %201 = call i32 @aty_st_le32(i32 %199, i64 2264990084, %struct.atyfb_par* %200)
  %202 = load i32, i32* @BUS_CNTL, align 4
  %203 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %204 = call i32 @aty_st_le32(i32 %202, i64 1744830713, %struct.atyfb_par* %203)
  br label %254

205:                                              ; preds = %194
  %206 = load i32, i32* @MOBIL_BUS, align 4
  %207 = call i64 @M64_HAS(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %205
  %210 = load i32, i32* @DAC_CNTL, align 4
  %211 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %212 = call i32 @aty_st_le32(i32 %210, i64 2147549442, %struct.atyfb_par* %211)
  %213 = load i32, i32* @BUS_CNTL, align 4
  %214 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %215 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i32, i32* @BUS_APER_REG_DIS, align 4
  br label %221

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %218
  %222 = phi i32 [ %219, %218 ], [ 0, %220 ]
  %223 = or i32 2066980928, %222
  %224 = sext i32 %223 to i64
  %225 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %226 = call i32 @aty_st_le32(i32 %213, i64 %224, %struct.atyfb_par* %225)
  br label %253

227:                                              ; preds = %205
  %228 = load i32, i32* @DAC_CNTL, align 4
  %229 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %230 = call i32 @aty_st_le32(i32 %228, i64 2248212738, %struct.atyfb_par* %229)
  %231 = load i32, i32* @BUS_CNTL, align 4
  %232 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %233 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* @BUS_APER_REG_DIS, align 4
  br label %239

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238, %236
  %240 = phi i32 [ %237, %236 ], [ 0, %238 ]
  %241 = or i32 2065932352, %240
  %242 = sext i32 %241 to i64
  %243 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %244 = call i32 @aty_st_le32(i32 %231, i64 %242, %struct.atyfb_par* %243)
  %245 = load i32, i32* @EXT_MEM_CNTL, align 4
  %246 = load i32, i32* @EXT_MEM_CNTL, align 4
  %247 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %248 = call i32 @aty_ld_le32(i32 %246, %struct.atyfb_par* %247)
  %249 = or i32 %248, 83886081
  %250 = sext i32 %249 to i64
  %251 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %252 = call i32 @aty_st_le32(i32 %245, i64 %250, %struct.atyfb_par* %251)
  br label %253

253:                                              ; preds = %239, %221
  br label %254

254:                                              ; preds = %253, %198
  br label %255

255:                                              ; preds = %254, %187
  %256 = load i32, i32* @MEM_CNTL, align 4
  %257 = load i64, i64* %6, align 8
  %258 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %259 = call i32 @aty_st_le32(i32 %256, i64 %257, %struct.atyfb_par* %258)
  br label %260

260:                                              ; preds = %255, %149
  %261 = load i32, i32* @DAC_MASK, align 4
  %262 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %263 = call i32 @aty_st_8(i32 %261, i32 255, %struct.atyfb_par* %262)
  %264 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %265 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %266 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %269 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @calc_line_length(%struct.atyfb_par* %264, i32 %267, i32 %270)
  %272 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %273 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 2
  store i32 %271, i32* %274, align 8
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp sle i32 %277, 8
  br i1 %278, label %279, label %281

279:                                              ; preds = %260
  %280 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %283

281:                                              ; preds = %260
  %282 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i32 [ %280, %279 ], [ %282, %281 ]
  %285 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %286 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 1
  store i32 %284, i32* %287, align 4
  %288 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %289 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %283
  %295 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %296 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %297 = call i32 @aty_init_engine(%struct.atyfb_par* %295, %struct.fb_info* %296)
  br label %298

298:                                              ; preds = %294, %283
  store i32 0, i32* %2, align 4
  br label %299

299:                                              ; preds = %298, %56, %36, %28, %19
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local i32 @aty_var_to_crtc(%struct.fb_info*, %struct.fb_var_screeninfo*, %struct.TYPE_12__*) #1

declare dso_local i64 @atyfb_get_pixclock(%struct.fb_var_screeninfo*, %struct.atyfb_par*) #1

declare dso_local i32 @PRINTKE(i8*) #1

declare dso_local i32 @wait_for_idle(%struct.atyfb_par*) #1

declare dso_local i32 @aty_set_crtc(%struct.atyfb_par*, %struct.TYPE_12__*) #1

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i64, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_8(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @calc_line_length(%struct.atyfb_par*, i32, i32) #1

declare dso_local i32 @aty_init_engine(%struct.atyfb_par*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
