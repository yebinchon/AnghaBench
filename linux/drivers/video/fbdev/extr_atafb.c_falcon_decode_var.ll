; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_decode_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_decode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.atafb_par*)* }
%struct.atafb_par = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.pixel_clock = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mon_type = common dso_local global i32 0, align 4
@F_MON_SM = common dso_local global i32 0, align 4
@DontCalcRes = common dso_local global i64 0, align 8
@atafb_predefined = common dso_local global %struct.fb_var_screeninfo* null, align 8
@fbhw = common dso_local global %struct.TYPE_9__* null, align 8
@F_MON_SC = common dso_local global i32 0, align 4
@F_MON_TV = common dso_local global i32 0, align 4
@f32 = common dso_local global %struct.pixel_clock zeroinitializer, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@f25 = common dso_local global %struct.pixel_clock zeroinitializer, align 4
@fb_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@fext = common dso_local global %struct.pixel_clock zeroinitializer, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@f030_bus_width = common dso_local global i32 0, align 4
@VCO_SHORTOFFS = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@VCO_HSYPOS = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@VCO_VSYPOS = common dso_local global i32 0, align 4
@VMO_DOUBLE = common dso_local global i32 0, align 4
@VMO_INTER = common dso_local global i32 0, align 4
@F_MON_VGA = common dso_local global i32 0, align 4
@screen_len = common dso_local global i32 0, align 4
@screen_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.atafb_par*)* @falcon_decode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_decode_var(%struct.fb_var_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.atafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pixel_clock*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.fb_var_screeninfo*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %5, align 8
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %24, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %2
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %58, %2
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %1258

67:                                               ; preds = %61
  %68 = load i32, i32* @mon_type, align 4
  %69 = load i32, i32* @F_MON_SM, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %1258

77:                                               ; preds = %71, %67
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  store i32 1, i32* %6, align 4
  %81 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %82 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %81, i32 0, i32 14
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 1024, i32* %84, align 8
  %85 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %86 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %85, i32 0, i32 14
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 512, i32* %88, align 4
  br label %136

89:                                               ; preds = %77
  %90 = load i32, i32* %6, align 4
  %91 = icmp sle i32 %90, 2
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  store i32 2, i32* %6, align 4
  %93 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %94 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %93, i32 0, i32 14
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %98 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %97, i32 0, i32 14
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32 256, i32* %100, align 4
  br label %135

101:                                              ; preds = %89
  %102 = load i32, i32* %6, align 4
  %103 = icmp sle i32 %102, 4
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  store i32 4, i32* %6, align 4
  %105 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %106 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %105, i32 0, i32 14
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %110 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %109, i32 0, i32 14
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %134

113:                                              ; preds = %101
  %114 = load i32, i32* %6, align 4
  %115 = icmp sle i32 %114, 8
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  store i32 8, i32* %6, align 4
  %117 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %118 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %117, i32 0, i32 14
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 16, i32* %120, align 8
  br label %133

121:                                              ; preds = %113
  %122 = load i32, i32* %6, align 4
  %123 = icmp sle i32 %122, 16
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  store i32 16, i32* %6, align 4
  %125 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %126 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %125, i32 0, i32 14
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 256, i32* %128, align 8
  br label %132

129:                                              ; preds = %121
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %1258

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %116
  br label %134

134:                                              ; preds = %133, %104
  br label %135

135:                                              ; preds = %134, %92
  br label %136

136:                                              ; preds = %135, %80
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %139 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %138, i32 0, i32 14
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 8
  %142 = load i32, i32* @mon_type, align 4
  %143 = load i32, i32* @F_MON_SM, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %136
  %146 = load i64, i64* @DontCalcRes, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %181

148:                                              ; preds = %145, %136
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** @atafb_predefined, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i64 0
  store %struct.fb_var_screeninfo* %150, %struct.fb_var_screeninfo** %34, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %34, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %151, %154
  br i1 %155, label %172, label %156

156:                                              ; preds = %148
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %34, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %159, %162
  br i1 %163, label %172, label %164

164:                                              ; preds = %156
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %34, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %167, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %164, %156, %148
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %1258

175:                                              ; preds = %164
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fbhw, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32 (%struct.atafb_par*)*, i32 (%struct.atafb_par*)** %177, align 8
  %179 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %180 = call i32 %178(%struct.atafb_par* %179)
  br label %1195

181:                                              ; preds = %145
  %182 = load i32, i32* %7, align 4
  %183 = icmp sle i32 %182, 320
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 320, i32* %7, align 4
  br label %193

185:                                              ; preds = %181
  %186 = load i32, i32* %7, align 4
  %187 = icmp sle i32 %186, 640
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 16
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 640, i32* %7, align 4
  br label %192

192:                                              ; preds = %191, %188, %185
  br label %193

193:                                              ; preds = %192, %184
  %194 = load i32, i32* %8, align 4
  %195 = icmp sle i32 %194, 200
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 200, i32* %8, align 4
  br label %207

197:                                              ; preds = %193
  %198 = load i32, i32* %8, align 4
  %199 = icmp sle i32 %198, 240
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 240, i32* %8, align 4
  br label %206

201:                                              ; preds = %197
  %202 = load i32, i32* %8, align 4
  %203 = icmp sle i32 %202, 400
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 400, i32* %8, align 4
  br label %205

205:                                              ; preds = %204, %201
  br label %206

206:                                              ; preds = %205, %200
  br label %207

207:                                              ; preds = %206, %196
  %208 = load i32, i32* %6, align 4
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i32
  %211 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %212 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %211, i32 0, i32 14
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 3
  store i32 %210, i32* %214, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp eq i32 %215, 1
  %217 = zext i1 %216 to i32
  %218 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %219 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %218, i32 0, i32 14
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 4
  store i32 %217, i32* %221, align 8
  %222 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %223 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %222, i32 0, i32 14
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %207
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, 63
  %231 = and i32 %230, -64
  store i32 %231, i32* %7, align 4
  br label %244

232:                                              ; preds = %207
  %233 = load i32, i32* %6, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 31
  %238 = and i32 %237, -32
  store i32 %238, i32* %7, align 4
  br label %243

239:                                              ; preds = %232
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 15
  %242 = and i32 %241, -16
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %239, %235
  br label %244

244:                                              ; preds = %243, %228
  %245 = load i32, i32* %8, align 4
  %246 = icmp sge i32 %245, 400
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 15
  %250 = and i32 %249, -16
  store i32 %250, i32* %8, align 4
  br label %255

251:                                              ; preds = %244
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 7
  %254 = and i32 %253, -8
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %251, %247
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i32, i32* %7, align 4
  store i32 %260, i32* %9, align 4
  br label %273

261:                                              ; preds = %255
  %262 = load i32, i32* %6, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, 31
  %267 = and i32 %266, -32
  store i32 %267, i32* %9, align 4
  br label %272

268:                                              ; preds = %261
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 15
  %271 = and i32 %270, -16
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %268, %264
  br label %273

273:                                              ; preds = %272, %259
  %274 = load i32, i32* %10, align 4
  %275 = icmp sle i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  store i32 0, i32* %10, align 4
  br label %284

277:                                              ; preds = %273
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %8, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %277
  %282 = load i32, i32* %8, align 4
  store i32 %282, i32* %10, align 4
  br label %283

283:                                              ; preds = %281, %277
  br label %284

284:                                              ; preds = %283, %276
  %285 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %286 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = icmp sgt i32 %287, 1
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %291 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = sub nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %289, %284
  %295 = load i32, i32* %6, align 4
  %296 = load i32, i32* %7, align 4
  %297 = mul nsw i32 %295, %296
  %298 = sdiv i32 %297, 16
  %299 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %300 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %299, i32 0, i32 14
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 5
  store i32 %298, i32* %302, align 4
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* %7, align 4
  %306 = sub nsw i32 %304, %305
  %307 = mul nsw i32 %303, %306
  %308 = sdiv i32 %307, 16
  %309 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %310 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %309, i32 0, i32 14
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 6
  store i32 %308, i32* %312, align 8
  %313 = load i32, i32* %7, align 4
  %314 = icmp slt i32 %313, 640
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i32 2, i32 1
  store i32 %316, i32* %22, align 4
  %317 = load i32, i32* @mon_type, align 4
  %318 = load i32, i32* @F_MON_SC, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %324, label %320

320:                                              ; preds = %294
  %321 = load i32, i32* @mon_type, align 4
  %322 = load i32, i32* @F_MON_TV, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %408

324:                                              ; preds = %320, %294
  %325 = load i32, i32* %22, align 4
  %326 = mul nsw i32 2, %325
  store i32 %326, i32* %21, align 4
  %327 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %328 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f32, i32 0, i32 0), align 4
  %331 = load i32, i32* %21, align 4
  %332 = mul nsw i32 %330, %331
  %333 = icmp sgt i32 %329, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %324
  %335 = load i32, i32* @EINVAL, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %3, align 4
  br label %1258

337:                                              ; preds = %324
  store %struct.pixel_clock* @f32, %struct.pixel_clock** %20, align 8
  %338 = load i32, i32* %8, align 4
  %339 = icmp sgt i32 %338, 240
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  store i32 1, i32* %18, align 4
  br label %341

341:                                              ; preds = %340, %337
  %342 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %343 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %356

346:                                              ; preds = %341
  store i32 32, i32* %11, align 4
  store i32 18, i32* %12, align 4
  %347 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %348 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %21, align 4
  %351 = sdiv i32 %349, %350
  store i32 %351, i32* %13, align 4
  store i32 31, i32* %14, align 4
  store i32 14, i32* %15, align 4
  %352 = load i32, i32* %18, align 4
  %353 = icmp ne i32 %352, 0
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 3, i32 4
  store i32 %355, i32* %16, align 4
  br label %407

356:                                              ; preds = %341
  %357 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %358 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %11, align 4
  %360 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %361 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %360, i32 0, i32 7
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %12, align 4
  %363 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %364 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %363, i32 0, i32 8
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %13, align 4
  %366 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %367 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %366, i32 0, i32 9
  %368 = load i32, i32* %367, align 4
  store i32 %368, i32* %14, align 4
  %369 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %370 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %369, i32 0, i32 10
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %15, align 4
  %372 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %373 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %372, i32 0, i32 11
  %374 = load i32, i32* %373, align 4
  store i32 %374, i32* %16, align 4
  %375 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %376 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %375, i32 0, i32 12
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %391

381:                                              ; preds = %356
  %382 = load i32, i32* %14, align 4
  %383 = add nsw i32 %382, 1
  %384 = sdiv i32 %383, 2
  store i32 %384, i32* %14, align 4
  %385 = load i32, i32* %15, align 4
  %386 = add nsw i32 %385, 1
  %387 = sdiv i32 %386, 2
  store i32 %387, i32* %15, align 4
  %388 = load i32, i32* %16, align 4
  %389 = add nsw i32 %388, 1
  %390 = sdiv i32 %389, 2
  store i32 %390, i32* %16, align 4
  br label %406

391:                                              ; preds = %356
  %392 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %393 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %392, i32 0, i32 12
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %405

398:                                              ; preds = %391
  %399 = load i32, i32* %14, align 4
  %400 = mul nsw i32 %399, 2
  store i32 %400, i32* %14, align 4
  %401 = load i32, i32* %15, align 4
  %402 = mul nsw i32 %401, 2
  store i32 %402, i32* %15, align 4
  %403 = load i32, i32* %16, align 4
  %404 = mul nsw i32 %403, 2
  store i32 %404, i32* %16, align 4
  br label %405

405:                                              ; preds = %398, %391
  br label %406

406:                                              ; preds = %405, %381
  br label %407

407:                                              ; preds = %406, %346
  br label %636

408:                                              ; preds = %320
  %409 = load i32, i32* %6, align 4
  %410 = icmp eq i32 %409, 16
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  store i32 2, i32* %22, align 4
  br label %412

412:                                              ; preds = %411, %408
  %413 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %414 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %495

417:                                              ; preds = %412
  %418 = load i32, i32* %22, align 4
  %419 = mul nsw i32 1, %418
  store i32 %419, i32* %21, align 4
  %420 = load i32, i32* %21, align 4
  %421 = load i32, i32* %7, align 4
  %422 = mul nsw i32 %420, %421
  %423 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f25, i32 0, i32 2), align 4
  %424 = add nsw i32 %422, %423
  %425 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f25, i32 0, i32 1), align 4
  %426 = add nsw i32 %424, %425
  %427 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f25, i32 0, i32 3), align 4
  %428 = add nsw i32 %426, %427
  %429 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 0), align 4
  %430 = mul nsw i32 %428, %429
  %431 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f25, i32 0, i32 4), align 4
  %432 = icmp slt i32 %430, %431
  br i1 %432, label %433, label %434

433:                                              ; preds = %417
  store %struct.pixel_clock* @f25, %struct.pixel_clock** %20, align 8
  br label %472

434:                                              ; preds = %417
  %435 = load i32, i32* %21, align 4
  %436 = load i32, i32* %7, align 4
  %437 = mul nsw i32 %435, %436
  %438 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f32, i32 0, i32 2), align 4
  %439 = add nsw i32 %437, %438
  %440 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f32, i32 0, i32 1), align 4
  %441 = add nsw i32 %439, %440
  %442 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f32, i32 0, i32 3), align 4
  %443 = add nsw i32 %441, %442
  %444 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 0), align 4
  %445 = mul nsw i32 %443, %444
  %446 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f32, i32 0, i32 4), align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %434
  store %struct.pixel_clock* @f32, %struct.pixel_clock** %20, align 8
  br label %471

449:                                              ; preds = %434
  %450 = load i32, i32* %21, align 4
  %451 = load i32, i32* %7, align 4
  %452 = mul nsw i32 %450, %451
  %453 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 2), align 4
  %454 = add nsw i32 %452, %453
  %455 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 1), align 4
  %456 = add nsw i32 %454, %455
  %457 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 3), align 4
  %458 = add nsw i32 %456, %457
  %459 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 0), align 4
  %460 = mul nsw i32 %458, %459
  %461 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 4), align 4
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %463, label %467

463:                                              ; preds = %449
  %464 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 4), align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %463
  store %struct.pixel_clock* @fext, %struct.pixel_clock** %20, align 8
  br label %470

467:                                              ; preds = %463, %449
  %468 = load i32, i32* @EINVAL, align 4
  %469 = sub nsw i32 0, %468
  store i32 %469, i32* %3, align 4
  br label %1258

470:                                              ; preds = %466
  br label %471

471:                                              ; preds = %470, %448
  br label %472

472:                                              ; preds = %471, %433
  %473 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %474 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* %21, align 4
  %477 = sdiv i32 %475, %476
  store i32 %477, i32* %11, align 4
  %478 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %479 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* %21, align 4
  %482 = sdiv i32 %480, %481
  store i32 %482, i32* %12, align 4
  %483 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %484 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %21, align 4
  %487 = sdiv i32 %485, %486
  store i32 %487, i32* %13, align 4
  %488 = load i32, i32* %11, align 4
  %489 = load i32, i32* %7, align 4
  %490 = add nsw i32 %488, %489
  %491 = load i32, i32* %12, align 4
  %492 = add nsw i32 %490, %491
  %493 = load i32, i32* %13, align 4
  %494 = add nsw i32 %492, %493
  store i32 %494, i32* %35, align 4
  store i32 31, i32* %14, align 4
  store i32 11, i32* %15, align 4
  store i32 3, i32* %16, align 4
  br label %631

495:                                              ; preds = %412
  %496 = load i64, i64* @ULONG_MAX, align 8
  store i64 %496, i64* %37, align 8
  store %struct.pixel_clock* null, %struct.pixel_clock** %20, align 8
  store i32 1, i32* %36, align 4
  br label %497

497:                                              ; preds = %564, %495
  %498 = load i32, i32* %36, align 4
  %499 = icmp sle i32 %498, 4
  br i1 %499, label %500, label %567

500:                                              ; preds = %497
  %501 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f25, i32 0, i32 0), align 4
  %502 = load i32, i32* %36, align 4
  %503 = mul nsw i32 %501, %502
  %504 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %505 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %504, i32 0, i32 5
  %506 = load i32, i32* %505, align 4
  %507 = icmp sge i32 %503, %506
  br i1 %507, label %508, label %520

508:                                              ; preds = %500
  %509 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f25, i32 0, i32 0), align 4
  %510 = load i32, i32* %36, align 4
  %511 = mul nsw i32 %509, %510
  %512 = sext i32 %511 to i64
  %513 = load i64, i64* %37, align 8
  %514 = icmp ult i64 %512, %513
  br i1 %514, label %515, label %520

515:                                              ; preds = %508
  %516 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f25, i32 0, i32 0), align 4
  %517 = load i32, i32* %36, align 4
  %518 = mul nsw i32 %516, %517
  %519 = sext i32 %518 to i64
  store i64 %519, i64* %37, align 8
  store %struct.pixel_clock* @f25, %struct.pixel_clock** %20, align 8
  br label %520

520:                                              ; preds = %515, %508, %500
  %521 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f32, i32 0, i32 0), align 4
  %522 = load i32, i32* %36, align 4
  %523 = mul nsw i32 %521, %522
  %524 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %525 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %524, i32 0, i32 5
  %526 = load i32, i32* %525, align 4
  %527 = icmp sge i32 %523, %526
  br i1 %527, label %528, label %540

528:                                              ; preds = %520
  %529 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f32, i32 0, i32 0), align 4
  %530 = load i32, i32* %36, align 4
  %531 = mul nsw i32 %529, %530
  %532 = sext i32 %531 to i64
  %533 = load i64, i64* %37, align 8
  %534 = icmp ult i64 %532, %533
  br i1 %534, label %535, label %540

535:                                              ; preds = %528
  %536 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @f32, i32 0, i32 0), align 4
  %537 = load i32, i32* %36, align 4
  %538 = mul nsw i32 %536, %537
  %539 = sext i32 %538 to i64
  store i64 %539, i64* %37, align 8
  store %struct.pixel_clock* @f32, %struct.pixel_clock** %20, align 8
  br label %540

540:                                              ; preds = %535, %528, %520
  %541 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 0), align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %563

543:                                              ; preds = %540
  %544 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 0), align 4
  %545 = load i32, i32* %36, align 4
  %546 = mul nsw i32 %544, %545
  %547 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %548 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %547, i32 0, i32 5
  %549 = load i32, i32* %548, align 4
  %550 = icmp sge i32 %546, %549
  br i1 %550, label %551, label %563

551:                                              ; preds = %543
  %552 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 0), align 4
  %553 = load i32, i32* %36, align 4
  %554 = mul nsw i32 %552, %553
  %555 = sext i32 %554 to i64
  %556 = load i64, i64* %37, align 8
  %557 = icmp ult i64 %555, %556
  br i1 %557, label %558, label %563

558:                                              ; preds = %551
  %559 = load i32, i32* getelementptr inbounds (%struct.pixel_clock, %struct.pixel_clock* @fext, i32 0, i32 0), align 4
  %560 = load i32, i32* %36, align 4
  %561 = mul nsw i32 %559, %560
  %562 = sext i32 %561 to i64
  store i64 %562, i64* %37, align 8
  store %struct.pixel_clock* @fext, %struct.pixel_clock** %20, align 8
  br label %563

563:                                              ; preds = %558, %551, %543, %540
  br label %564

564:                                              ; preds = %563
  %565 = load i32, i32* %36, align 4
  %566 = mul nsw i32 %565, 2
  store i32 %566, i32* %36, align 4
  br label %497

567:                                              ; preds = %497
  %568 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %569 = icmp ne %struct.pixel_clock* %568, null
  br i1 %569, label %573, label %570

570:                                              ; preds = %567
  %571 = load i32, i32* @EINVAL, align 4
  %572 = sub nsw i32 0, %571
  store i32 %572, i32* %3, align 4
  br label %1258

573:                                              ; preds = %567
  %574 = load i64, i64* %37, align 8
  %575 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %576 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  %579 = udiv i64 %574, %578
  %580 = trunc i64 %579 to i32
  store i32 %580, i32* %21, align 4
  %581 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %582 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %581, i32 0, i32 6
  %583 = load i32, i32* %582, align 4
  store i32 %583, i32* %11, align 4
  %584 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %585 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %584, i32 0, i32 7
  %586 = load i32, i32* %585, align 4
  store i32 %586, i32* %12, align 4
  %587 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %588 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %587, i32 0, i32 8
  %589 = load i32, i32* %588, align 4
  store i32 %589, i32* %13, align 4
  %590 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %591 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %590, i32 0, i32 9
  %592 = load i32, i32* %591, align 4
  store i32 %592, i32* %14, align 4
  %593 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %594 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %593, i32 0, i32 10
  %595 = load i32, i32* %594, align 4
  store i32 %595, i32* %15, align 4
  %596 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %597 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %596, i32 0, i32 11
  %598 = load i32, i32* %597, align 4
  store i32 %598, i32* %16, align 4
  %599 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %600 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %599, i32 0, i32 12
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %603 = and i32 %601, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %615

605:                                              ; preds = %573
  %606 = load i32, i32* %14, align 4
  %607 = add nsw i32 %606, 1
  %608 = sdiv i32 %607, 2
  store i32 %608, i32* %14, align 4
  %609 = load i32, i32* %15, align 4
  %610 = add nsw i32 %609, 1
  %611 = sdiv i32 %610, 2
  store i32 %611, i32* %15, align 4
  %612 = load i32, i32* %16, align 4
  %613 = add nsw i32 %612, 1
  %614 = sdiv i32 %613, 2
  store i32 %614, i32* %16, align 4
  br label %630

615:                                              ; preds = %573
  %616 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %617 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %616, i32 0, i32 12
  %618 = load i32, i32* %617, align 4
  %619 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %620 = and i32 %618, %619
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %629

622:                                              ; preds = %615
  %623 = load i32, i32* %14, align 4
  %624 = mul nsw i32 %623, 2
  store i32 %624, i32* %14, align 4
  %625 = load i32, i32* %15, align 4
  %626 = mul nsw i32 %625, 2
  store i32 %626, i32* %15, align 4
  %627 = load i32, i32* %16, align 4
  %628 = mul nsw i32 %627, 2
  store i32 %628, i32* %16, align 4
  br label %629

629:                                              ; preds = %622, %615
  br label %630

630:                                              ; preds = %629, %605
  br label %631

631:                                              ; preds = %630, %472
  %632 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %633 = icmp eq %struct.pixel_clock* %632, @fext
  br i1 %633, label %634, label %635

634:                                              ; preds = %631
  store i32 1, i32* %24, align 4
  br label %635

635:                                              ; preds = %634, %631
  br label %636

636:                                              ; preds = %635, %407
  %637 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %638 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %637, i32 0, i32 4
  %639 = load i32, i32* %638, align 4
  %640 = load i32, i32* %21, align 4
  %641 = sdiv i32 %639, %640
  %642 = sdiv i32 %641, 8
  %643 = load i32, i32* %6, align 4
  %644 = mul nsw i32 %642, %643
  %645 = sext i32 %644 to i64
  %646 = icmp sgt i64 %645, 32000000
  br i1 %646, label %647, label %650

647:                                              ; preds = %636
  %648 = load i32, i32* @EINVAL, align 4
  %649 = sub nsw i32 0, %648
  store i32 %649, i32* %3, align 4
  br label %1258

650:                                              ; preds = %636
  %651 = load i32, i32* %16, align 4
  %652 = icmp slt i32 %651, 1
  br i1 %652, label %653, label %654

653:                                              ; preds = %650
  store i32 1, i32* %16, align 4
  br label %654

654:                                              ; preds = %653, %650
  %655 = load i32, i32* %13, align 4
  %656 = load i32, i32* %12, align 4
  %657 = add nsw i32 %656, %655
  store i32 %657, i32* %12, align 4
  %658 = load i32, i32* %16, align 4
  %659 = load i32, i32* %15, align 4
  %660 = add nsw i32 %659, %658
  store i32 %660, i32* %15, align 4
  br label %661

661:                                              ; preds = %1171, %1139, %1107, %1078, %1067, %957, %654
  %662 = load i32, i32* @mon_type, align 4
  %663 = load i32, i32* @f030_bus_width, align 4
  %664 = or i32 %662, %663
  %665 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %666 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %665, i32 0, i32 14
  %667 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %667, i32 0, i32 7
  store i32 %664, i32* %668, align 4
  %669 = load i32, i32* %24, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %679, label %671

671:                                              ; preds = %661
  %672 = load i32, i32* @VCO_SHORTOFFS, align 4
  %673 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %674 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %673, i32 0, i32 14
  %675 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %674, i32 0, i32 0
  %676 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %675, i32 0, i32 7
  %677 = load i32, i32* %676, align 4
  %678 = or i32 %677, %672
  store i32 %678, i32* %676, align 4
  br label %679

679:                                              ; preds = %671, %661
  %680 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %681 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %680, i32 0, i32 13
  %682 = load i32, i32* %681, align 4
  %683 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %684 = and i32 %682, %683
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %694

686:                                              ; preds = %679
  %687 = load i32, i32* @VCO_HSYPOS, align 4
  %688 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %689 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %688, i32 0, i32 14
  %690 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %690, i32 0, i32 7
  %692 = load i32, i32* %691, align 4
  %693 = or i32 %692, %687
  store i32 %693, i32* %691, align 4
  br label %694

694:                                              ; preds = %686, %679
  %695 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %696 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %695, i32 0, i32 13
  %697 = load i32, i32* %696, align 4
  %698 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %699 = and i32 %697, %698
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %709

701:                                              ; preds = %694
  %702 = load i32, i32* @VCO_VSYPOS, align 4
  %703 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %704 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %703, i32 0, i32 14
  %705 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %704, i32 0, i32 0
  %706 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %705, i32 0, i32 7
  %707 = load i32, i32* %706, align 4
  %708 = or i32 %707, %702
  store i32 %708, i32* %706, align 4
  br label %709

709:                                              ; preds = %701, %694
  %710 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %711 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %710, i32 0, i32 5
  %712 = load i32, i32* %711, align 4
  %713 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %714 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %713, i32 0, i32 14
  %715 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %714, i32 0, i32 0
  %716 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %715, i32 0, i32 7
  %717 = load i32, i32* %716, align 4
  %718 = or i32 %717, %712
  store i32 %718, i32* %716, align 4
  %719 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %720 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %719, i32 0, i32 6
  %721 = load i32, i32* %720, align 4
  %722 = or i32 %721, 2
  %723 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %724 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %723, i32 0, i32 14
  %725 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %724, i32 0, i32 0
  %726 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %725, i32 0, i32 8
  store i32 %722, i32* %726, align 8
  %727 = load i32, i32* %21, align 4
  %728 = sdiv i32 2, %727
  %729 = shl i32 %728, 2
  %730 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %731 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %730, i32 0, i32 14
  %732 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %731, i32 0, i32 0
  %733 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %732, i32 0, i32 9
  store i32 %729, i32* %733, align 4
  %734 = load i32, i32* %19, align 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %744

736:                                              ; preds = %709
  %737 = load i32, i32* @VMO_DOUBLE, align 4
  %738 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %739 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %738, i32 0, i32 14
  %740 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %739, i32 0, i32 0
  %741 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %740, i32 0, i32 9
  %742 = load i32, i32* %741, align 4
  %743 = or i32 %742, %737
  store i32 %743, i32* %741, align 4
  br label %744

744:                                              ; preds = %736, %709
  %745 = load i32, i32* %18, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %755

747:                                              ; preds = %744
  %748 = load i32, i32* @VMO_INTER, align 4
  %749 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %750 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %749, i32 0, i32 14
  %751 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %750, i32 0, i32 0
  %752 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %751, i32 0, i32 9
  %753 = load i32, i32* %752, align 4
  %754 = or i32 %753, %748
  store i32 %754, i32* %752, align 4
  br label %755

755:                                              ; preds = %747, %744
  %756 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %757 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %756, i32 0, i32 14
  %758 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %757, i32 0, i32 0
  %759 = call i32 @hxx_prescale(%struct.TYPE_8__* %758)
  store i32 %759, i32* %23, align 4
  %760 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %761 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %760, i32 0, i32 14
  %762 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %761, i32 0, i32 0
  %763 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %762, i32 0, i32 7
  %764 = load i32, i32* %763, align 4
  %765 = load i32, i32* @VCO_SHORTOFFS, align 4
  %766 = and i32 %764, %765
  %767 = icmp ne i32 %766, 0
  %768 = zext i1 %767 to i64
  %769 = select i1 %767, i32 64, i32 128
  store i32 %769, i32* %29, align 4
  %770 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %771 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %770, i32 0, i32 14
  %772 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %771, i32 0, i32 0
  %773 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %772, i32 0, i32 0
  %774 = load i32, i32* %773, align 8
  %775 = and i32 %774, 256
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %784

777:                                              ; preds = %755
  store i32 1, i32* %33, align 4
  store i32 0, i32* %28, align 4
  %778 = load i32, i32* %29, align 4
  %779 = load i32, i32* %21, align 4
  %780 = mul nsw i32 16, %779
  %781 = add nsw i32 %778, %780
  %782 = load i32, i32* %23, align 4
  %783 = add nsw i32 %781, %782
  store i32 %783, i32* %27, align 4
  br label %820

784:                                              ; preds = %755
  %785 = load i32, i32* %6, align 4
  %786 = sdiv i32 128, %785
  store i32 %786, i32* %33, align 4
  %787 = load i32, i32* %6, align 4
  %788 = sdiv i32 128, %787
  %789 = add nsw i32 %788, 2
  %790 = load i32, i32* %21, align 4
  %791 = mul nsw i32 %789, %790
  store i32 %791, i32* %28, align 4
  %792 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %793 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %792, i32 0, i32 14
  %794 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %793, i32 0, i32 0
  %795 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %794, i32 0, i32 3
  %796 = load i32, i32* %795, align 4
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %809

798:                                              ; preds = %784
  %799 = load i32, i32* %29, align 4
  %800 = add nsw i32 64, %799
  %801 = load i32, i32* %6, align 4
  %802 = sdiv i32 128, %801
  %803 = add nsw i32 %802, 2
  %804 = load i32, i32* %21, align 4
  %805 = mul nsw i32 %803, %804
  %806 = add nsw i32 %800, %805
  %807 = load i32, i32* %23, align 4
  %808 = add nsw i32 %806, %807
  store i32 %808, i32* %27, align 4
  br label %819

809:                                              ; preds = %784
  %810 = load i32, i32* %29, align 4
  %811 = load i32, i32* %6, align 4
  %812 = sdiv i32 128, %811
  %813 = add nsw i32 %812, 18
  %814 = load i32, i32* %21, align 4
  %815 = mul nsw i32 %813, %814
  %816 = add nsw i32 %810, %815
  %817 = load i32, i32* %23, align 4
  %818 = add nsw i32 %816, %817
  store i32 %818, i32* %27, align 4
  br label %819

819:                                              ; preds = %809, %798
  br label %820

820:                                              ; preds = %819, %777
  %821 = load i32, i32* %23, align 4
  %822 = sdiv i32 %821, 2
  %823 = load i32, i32* %21, align 4
  %824 = load i32, i32* %11, align 4
  %825 = mul nsw i32 %823, %824
  %826 = add nsw i32 %822, %825
  %827 = load i32, i32* %23, align 4
  %828 = sdiv i32 %826, %827
  store i32 %828, i32* %30, align 4
  %829 = load i32, i32* %30, align 4
  %830 = load i32, i32* %7, align 4
  %831 = load i32, i32* %33, align 4
  %832 = call i32 @roundup(i32 %830, i32 %831)
  %833 = load i32, i32* %21, align 4
  %834 = mul nsw i32 %832, %833
  %835 = load i32, i32* %23, align 4
  %836 = sdiv i32 %834, %835
  %837 = add nsw i32 %829, %836
  store i32 %837, i32* %31, align 4
  %838 = load i32, i32* %30, align 4
  %839 = load i32, i32* %7, align 4
  %840 = load i32, i32* %21, align 4
  %841 = mul nsw i32 %839, %840
  %842 = load i32, i32* %23, align 4
  %843 = sdiv i32 %841, %842
  %844 = add nsw i32 %838, %843
  store i32 %844, i32* %32, align 4
  %845 = load i32, i32* %21, align 4
  %846 = load i32, i32* %11, align 4
  %847 = load i32, i32* %7, align 4
  %848 = add nsw i32 %846, %847
  %849 = load i32, i32* %12, align 4
  %850 = add nsw i32 %848, %849
  %851 = mul nsw i32 %845, %850
  %852 = load i32, i32* %23, align 4
  %853 = mul nsw i32 2, %852
  %854 = sdiv i32 %851, %853
  %855 = sub nsw i32 %854, 2
  %856 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %857 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %856, i32 0, i32 0
  store i32 %855, i32* %857, align 8
  %858 = load i32, i32* %30, align 4
  %859 = load i32, i32* %27, align 4
  %860 = load i32, i32* %23, align 4
  %861 = sdiv i32 %859, %860
  %862 = sub nsw i32 %858, %861
  %863 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %864 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %863, i32 0, i32 1
  store i32 %862, i32* %864, align 4
  %865 = load i32, i32* %30, align 4
  %866 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %867 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %866, i32 0, i32 2
  store i32 %865, i32* %867, align 8
  %868 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %869 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %868, i32 0, i32 1
  %870 = load i32, i32* %869, align 4
  %871 = icmp slt i32 %870, 0
  br i1 %871, label %872, label %882

872:                                              ; preds = %820
  %873 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %874 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %873, i32 0, i32 0
  %875 = load i32, i32* %874, align 8
  %876 = add nsw i32 %875, 2
  %877 = add nsw i32 %876, 512
  %878 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %879 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %878, i32 0, i32 1
  %880 = load i32, i32* %879, align 4
  %881 = add nsw i32 %880, %877
  store i32 %881, i32* %879, align 4
  br label %882

882:                                              ; preds = %872, %820
  %883 = load i32, i32* %31, align 4
  %884 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %885 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %884, i32 0, i32 0
  %886 = load i32, i32* %885, align 8
  %887 = sub nsw i32 %883, %886
  %888 = sub nsw i32 %887, 2
  %889 = load i32, i32* %28, align 4
  %890 = load i32, i32* %23, align 4
  %891 = sdiv i32 %889, %890
  %892 = sub nsw i32 %888, %891
  %893 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %894 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %893, i32 0, i32 3
  store i32 %892, i32* %894, align 4
  %895 = load i32, i32* %32, align 4
  %896 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %897 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %896, i32 0, i32 0
  %898 = load i32, i32* %897, align 8
  %899 = sub nsw i32 %895, %898
  %900 = sub nsw i32 %899, 2
  %901 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %902 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %901, i32 0, i32 4
  store i32 %900, i32* %902, align 8
  %903 = load i32, i32* %28, align 4
  %904 = load i32, i32* %23, align 4
  %905 = srem i32 %903, %904
  %906 = icmp ne i32 %905, 0
  br i1 %906, label %907, label %912

907:                                              ; preds = %882
  %908 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %909 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %908, i32 0, i32 4
  %910 = load i32, i32* %909, align 8
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %909, align 8
  br label %912

912:                                              ; preds = %907, %882
  %913 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %914 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %913, i32 0, i32 0
  %915 = load i32, i32* %914, align 8
  %916 = add nsw i32 %915, 2
  %917 = load i32, i32* %21, align 4
  %918 = load i32, i32* %13, align 4
  %919 = mul nsw i32 %917, %918
  %920 = load i32, i32* %23, align 4
  %921 = sdiv i32 %919, %920
  %922 = sub nsw i32 %916, %921
  %923 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %924 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %923, i32 0, i32 5
  store i32 %922, i32* %924, align 4
  %925 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %926 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %925, i32 0, i32 5
  %927 = load i32, i32* %926, align 4
  %928 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %929 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %928, i32 0, i32 4
  %930 = load i32, i32* %929, align 8
  %931 = icmp slt i32 %927, %930
  br i1 %931, label %932, label %938

932:                                              ; preds = %912
  %933 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %934 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %933, i32 0, i32 4
  %935 = load i32, i32* %934, align 8
  %936 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %937 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %936, i32 0, i32 5
  store i32 %935, i32* %937, align 4
  br label %938

938:                                              ; preds = %932, %912
  %939 = load %struct.pixel_clock*, %struct.pixel_clock** %20, align 8
  %940 = getelementptr inbounds %struct.pixel_clock, %struct.pixel_clock* %939, i32 0, i32 4
  %941 = load i32, i32* %940, align 4
  %942 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %943 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %942, i32 0, i32 0
  %944 = load i32, i32* %943, align 8
  %945 = add nsw i32 %944, 2
  %946 = load i32, i32* %23, align 4
  %947 = mul nsw i32 %945, %946
  %948 = mul nsw i32 %947, 2
  %949 = sdiv i32 %941, %948
  store i32 %949, i32* %25, align 4
  %950 = load i32, i32* %25, align 4
  %951 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 1), align 4
  %952 = icmp sgt i32 %950, %951
  br i1 %952, label %953, label %962

953:                                              ; preds = %938
  %954 = load i32, i32* @mon_type, align 4
  %955 = load i32, i32* @F_MON_VGA, align 4
  %956 = icmp ne i32 %954, %955
  br i1 %956, label %957, label %962

957:                                              ; preds = %953
  %958 = load i32, i32* %11, align 4
  %959 = add nsw i32 %958, 1
  store i32 %959, i32* %11, align 4
  %960 = load i32, i32* %12, align 4
  %961 = add nsw i32 %960, 1
  store i32 %961, i32* %12, align 4
  br label %661

962:                                              ; preds = %953, %938
  %963 = load i32, i32* %25, align 4
  %964 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 1), align 4
  %965 = icmp sgt i32 %963, %964
  br i1 %965, label %970, label %966

966:                                              ; preds = %962
  %967 = load i32, i32* %25, align 4
  %968 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 0), align 4
  %969 = icmp slt i32 %967, %968
  br i1 %969, label %970, label %973

970:                                              ; preds = %966, %962
  %971 = load i32, i32* @EINVAL, align 4
  %972 = sub nsw i32 0, %971
  store i32 %972, i32* %3, align 4
  br label %1258

973:                                              ; preds = %966
  %974 = load i32, i32* %14, align 4
  %975 = mul nsw i32 %974, 2
  %976 = add nsw i32 %975, 1
  %977 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %978 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %977, i32 0, i32 6
  store i32 %976, i32* %978, align 8
  %979 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %980 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %979, i32 0, i32 6
  %981 = load i32, i32* %980, align 8
  %982 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %983 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %982, i32 0, i32 7
  store i32 %981, i32* %983, align 4
  %984 = load i32, i32* %8, align 4
  %985 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %986 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %985, i32 0, i32 8
  store i32 %984, i32* %986, align 8
  %987 = load i32, i32* %18, align 4
  %988 = icmp ne i32 %987, 0
  br i1 %988, label %994, label %989

989:                                              ; preds = %973
  %990 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %991 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %990, i32 0, i32 8
  %992 = load i32, i32* %991, align 8
  %993 = shl i32 %992, 1
  store i32 %993, i32* %991, align 8
  br label %994

994:                                              ; preds = %989, %973
  %995 = load i32, i32* %19, align 4
  %996 = icmp ne i32 %995, 0
  br i1 %996, label %997, label %1002

997:                                              ; preds = %994
  %998 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %999 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %998, i32 0, i32 8
  %1000 = load i32, i32* %999, align 8
  %1001 = shl i32 %1000, 1
  store i32 %1001, i32* %999, align 8
  br label %1002

1002:                                             ; preds = %997, %994
  %1003 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1004 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1003, i32 0, i32 7
  %1005 = load i32, i32* %1004, align 4
  %1006 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1007 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1006, i32 0, i32 8
  %1008 = load i32, i32* %1007, align 8
  %1009 = add nsw i32 %1008, %1005
  store i32 %1009, i32* %1007, align 8
  %1010 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1011 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1010, i32 0, i32 8
  %1012 = load i32, i32* %1011, align 8
  %1013 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1014 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1013, i32 0, i32 9
  store i32 %1012, i32* %1014, align 4
  %1015 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1016 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1015, i32 0, i32 9
  %1017 = load i32, i32* %1016, align 4
  %1018 = load i32, i32* %15, align 4
  %1019 = mul nsw i32 %1018, 2
  %1020 = sub nsw i32 %1019, 1
  %1021 = add nsw i32 %1017, %1020
  %1022 = sub nsw i32 %1021, 1
  %1023 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1024 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1023, i32 0, i32 10
  store i32 %1022, i32* %1024, align 8
  %1025 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1026 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1025, i32 0, i32 10
  %1027 = load i32, i32* %1026, align 8
  %1028 = add nsw i32 %1027, 1
  %1029 = load i32, i32* %16, align 4
  %1030 = mul nsw i32 %1029, 2
  %1031 = sub nsw i32 %1030, 1
  %1032 = sub nsw i32 %1028, %1031
  %1033 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1034 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1033, i32 0, i32 11
  store i32 %1032, i32* %1034, align 4
  %1035 = load i32, i32* %18, align 4
  %1036 = icmp ne i32 %1035, 0
  br i1 %1036, label %1037, label %1050

1037:                                             ; preds = %1002
  %1038 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1039 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1038, i32 0, i32 9
  %1040 = load i32, i32* %1039, align 4
  %1041 = add nsw i32 %1040, 1
  store i32 %1041, i32* %1039, align 4
  %1042 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1043 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1042, i32 0, i32 11
  %1044 = load i32, i32* %1043, align 4
  %1045 = add nsw i32 %1044, 1
  store i32 %1045, i32* %1043, align 4
  %1046 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1047 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1046, i32 0, i32 10
  %1048 = load i32, i32* %1047, align 8
  %1049 = add nsw i32 %1048, 1
  store i32 %1049, i32* %1047, align 8
  br label %1050

1050:                                             ; preds = %1037, %1002
  %1051 = load i32, i32* %25, align 4
  %1052 = mul nsw i32 %1051, 2
  %1053 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1054 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1053, i32 0, i32 10
  %1055 = load i32, i32* %1054, align 8
  %1056 = add nsw i32 %1055, 1
  %1057 = sdiv i32 %1052, %1056
  store i32 %1057, i32* %26, align 4
  %1058 = load i32, i32* %26, align 4
  %1059 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 2), align 4
  %1060 = icmp sgt i32 %1058, %1059
  br i1 %1060, label %1061, label %1068

1061:                                             ; preds = %1050
  %1062 = load i32, i32* %19, align 4
  %1063 = icmp ne i32 %1062, 0
  br i1 %1063, label %1068, label %1064

1064:                                             ; preds = %1061
  %1065 = load i32, i32* %18, align 4
  %1066 = icmp ne i32 %1065, 0
  br i1 %1066, label %1068, label %1067

1067:                                             ; preds = %1064
  store i32 1, i32* %19, align 4
  br label %661

1068:                                             ; preds = %1064, %1061, %1050
  %1069 = load i32, i32* %26, align 4
  %1070 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 3), align 4
  %1071 = icmp slt i32 %1069, %1070
  br i1 %1071, label %1072, label %1079

1072:                                             ; preds = %1068
  %1073 = load i32, i32* %18, align 4
  %1074 = icmp ne i32 %1073, 0
  br i1 %1074, label %1079, label %1075

1075:                                             ; preds = %1072
  %1076 = load i32, i32* %19, align 4
  %1077 = icmp ne i32 %1076, 0
  br i1 %1077, label %1079, label %1078

1078:                                             ; preds = %1075
  store i32 1, i32* %18, align 4
  br label %661

1079:                                             ; preds = %1075, %1072, %1068
  %1080 = load i32, i32* %26, align 4
  %1081 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 3), align 4
  %1082 = icmp slt i32 %1080, %1081
  br i1 %1082, label %1083, label %1114

1083:                                             ; preds = %1079
  %1084 = load i32, i32* %19, align 4
  %1085 = icmp ne i32 %1084, 0
  br i1 %1085, label %1086, label %1114

1086:                                             ; preds = %1083
  store i32 0, i32* %19, align 4
  store i32 0, i32* %38, align 4
  br label %1087

1087:                                             ; preds = %1104, %1086
  %1088 = load i32, i32* %25, align 4
  %1089 = mul nsw i32 %1088, 2
  %1090 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1091 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1090, i32 0, i32 10
  %1092 = load i32, i32* %1091, align 8
  %1093 = add nsw i32 %1092, 1
  %1094 = load i32, i32* %38, align 4
  %1095 = mul nsw i32 4, %1094
  %1096 = add nsw i32 %1093, %1095
  %1097 = load i32, i32* %8, align 4
  %1098 = mul nsw i32 2, %1097
  %1099 = sub nsw i32 %1096, %1098
  %1100 = sdiv i32 %1089, %1099
  %1101 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 2), align 4
  %1102 = icmp sgt i32 %1100, %1101
  br i1 %1102, label %1103, label %1107

1103:                                             ; preds = %1087
  br label %1104

1104:                                             ; preds = %1103
  %1105 = load i32, i32* %38, align 4
  %1106 = add nsw i32 %1105, 1
  store i32 %1106, i32* %38, align 4
  br label %1087

1107:                                             ; preds = %1087
  %1108 = load i32, i32* %38, align 4
  %1109 = load i32, i32* %14, align 4
  %1110 = add nsw i32 %1109, %1108
  store i32 %1110, i32* %14, align 4
  %1111 = load i32, i32* %38, align 4
  %1112 = load i32, i32* %15, align 4
  %1113 = add nsw i32 %1112, %1111
  store i32 %1113, i32* %15, align 4
  br label %661

1114:                                             ; preds = %1083, %1079
  %1115 = load i32, i32* %26, align 4
  %1116 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 2), align 4
  %1117 = icmp sgt i32 %1115, %1116
  br i1 %1117, label %1118, label %1146

1118:                                             ; preds = %1114
  %1119 = load i32, i32* %19, align 4
  %1120 = icmp ne i32 %1119, 0
  br i1 %1120, label %1121, label %1146

1121:                                             ; preds = %1118
  store i32 0, i32* %39, align 4
  br label %1122

1122:                                             ; preds = %1136, %1121
  %1123 = load i32, i32* %25, align 4
  %1124 = mul nsw i32 %1123, 2
  %1125 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1126 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1125, i32 0, i32 10
  %1127 = load i32, i32* %1126, align 8
  %1128 = add nsw i32 %1127, 1
  %1129 = load i32, i32* %39, align 4
  %1130 = mul nsw i32 4, %1129
  %1131 = add nsw i32 %1128, %1130
  %1132 = sdiv i32 %1124, %1131
  %1133 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 2), align 4
  %1134 = icmp sgt i32 %1132, %1133
  br i1 %1134, label %1135, label %1139

1135:                                             ; preds = %1122
  br label %1136

1136:                                             ; preds = %1135
  %1137 = load i32, i32* %39, align 4
  %1138 = add nsw i32 %1137, 2
  store i32 %1138, i32* %39, align 4
  br label %1122

1139:                                             ; preds = %1122
  %1140 = load i32, i32* %39, align 4
  %1141 = load i32, i32* %14, align 4
  %1142 = add nsw i32 %1141, %1140
  store i32 %1142, i32* %14, align 4
  %1143 = load i32, i32* %39, align 4
  %1144 = load i32, i32* %15, align 4
  %1145 = add nsw i32 %1144, %1143
  store i32 %1145, i32* %15, align 4
  br label %661

1146:                                             ; preds = %1118, %1114
  %1147 = load i32, i32* %26, align 4
  %1148 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 2), align 4
  %1149 = icmp sgt i32 %1147, %1148
  br i1 %1149, label %1150, label %1178

1150:                                             ; preds = %1146
  %1151 = load i32, i32* %18, align 4
  %1152 = icmp ne i32 %1151, 0
  br i1 %1152, label %1153, label %1178

1153:                                             ; preds = %1150
  store i32 0, i32* %40, align 4
  br label %1154

1154:                                             ; preds = %1168, %1153
  %1155 = load i32, i32* %25, align 4
  %1156 = mul nsw i32 %1155, 2
  %1157 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1158 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1157, i32 0, i32 10
  %1159 = load i32, i32* %1158, align 8
  %1160 = add nsw i32 %1159, 1
  %1161 = load i32, i32* %40, align 4
  %1162 = mul nsw i32 4, %1161
  %1163 = add nsw i32 %1160, %1162
  %1164 = sdiv i32 %1156, %1163
  %1165 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 2), align 4
  %1166 = icmp sgt i32 %1164, %1165
  br i1 %1166, label %1167, label %1171

1167:                                             ; preds = %1154
  br label %1168

1168:                                             ; preds = %1167
  %1169 = load i32, i32* %40, align 4
  %1170 = add nsw i32 %1169, 1
  store i32 %1170, i32* %40, align 4
  br label %1154

1171:                                             ; preds = %1154
  %1172 = load i32, i32* %40, align 4
  %1173 = load i32, i32* %14, align 4
  %1174 = add nsw i32 %1173, %1172
  store i32 %1174, i32* %14, align 4
  %1175 = load i32, i32* %40, align 4
  %1176 = load i32, i32* %15, align 4
  %1177 = add nsw i32 %1176, %1175
  store i32 %1177, i32* %15, align 4
  br label %661

1178:                                             ; preds = %1150, %1146
  %1179 = load i32, i32* %26, align 4
  %1180 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 3), align 4
  %1181 = icmp slt i32 %1179, %1180
  br i1 %1181, label %1186, label %1182

1182:                                             ; preds = %1178
  %1183 = load i32, i32* %26, align 4
  %1184 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fb_info, i32 0, i32 0, i32 2), align 4
  %1185 = icmp sgt i32 %1183, %1184
  br i1 %1185, label %1186, label %1189

1186:                                             ; preds = %1182, %1178
  %1187 = load i32, i32* @EINVAL, align 4
  %1188 = sub nsw i32 0, %1187
  store i32 %1188, i32* %3, align 4
  br label %1258

1189:                                             ; preds = %1182
  br label %1190

1190:                                             ; preds = %1189
  br label %1191

1191:                                             ; preds = %1190
  br label %1192

1192:                                             ; preds = %1191
  br label %1193

1193:                                             ; preds = %1192
  br label %1194

1194:                                             ; preds = %1193
  br label %1195

1195:                                             ; preds = %1194, %175
  %1196 = load i32, i32* %9, align 4
  %1197 = load i32, i32* %6, align 4
  %1198 = mul nsw i32 %1196, %1197
  %1199 = sdiv i32 %1198, 8
  store i32 %1199, i32* %17, align 4
  %1200 = load i32, i32* %10, align 4
  %1201 = load i32, i32* %17, align 4
  %1202 = mul nsw i32 %1200, %1201
  %1203 = load i32, i32* @screen_len, align 4
  %1204 = icmp sgt i32 %1202, %1203
  br i1 %1204, label %1205, label %1211

1205:                                             ; preds = %1195
  %1206 = load i32, i32* @screen_len, align 4
  %1207 = icmp ne i32 %1206, 0
  br i1 %1207, label %1208, label %1211

1208:                                             ; preds = %1205
  %1209 = load i32, i32* @EINVAL, align 4
  %1210 = sub nsw i32 0, %1209
  store i32 %1210, i32* %3, align 4
  br label %1258

1211:                                             ; preds = %1205, %1195
  %1212 = load i32, i32* %8, align 4
  %1213 = load i32, i32* %17, align 4
  %1214 = mul nsw i32 %1212, %1213
  %1215 = load i32, i32* @screen_len, align 4
  %1216 = icmp sgt i32 %1214, %1215
  br i1 %1216, label %1217, label %1223

1217:                                             ; preds = %1211
  %1218 = load i32, i32* @screen_len, align 4
  %1219 = icmp ne i32 %1218, 0
  br i1 %1219, label %1220, label %1223

1220:                                             ; preds = %1217
  %1221 = load i32, i32* @EINVAL, align 4
  %1222 = sub nsw i32 0, %1221
  store i32 %1222, i32* %3, align 4
  br label %1258

1223:                                             ; preds = %1217, %1211
  %1224 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %1225 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %1224, i32 0, i32 14
  %1226 = load i32, i32* %1225, align 4
  %1227 = load i32, i32* %8, align 4
  %1228 = add nsw i32 %1226, %1227
  %1229 = load i32, i32* %10, align 4
  %1230 = icmp sgt i32 %1228, %1229
  br i1 %1230, label %1231, label %1237

1231:                                             ; preds = %1223
  %1232 = load i32, i32* %10, align 4
  %1233 = icmp ne i32 %1232, 0
  br i1 %1233, label %1234, label %1237

1234:                                             ; preds = %1231
  %1235 = load i32, i32* @EINVAL, align 4
  %1236 = sub nsw i32 0, %1235
  store i32 %1236, i32* %3, align 4
  br label %1258

1237:                                             ; preds = %1231, %1223
  %1238 = load i32, i32* %10, align 4
  %1239 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1240 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1239, i32 0, i32 12
  store i32 %1238, i32* %1240, align 8
  %1241 = load i64, i64* @screen_base, align 8
  %1242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %1243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %1242, i32 0, i32 14
  %1244 = load i32, i32* %1243, align 4
  %1245 = load i32, i32* %17, align 4
  %1246 = mul nsw i32 %1244, %1245
  %1247 = sext i32 %1246 to i64
  %1248 = add nsw i64 %1241, %1247
  %1249 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1250 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1249, i32 0, i32 15
  store i64 %1248, i64* %1250, align 8
  %1251 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1252 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1251, i32 0, i32 14
  %1253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1252, i32 0, i32 0
  %1254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1253, i32 0, i32 10
  store i64 0, i64* %1254, align 8
  %1255 = load i32, i32* %17, align 4
  %1256 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %1257 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %1256, i32 0, i32 13
  store i32 %1255, i32* %1257, align 4
  store i32 0, i32* %3, align 4
  br label %1258

1258:                                             ; preds = %1237, %1234, %1220, %1208, %1186, %970, %647, %570, %467, %334, %172, %129, %74, %64
  %1259 = load i32, i32* %3, align 4
  ret i32 %1259
}

declare dso_local i32 @hxx_prescale(%struct.TYPE_8__*) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
