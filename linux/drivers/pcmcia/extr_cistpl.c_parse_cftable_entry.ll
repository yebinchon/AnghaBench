; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cistpl.c_parse_cftable_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cistpl.c_parse_cftable_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_17__, %struct.TYPE_18__, %struct.TYPE_14__, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i64 }

@CISTPL_CFTABLE_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_BVDS = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_WP = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_RDYBSY = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_MWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @parse_cftable_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cftable_entry(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 63
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @CISTPL_CFTABLE_DEFAULT, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %376

48:                                               ; preds = %40
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @CISTPL_CFTABLE_BVDS, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @CISTPL_CFTABLE_WP, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 64
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @CISTPL_CFTABLE_RDYBSY, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 128
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @CISTPL_CFTABLE_MWAIT, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 15
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %101

98:                                               ; preds = %35
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %92
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %6, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = icmp eq i32* %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %376

109:                                              ; preds = %101
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, 3
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 10
  %122 = call i32* @parse_power(i32* %118, i32* %119, %struct.TYPE_15__* %121)
  store i32* %122, i32** %6, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %376

128:                                              ; preds = %117
  br label %133

129:                                              ; preds = %109
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 10
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %128
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 3
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load i32*, i32** %6, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 9
  %142 = call i32* @parse_power(i32* %138, i32* %139, %struct.TYPE_15__* %141)
  store i32* %142, i32** %6, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %376

148:                                              ; preds = %137
  br label %153

149:                                              ; preds = %133
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %149, %148
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, 3
  %156 = icmp sgt i32 %155, 2
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load i32*, i32** %6, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 8
  %162 = call i32* @parse_power(i32* %158, i32* %159, %struct.TYPE_15__* %161)
  store i32* %162, i32** %6, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %157
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %376

168:                                              ; preds = %157
  br label %173

169:                                              ; preds = %153
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %169, %168
  %174 = load i32, i32* %8, align 4
  %175 = and i32 %174, 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %173
  %178 = load i32*, i32** %6, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 7
  %182 = call i32* @parse_timing(i32* %178, i32* %179, %struct.TYPE_14__* %181)
  store i32* %182, i32** %6, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %376

188:                                              ; preds = %177
  br label %199

189:                                              ; preds = %173
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %189, %188
  %200 = load i32, i32* %8, align 4
  %201 = and i32 %200, 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load i32*, i32** %6, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 6
  %208 = call i32* @parse_io(i32* %204, i32* %205, %struct.TYPE_18__* %207)
  store i32* %208, i32** %6, align 8
  %209 = load i32*, i32** %6, align 8
  %210 = icmp eq i32* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %203
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %376

214:                                              ; preds = %203
  br label %219

215:                                              ; preds = %199
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %215, %214
  %220 = load i32, i32* %8, align 4
  %221 = and i32 %220, 16
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %219
  %224 = load i32*, i32** %6, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 5
  %228 = call i32* @parse_irq(i32* %224, i32* %225, %struct.TYPE_17__* %227)
  store i32* %228, i32** %6, align 8
  %229 = load i32*, i32** %6, align 8
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %223
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %376

234:                                              ; preds = %223
  br label %239

235:                                              ; preds = %219
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %235, %234
  %240 = load i32, i32* %8, align 4
  %241 = and i32 %240, 96
  switch i32 %241, label %330 [
    i32 0, label %242
    i32 32, label %246
    i32 64, label %280
    i32 96, label %318
  ]

242:                                              ; preds = %239
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  store i32 0, i32* %245, align 8
  br label %330

246:                                              ; preds = %239
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @get_unaligned_le16(i32* %250)
  %252 = shl i32 %251, 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  store i32 %252, i32* %258, align 4
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i64 0
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  store i32 0, i32* %264, align 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 2
  store i32 0, i32* %270, align 4
  %271 = load i32*, i32** %6, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 2
  store i32* %272, i32** %6, align 8
  %273 = load i32*, i32** %6, align 8
  %274 = load i32*, i32** %7, align 8
  %275 = icmp ugt i32* %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %246
  %277 = load i32, i32* @EINVAL, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %3, align 4
  br label %376

279:                                              ; preds = %246
  br label %330

280:                                              ; preds = %239
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 0
  store i32 1, i32* %283, align 8
  %284 = load i32*, i32** %6, align 8
  %285 = call i32 @get_unaligned_le16(i32* %284)
  %286 = shl i32 %285, 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  store i32 %286, i32* %292, align 4
  %293 = load i32*, i32** %6, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  %295 = call i32 @get_unaligned_le16(i32* %294)
  %296 = shl i32 %295, 8
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i64 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 1
  store i32 %296, i32* %302, align 4
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 2
  store i32 0, i32* %308, align 4
  %309 = load i32*, i32** %6, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 4
  store i32* %310, i32** %6, align 8
  %311 = load i32*, i32** %6, align 8
  %312 = load i32*, i32** %7, align 8
  %313 = icmp ugt i32* %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %280
  %315 = load i32, i32* @EINVAL, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %3, align 4
  br label %376

317:                                              ; preds = %280
  br label %330

318:                                              ; preds = %239
  %319 = load i32*, i32** %6, align 8
  %320 = load i32*, i32** %7, align 8
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 4
  %323 = call i32* @parse_mem(i32* %319, i32* %320, %struct.TYPE_16__* %322)
  store i32* %323, i32** %6, align 8
  %324 = load i32*, i32** %6, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %318
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %3, align 4
  br label %376

329:                                              ; preds = %318
  br label %330

330:                                              ; preds = %239, %329, %317, %279, %242
  %331 = load i32, i32* %8, align 4
  %332 = and i32 %331, 128
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %366

334:                                              ; preds = %330
  %335 = load i32*, i32** %6, align 8
  %336 = load i32*, i32** %7, align 8
  %337 = icmp eq i32* %335, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %334
  %339 = load i32, i32* @EINVAL, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %3, align 4
  br label %376

341:                                              ; preds = %334
  %342 = load i32*, i32** %6, align 8
  %343 = load i32, i32* %342, align 4
  %344 = shl i32 %343, 8
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %347, %344
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %362, %341
  %350 = load i32*, i32** %6, align 8
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %351, 128
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %349
  %355 = load i32*, i32** %6, align 8
  %356 = getelementptr inbounds i32, i32* %355, i32 1
  store i32* %356, i32** %6, align 8
  %357 = load i32*, i32** %7, align 8
  %358 = icmp eq i32* %356, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %354
  %360 = load i32, i32* @EINVAL, align 4
  %361 = sub nsw i32 0, %360
  store i32 %361, i32* %3, align 4
  br label %376

362:                                              ; preds = %354
  br label %349

363:                                              ; preds = %349
  %364 = load i32*, i32** %6, align 8
  %365 = getelementptr inbounds i32, i32* %364, i32 1
  store i32* %365, i32** %6, align 8
  br label %366

366:                                              ; preds = %363, %330
  %367 = load i32*, i32** %7, align 8
  %368 = load i32*, i32** %6, align 8
  %369 = ptrtoint i32* %367 to i64
  %370 = ptrtoint i32* %368 to i64
  %371 = sub i64 %369, %370
  %372 = sdiv exact i64 %371, 4
  %373 = trunc i64 %372 to i32
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 3
  store i32 %373, i32* %375, align 4
  store i32 0, i32* %3, align 4
  br label %376

376:                                              ; preds = %366, %359, %338, %326, %314, %276, %231, %211, %185, %165, %145, %125, %106, %45
  %377 = load i32, i32* %3, align 4
  ret i32 %377
}

declare dso_local i32* @parse_power(i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32* @parse_timing(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @parse_io(i32*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32* @parse_irq(i32*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32* @parse_mem(i32*, i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
