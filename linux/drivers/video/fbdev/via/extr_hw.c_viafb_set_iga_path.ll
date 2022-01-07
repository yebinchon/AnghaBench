; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_set_iga_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_set_iga_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@viafb_SAMM_ON = common dso_local global i32 0, align 4
@viafb_CRT_ON = common dso_local global i64 0, align 8
@viafb_primary_dev = common dso_local global i64 0, align 8
@CRT_Device = common dso_local global i64 0, align 8
@IGA1 = common dso_local global i32 0, align 4
@IGA2 = common dso_local global i8* null, align 8
@viafb_DVI_ON = common dso_local global i64 0, align 8
@DVI_Device = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_18__* null, align 8
@viafb_LCD_ON = common dso_local global i64 0, align 8
@LCD_Device = common dso_local global i64 0, align 8
@viafb_dual_fb = common dso_local global i64 0, align 8
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@viafb_LCD2_ON = common dso_local global i64 0, align 8
@LCD2_Device = common dso_local global i64 0, align 8
@VIA_CRT = common dso_local global i32 0, align 4
@VIA_DVP1 = common dso_local global i32 0, align 4
@VIA_LVDS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_set_iga_path() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @viafb_SAMM_ON, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %106

4:                                                ; preds = %0
  %5 = load i64, i64* @viafb_CRT_ON, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load i64, i64* @viafb_primary_dev, align 8
  %9 = load i64, i64* @CRT_Device, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @IGA1, align 4
  store i32 %12, i32* %1, align 4
  br label %16

13:                                               ; preds = %7
  %14 = load i8*, i8** @IGA2, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %13, %11
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i64, i64* @viafb_DVI_ON, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load i64, i64* @viafb_primary_dev, align 8
  %22 = load i64, i64* @DVI_Device, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @IGA1, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load i8*, i8** @IGA2, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %24
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i64, i64* @viafb_LCD_ON, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %38
  %42 = load i64, i64* @viafb_primary_dev, align 8
  %43 = load i64, i64* @LCD_Device, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %41
  %46 = load i64, i64* @viafb_dual_fb, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UNICHROME_CLE266, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load i8*, i8** @IGA2, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @IGA1, align 4
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @IGA1, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  br label %75

69:                                               ; preds = %48, %45
  %70 = load i32, i32* @IGA1, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %56
  br label %83

76:                                               ; preds = %41
  %77 = load i8*, i8** @IGA2, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %75
  br label %84

84:                                               ; preds = %83, %38
  %85 = load i64, i64* @viafb_LCD2_ON, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i64, i64* @LCD2_Device, align 8
  %89 = load i64, i64* @viafb_primary_dev, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* @IGA1, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  br label %104

97:                                               ; preds = %87
  %98 = load i8*, i8** @IGA2, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %91
  br label %105

105:                                              ; preds = %104, %84
  br label %202

106:                                              ; preds = %0
  store i32 0, i32* @viafb_SAMM_ON, align 4
  %107 = load i64, i64* @viafb_CRT_ON, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i64, i64* @viafb_LCD_ON, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* @IGA1, align 4
  store i32 %113, i32* %1, align 4
  %114 = load i8*, i8** @IGA2, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 4
  br label %201

120:                                              ; preds = %109, %106
  %121 = load i64, i64* @viafb_CRT_ON, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i64, i64* @viafb_DVI_ON, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load i32, i32* @IGA1, align 4
  store i32 %127, i32* %1, align 4
  %128 = load i8*, i8** @IGA2, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 4
  br label %200

134:                                              ; preds = %123, %120
  %135 = load i64, i64* @viafb_LCD_ON, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load i64, i64* @viafb_DVI_ON, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i32, i32* @IGA1, align 4
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 4
  %146 = load i8*, i8** @IGA2, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 4
  br label %199

152:                                              ; preds = %137, %134
  %153 = load i64, i64* @viafb_LCD_ON, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %152
  %156 = load i64, i64* @viafb_LCD2_ON, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load i8*, i8** @IGA2, align 8
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 4
  %165 = load i8*, i8** @IGA2, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store i32 %166, i32* %170, align 4
  br label %198

171:                                              ; preds = %155, %152
  %172 = load i64, i64* @viafb_CRT_ON, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* @IGA1, align 4
  store i32 %175, i32* %1, align 4
  br label %197

176:                                              ; preds = %171
  %177 = load i64, i64* @viafb_LCD_ON, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i8*, i8** @IGA2, align 8
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  store i32 %181, i32* %185, align 4
  br label %196

186:                                              ; preds = %176
  %187 = load i64, i64* @viafb_DVI_ON, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i32, i32* @IGA1, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  store i32 %190, i32* %194, align 4
  br label %195

195:                                              ; preds = %189, %186
  br label %196

196:                                              ; preds = %195, %179
  br label %197

197:                                              ; preds = %196, %174
  br label %198

198:                                              ; preds = %197, %158
  br label %199

199:                                              ; preds = %198, %140
  br label %200

200:                                              ; preds = %199, %126
  br label %201

201:                                              ; preds = %200, %112
  br label %202

202:                                              ; preds = %201, %105
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  store i32 0, i32* %206, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load i64, i64* @viafb_CRT_ON, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %202
  %214 = load i32, i32* %1, align 4
  %215 = load i32, i32* @IGA1, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %213
  %218 = load i32, i32* @VIA_CRT, align 4
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %218
  store i32 %224, i32* %222, align 4
  br label %233

225:                                              ; preds = %213
  %226 = load i32, i32* @VIA_CRT, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %226
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %225, %217
  br label %234

234:                                              ; preds = %233, %202
  %235 = load i64, i64* @viafb_DVI_ON, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %274

237:                                              ; preds = %234
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @IGA1, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %259

245:                                              ; preds = %237
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @get_dvi_devices(i32 %251)
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %252
  store i32 %258, i32* %256, align 4
  br label %273

259:                                              ; preds = %237
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @get_dvi_devices(i32 %265)
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %266
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %259, %245
  br label %274

274:                                              ; preds = %273, %234
  %275 = load i64, i64* @viafb_LCD_ON, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %314

277:                                              ; preds = %274
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 3
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @IGA1, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %299

285:                                              ; preds = %277
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @get_lcd_devices(i32 %291)
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %292
  store i32 %298, i32* %296, align 4
  br label %313

299:                                              ; preds = %277
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @get_lcd_devices(i32 %305)
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %306
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %299, %285
  br label %314

314:                                              ; preds = %313, %274
  %315 = load i64, i64* @viafb_LCD2_ON, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %354

317:                                              ; preds = %314
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @IGA1, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %339

325:                                              ; preds = %317
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @get_lcd_devices(i32 %331)
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %332
  store i32 %338, i32* %336, align 4
  br label %353

339:                                              ; preds = %317
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @get_lcd_devices(i32 %345)
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %346
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %339, %325
  br label %354

354:                                              ; preds = %353, %314
  %355 = call i64 (...) @machine_is_olpc()
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %354
  %358 = load i32, i32* @VIA_DVP1, align 4
  %359 = load i32, i32* @VIA_LVDS2, align 4
  %360 = or i32 %358, %359
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** @viaparinfo, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 1
  store i32 %360, i32* %364, align 4
  br label %365

365:                                              ; preds = %357, %354
  ret void
}

declare dso_local i32 @get_dvi_devices(i32) #1

declare dso_local i32 @get_lcd_devices(i32) #1

declare dso_local i64 @machine_is_olpc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
