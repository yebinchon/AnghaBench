; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_setmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__*, %struct.TYPE_21__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i8* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_16__ = type { %struct.fb_var_screeninfo, %struct.TYPE_24__ }
%struct.fb_var_screeninfo = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.fb_var_screeninfo, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_19__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32)* }

@viaparinfo = common dso_local global %struct.TYPE_28__* null, align 8
@VIA_STATE_OFF = common dso_local global i32 0, align 4
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@UNICHROME_K400 = common dso_local global i64 0, align 8
@viafbinfo = common dso_local global %struct.TYPE_16__* null, align 8
@res_patch_table = common dso_local global %struct.TYPE_18__* null, align 8
@viafb_dual_fb = common dso_local global i64 0, align 8
@viafbinfo1 = common dso_local global %struct.TYPE_15__* null, align 8
@viaparinfo1 = common dso_local global %struct.TYPE_27__* null, align 8
@IGA1 = common dso_local global i64 0, align 8
@IGA2 = common dso_local global i64 0, align 8
@viafb_SAMM_ON = common dso_local global i64 0, align 8
@viafb_second_xres = common dso_local global i32 0, align 4
@viafb_second_yres = common dso_local global i32 0, align 4
@viafb_refresh1 = common dso_local global i32 0, align 4
@viafb_CRT_ON = common dso_local global i64 0, align 8
@VIA_CRT = common dso_local global i32 0, align 4
@CR02 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@viafb_DVI_ON = common dso_local global i64 0, align 8
@viafb_LCD_ON = common dso_local global i64 0, align 8
@LCD_CENTERING = common dso_local global i8* null, align 8
@viafb_LCD2_ON = common dso_local global i64 0, align 8
@UNICHROME_CX700 = common dso_local global i64 0, align 8
@viafb_hotplug = common dso_local global i32 0, align 4
@viafb_hotplug_Xres = common dso_local global i32 0, align 4
@viafb_hotplug_Yres = common dso_local global i32 0, align 4
@viafb_hotplug_bpp = common dso_local global i32 0, align 4
@viafb_refresh = common dso_local global i32 0, align 4
@viafb_hotplug_refresh = common dso_local global i32 0, align 4
@DVI_Device = common dso_local global i32 0, align 4
@viafb_DeviceStatus = common dso_local global i32 0, align 4
@CRT_Device = common dso_local global i32 0, align 4
@clock = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@VIA_STATE_ON = common dso_local global i32 0, align 4
@VIA_CLKSRC_X1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viafb_setmode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_var_screeninfo, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %14, %19
  store i32 %20, i32* %5, align 4
  %21 = call i32 (...) @device_screen_off()
  %22 = call i32 (...) @device_off()
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @VIA_STATE_OFF, align 4
  %25 = call i32 @via_set_state(i32 %23, i32 %24)
  %26 = call i32 (...) @hw_init()
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UNICHROME_CLE266, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %0
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UNICHROME_K400, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %108

42:                                               ; preds = %34, %0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %48, label %108

48:                                               ; preds = %42
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 768
  br i1 %53, label %54, label %108

54:                                               ; preds = %48
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %104, %54
  %56 = load i32, i32* %1, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** @res_patch_table, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %107

62:                                               ; preds = %55
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** @res_patch_table, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** @res_patch_table, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** @res_patch_table, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** @res_patch_table, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @viafb_write_reg_mask(i32 %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %62
  %105 = load i32, i32* %1, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %1, align 4
  br label %55

107:                                              ; preds = %55
  br label %108

108:                                              ; preds = %107, %48, %42, %34
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @via_set_primary_pitch(i32 %112)
  %114 = load i64, i64* @viafb_dual_fb, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viafbinfo1, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  br label %126

121:                                              ; preds = %108
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  br label %126

126:                                              ; preds = %121, %116
  %127 = phi i32 [ %120, %116 ], [ %125, %121 ]
  %128 = call i32 @via_set_secondary_pitch(i32 %127)
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @via_set_primary_color_depth(i32 %131)
  %133 = load i64, i64* @viafb_dual_fb, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** @viaparinfo1, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  br label %143

139:                                              ; preds = %126
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  br label %143

143:                                              ; preds = %139, %135
  %144 = phi i32 [ %138, %135 ], [ %142, %139 ]
  %145 = call i32 @via_set_secondary_color_depth(i32 %144)
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* @IGA1, align 8
  %152 = call i32 @via_set_source(i32 %150, i64 %151)
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i64, i64* @IGA2, align 8
  %159 = call i32 @via_set_source(i32 %157, i64 %158)
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %143
  %167 = call i32 (...) @enable_second_display_channel()
  br label %170

168:                                              ; preds = %143
  %169 = call i32 (...) @disable_second_display_channel()
  br label %170

170:                                              ; preds = %168, %166
  %171 = load i64, i64* @viafb_dual_fb, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viafbinfo1, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = bitcast %struct.fb_var_screeninfo* %9 to i8*
  %177 = bitcast %struct.fb_var_screeninfo* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 12, i1 false)
  br label %201

178:                                              ; preds = %170
  %179 = load i64, i64* @viafb_SAMM_ON, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %178
  %182 = load i32, i32* @viafb_second_xres, align 4
  %183 = load i32, i32* @viafb_second_yres, align 4
  %184 = load i32, i32* @viafb_refresh1, align 4
  %185 = call i32 @viafb_get_best_mode(i32 %182, i32 %183, i32 %184)
  %186 = call i32 @viafb_fill_var_timing_info(%struct.fb_var_screeninfo* %9, i32 %185)
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %2, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %3, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 2
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %181, %178
  br label %201

201:                                              ; preds = %200, %173
  %202 = load i64, i64* @viafb_CRT_ON, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %257

204:                                              ; preds = %201
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @VIA_CRT, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %204
  %214 = load i64, i64* @viafb_SAMM_ON, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load i32, i32* %2, align 4
  %218 = load i32, i32* %3, align 4
  %219 = load i64, i64* @IGA2, align 8
  %220 = call i32 @viafb_fill_crtc_timing(%struct.fb_var_screeninfo* %9, i32 %217, i32 %218, i64 %219)
  br label %239

221:                                              ; preds = %213, %204
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @VIA_CRT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %221
  %233 = load i64, i64* @IGA1, align 8
  br label %236

234:                                              ; preds = %221
  %235 = load i64, i64* @IGA2, align 8
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i64 [ %233, %232 ], [ %235, %234 ]
  %238 = call i32 @viafb_fill_crtc_timing(%struct.fb_var_screeninfo* %223, i32 0, i32 0, i64 %237)
  br label %239

239:                                              ; preds = %236, %216
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = srem i32 %243, 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %239
  %247 = call i32 (...) @viafb_unlock_crt()
  %248 = load i32, i32* @CR02, align 4
  %249 = load i32, i32* @VIACR, align 4
  %250 = load i32, i32* @VIACR, align 4
  %251 = load i32, i32* @CR02, align 4
  %252 = call i64 @viafb_read_reg(i32 %250, i32 %251)
  %253 = sub nsw i64 %252, 1
  %254 = call i32 @viafb_write_reg(i32 %248, i32 %249, i64 %253)
  %255 = call i32 (...) @viafb_lock_crt()
  br label %256

256:                                              ; preds = %246, %239
  br label %257

257:                                              ; preds = %256, %201
  %258 = load i64, i64* @viafb_DVI_ON, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %287

260:                                              ; preds = %257
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @IGA2, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %277

269:                                              ; preds = %260
  %270 = load i64, i64* @viafb_SAMM_ON, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = load i32, i32* %2, align 4
  %274 = load i32, i32* %3, align 4
  %275 = load i64, i64* @IGA2, align 8
  %276 = call i32 @viafb_dvi_set_mode(%struct.fb_var_screeninfo* %9, i32 %273, i32 %274, i64 %275)
  br label %286

277:                                              ; preds = %269, %260
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @viafb_dvi_set_mode(%struct.fb_var_screeninfo* %279, i32 0, i32 0, i64 %284)
  br label %286

286:                                              ; preds = %277, %272
  br label %287

287:                                              ; preds = %286, %257
  %288 = load i64, i64* @viafb_LCD_ON, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %338

290:                                              ; preds = %287
  %291 = load i64, i64* @viafb_SAMM_ON, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %290
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %295 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @IGA2, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %312

301:                                              ; preds = %293
  %302 = load i32, i32* %2, align 4
  %303 = load i32, i32* %3, align 4
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %305, align 8
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %308 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 2
  %311 = call i32 @viafb_lcd_set_mode(%struct.fb_var_screeninfo* %9, i32 %302, i32 %303, %struct.TYPE_17__* %306, i32* %310)
  br label %337

312:                                              ; preds = %293, %290
  %313 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @IGA1, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %326

320:                                              ; preds = %312
  %321 = load i8*, i8** @LCD_CENTERING, align 8
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i32 0, i32 3
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 1
  store i8* %321, i8** %325, align 8
  br label %326

326:                                              ; preds = %320, %312
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %330 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %329, i32 0, i32 3
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %330, align 8
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 2
  %336 = call i32 @viafb_lcd_set_mode(%struct.fb_var_screeninfo* %328, i32 0, i32 0, %struct.TYPE_17__* %331, i32* %335)
  br label %337

337:                                              ; preds = %326, %301
  br label %338

338:                                              ; preds = %337, %287
  %339 = load i64, i64* @viafb_LCD2_ON, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %389

341:                                              ; preds = %338
  %342 = load i64, i64* @viafb_SAMM_ON, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %363

344:                                              ; preds = %341
  %345 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %346 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %345, i32 0, i32 2
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @IGA2, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %363

352:                                              ; preds = %344
  %353 = load i32, i32* %2, align 4
  %354 = load i32, i32* %3, align 4
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %356, align 8
  %358 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 1
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 1
  %362 = call i32 @viafb_lcd_set_mode(%struct.fb_var_screeninfo* %9, i32 %353, i32 %354, %struct.TYPE_17__* %357, i32* %361)
  br label %388

363:                                              ; preds = %344, %341
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %364, i32 0, i32 2
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @IGA1, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %377

371:                                              ; preds = %363
  %372 = load i8*, i8** @LCD_CENTERING, align 8
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %374 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i32 0, i32 2
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 1
  store i8* %372, i8** %376, align 8
  br label %377

377:                                              ; preds = %371, %363
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %381 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %380, i32 0, i32 2
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %381, align 8
  %383 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 1
  %387 = call i32 @viafb_lcd_set_mode(%struct.fb_var_screeninfo* %379, i32 0, i32 0, %struct.TYPE_17__* %382, i32* %386)
  br label %388

388:                                              ; preds = %377, %352
  br label %389

389:                                              ; preds = %388, %338
  %390 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %391 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @UNICHROME_CX700, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %405

397:                                              ; preds = %389
  %398 = load i64, i64* @viafb_LCD_ON, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %403, label %400

400:                                              ; preds = %397
  %401 = load i64, i64* @viafb_DVI_ON, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %400, %397
  %404 = call i32 (...) @set_display_channel()
  br label %405

405:                                              ; preds = %403, %400, %389
  %406 = load i32, i32* @viafb_hotplug, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %429, label %408

408:                                              ; preds = %405
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  store i32 %412, i32* @viafb_hotplug_Xres, align 4
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  store i32 %416, i32* @viafb_hotplug_Yres, align 4
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 4
  store i32 %420, i32* @viafb_hotplug_bpp, align 4
  %421 = load i32, i32* @viafb_refresh, align 4
  store i32 %421, i32* @viafb_hotplug_refresh, align 4
  %422 = load i64, i64* @viafb_DVI_ON, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %408
  %425 = load i32, i32* @DVI_Device, align 4
  store i32 %425, i32* @viafb_DeviceStatus, align 4
  br label %428

426:                                              ; preds = %408
  %427 = load i32, i32* @CRT_Device, align 4
  store i32 %427, i32* @viafb_DeviceStatus, align 4
  br label %428

428:                                              ; preds = %426, %424
  br label %429

429:                                              ; preds = %428, %405
  %430 = call i32 (...) @device_on()
  %431 = load i64, i64* @viafb_SAMM_ON, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %439, label %433

433:                                              ; preds = %429
  %434 = load i32, i32* %5, align 4
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 0
  %437 = call i32 @get_sync(%struct.fb_var_screeninfo* %436)
  %438 = call i32 @via_set_sync_polarity(i32 %434, i32 %437)
  br label %456

439:                                              ; preds = %429
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %441 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_26__*, %struct.TYPE_26__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** @viafbinfo, align 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 0
  %447 = call i32 @get_sync(%struct.fb_var_screeninfo* %446)
  %448 = call i32 @via_set_sync_polarity(i32 %444, i32 %447)
  %449 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %450 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %449, i32 0, i32 0
  %451 = load %struct.TYPE_26__*, %struct.TYPE_26__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @get_sync(%struct.fb_var_screeninfo* %9)
  %455 = call i32 @via_set_sync_polarity(i32 %453, i32 %454)
  br label %456

456:                                              ; preds = %439, %433
  %457 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 6), align 8
  %458 = load i32, i32* @VIA_STATE_ON, align 4
  %459 = call i32 %457(i32 %458)
  %460 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 5), align 8
  %461 = load i32, i32* @VIA_CLKSRC_X1, align 4
  %462 = call i32 %460(i32 %461, i32 1)
  %463 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 4), align 8
  %464 = load i32, i32* @VIA_CLKSRC_X1, align 4
  %465 = call i32 %463(i32 %464, i32 1)
  %466 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 0
  %468 = load %struct.TYPE_26__*, %struct.TYPE_26__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %479

472:                                              ; preds = %456
  %473 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 3), align 8
  %474 = load i32, i32* @VIA_STATE_ON, align 4
  %475 = call i32 %473(i32 %474)
  %476 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 2), align 8
  %477 = load i32, i32* @VIA_STATE_ON, align 4
  %478 = call i32 %476(i32 %477)
  br label %486

479:                                              ; preds = %456
  %480 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 3), align 8
  %481 = load i32, i32* @VIA_STATE_OFF, align 4
  %482 = call i32 %480(i32 %481)
  %483 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 2), align 8
  %484 = load i32, i32* @VIA_STATE_OFF, align 4
  %485 = call i32 %483(i32 %484)
  br label %486

486:                                              ; preds = %479, %472
  %487 = load %struct.TYPE_28__*, %struct.TYPE_28__** @viaparinfo, align 8
  %488 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %487, i32 0, i32 0
  %489 = load %struct.TYPE_26__*, %struct.TYPE_26__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %500

493:                                              ; preds = %486
  %494 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 1), align 8
  %495 = load i32, i32* @VIA_STATE_ON, align 4
  %496 = call i32 %494(i32 %495)
  %497 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 0), align 8
  %498 = load i32, i32* @VIA_STATE_ON, align 4
  %499 = call i32 %497(i32 %498)
  br label %507

500:                                              ; preds = %486
  %501 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 1), align 8
  %502 = load i32, i32* @VIA_STATE_OFF, align 4
  %503 = call i32 %501(i32 %502)
  %504 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @clock, i32 0, i32 0), align 8
  %505 = load i32, i32* @VIA_STATE_OFF, align 4
  %506 = call i32 %504(i32 %505)
  br label %507

507:                                              ; preds = %500, %493
  %508 = load i32, i32* %5, align 4
  %509 = load i32, i32* @VIA_STATE_ON, align 4
  %510 = call i32 @via_set_state(i32 %508, i32 %509)
  %511 = call i32 (...) @device_screen_on()
  ret i32 1
}

declare dso_local i32 @device_screen_off(...) #1

declare dso_local i32 @device_off(...) #1

declare dso_local i32 @via_set_state(i32, i32) #1

declare dso_local i32 @hw_init(...) #1

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @via_set_primary_pitch(i32) #1

declare dso_local i32 @via_set_secondary_pitch(i32) #1

declare dso_local i32 @via_set_primary_color_depth(i32) #1

declare dso_local i32 @via_set_secondary_color_depth(i32) #1

declare dso_local i32 @via_set_source(i32, i64) #1

declare dso_local i32 @enable_second_display_channel(...) #1

declare dso_local i32 @disable_second_display_channel(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @viafb_fill_var_timing_info(%struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @viafb_get_best_mode(i32, i32, i32) #1

declare dso_local i32 @viafb_fill_crtc_timing(%struct.fb_var_screeninfo*, i32, i32, i64) #1

declare dso_local i32 @viafb_unlock_crt(...) #1

declare dso_local i32 @viafb_write_reg(i32, i32, i64) #1

declare dso_local i64 @viafb_read_reg(i32, i32) #1

declare dso_local i32 @viafb_lock_crt(...) #1

declare dso_local i32 @viafb_dvi_set_mode(%struct.fb_var_screeninfo*, i32, i32, i64) #1

declare dso_local i32 @viafb_lcd_set_mode(%struct.fb_var_screeninfo*, i32, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @set_display_channel(...) #1

declare dso_local i32 @device_on(...) #1

declare dso_local i32 @via_set_sync_polarity(i32, i32) #1

declare dso_local i32 @get_sync(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @device_screen_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
