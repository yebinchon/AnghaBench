; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_do_font_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_do_font_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.vc_data* }
%struct.vc_data = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.vc_data*, i32)* }
%struct.sisusb_usb_data = type { i32, i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SISSR = common dso_local global i32 0, align 4
@SISGR = common dso_local global i32 0, align 4
@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_5__* null, align 8
@sisusb_con = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SISINPSTAT = common dso_local global i32 0, align 4
@SISAR = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@CM_DRAW = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sisusbcon_do_font_op(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, %struct.vc_data* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sisusb_usb_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vc_data*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.vc_data*, align 8
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.vc_data*, align 8
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct.vc_data* %7, %struct.vc_data** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %10
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %10
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %21, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %48 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %47, i32 0, i32 5
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %531

53:                                               ; preds = %40
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %59 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %17, align 4
  br label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %16, align 4
  %66 = mul nsw i32 4, %65
  store i32 %66, i32* %25, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %14, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 14, i32 10
  br label %76

76:                                               ; preds = %71, %70
  %77 = phi i32 [ 0, %70 ], [ %75, %71 ]
  store i32 %77, i32* %22, align 4
  %78 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %79 = load i32, i32* @SISSR, align 4
  %80 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %78, i32 %79, i32 0, i8 zeroext 1)
  %81 = load i32, i32* %24, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %24, align 4
  %83 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %84 = load i32, i32* @SISSR, align 4
  %85 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %83, i32 %84, i32 2, i8 zeroext 4)
  %86 = load i32, i32* %24, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %24, align 4
  %88 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %89 = load i32, i32* @SISSR, align 4
  %90 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %88, i32 %89, i32 4, i8 zeroext 7)
  %91 = load i32, i32* %24, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %24, align 4
  %93 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %94 = load i32, i32* @SISSR, align 4
  %95 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %93, i32 %94, i32 0, i8 zeroext 3)
  %96 = load i32, i32* %24, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %24, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %76
  br label %521

101:                                              ; preds = %76
  %102 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %103 = load i32, i32* @SISGR, align 4
  %104 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %102, i32 %103, i32 4, i8 zeroext 3)
  %105 = load i32, i32* %24, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %24, align 4
  %107 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %108 = load i32, i32* @SISGR, align 4
  %109 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %107, i32 %108, i32 5, i8 zeroext 0)
  %110 = load i32, i32* %24, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %24, align 4
  %112 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %113 = load i32, i32* @SISGR, align 4
  %114 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %112, i32 %113, i32 6, i8 zeroext 0)
  %115 = load i32, i32* %24, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* %24, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %101
  br label %521

120:                                              ; preds = %101
  %121 = load i32*, i32** %15, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %272

123:                                              ; preds = %120
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %158

126:                                              ; preds = %123
  store i32 0, i32* %23, align 4
  br label %127

127:                                              ; preds = %154, %126
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  %132 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %133 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %134 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %25, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = load i32, i32* %23, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @sisusb_writeb(%struct.sisusb_usb_data* %132, i64 %141, i32 %146)
  %148 = load i32, i32* %24, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %24, align 4
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %131
  br label %157

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %23, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %23, align 4
  br label %127

157:                                              ; preds = %152, %127
  br label %189

158:                                              ; preds = %123
  store i32 0, i32* %23, align 4
  br label %159

159:                                              ; preds = %185, %158
  %160 = load i32, i32* %23, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %188

163:                                              ; preds = %159
  %164 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %165 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %166 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %25, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = load i32, i32* %23, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = load i32*, i32** %15, align 8
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = call i32 @sisusb_readb(%struct.sisusb_usb_data* %164, i64 %173, i32* %177)
  %179 = load i32, i32* %24, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %24, align 4
  %181 = load i32, i32* %24, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %163
  br label %188

184:                                              ; preds = %163
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %23, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %23, align 4
  br label %159

188:                                              ; preds = %183, %159
  br label %189

189:                                              ; preds = %188, %157
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %271

192:                                              ; preds = %189
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %233

195:                                              ; preds = %192
  store i32 0, i32* %23, align 4
  br label %196

196:                                              ; preds = %229, %195
  %197 = load i32, i32* %23, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %232

200:                                              ; preds = %196
  %201 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %202 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %203 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* %25, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %204, %206
  %208 = load i32, i32* %16, align 4
  %209 = mul nsw i32 2, %208
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %207, %210
  %212 = load i32, i32* %23, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %211, %213
  %215 = load i32*, i32** %15, align 8
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %215, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sisusb_writeb(%struct.sisusb_usb_data* %201, i64 %214, i32 %221)
  %223 = load i32, i32* %24, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %24, align 4
  %225 = load i32, i32* %24, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %200
  br label %232

228:                                              ; preds = %200
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %23, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %23, align 4
  br label %196

232:                                              ; preds = %227, %196
  br label %270

233:                                              ; preds = %192
  store i32 0, i32* %23, align 4
  br label %234

234:                                              ; preds = %266, %233
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %16, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %269

238:                                              ; preds = %234
  %239 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %240 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %241 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %25, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %242, %244
  %246 = load i32, i32* %16, align 4
  %247 = mul nsw i32 2, %246
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %245, %248
  %250 = load i32, i32* %23, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %249, %251
  %253 = load i32*, i32** %15, align 8
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %23, align 4
  %256 = add nsw i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = call i32 @sisusb_readb(%struct.sisusb_usb_data* %239, i64 %252, i32* %258)
  %260 = load i32, i32* %24, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %24, align 4
  %262 = load i32, i32* %24, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %238
  br label %269

265:                                              ; preds = %238
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %23, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %23, align 4
  br label %234

269:                                              ; preds = %264, %234
  br label %270

270:                                              ; preds = %269, %232
  br label %271

271:                                              ; preds = %270, %189
  br label %272

272:                                              ; preds = %271, %120
  %273 = load i32, i32* %24, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  br label %521

276:                                              ; preds = %272
  %277 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %278 = load i32, i32* @SISSR, align 4
  %279 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %277, i32 %278, i32 0, i8 zeroext 1)
  %280 = load i32, i32* %24, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %24, align 4
  %282 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %283 = load i32, i32* @SISSR, align 4
  %284 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %282, i32 %283, i32 2, i8 zeroext 3)
  %285 = load i32, i32* %24, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %24, align 4
  %287 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %288 = load i32, i32* @SISSR, align 4
  %289 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %287, i32 %288, i32 4, i8 zeroext 3)
  %290 = load i32, i32* %24, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %24, align 4
  %292 = load i32, i32* %13, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %276
  %295 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %296 = load i32, i32* @SISSR, align 4
  %297 = load i32, i32* %22, align 4
  %298 = trunc i32 %297 to i8
  %299 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %295, i32 %296, i32 3, i8 zeroext %298)
  br label %300

300:                                              ; preds = %294, %276
  %301 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %302 = load i32, i32* @SISSR, align 4
  %303 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %301, i32 %302, i32 0, i8 zeroext 3)
  %304 = load i32, i32* %24, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %24, align 4
  %306 = load i32, i32* %24, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %300
  br label %521

309:                                              ; preds = %300
  %310 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %311 = load i32, i32* @SISGR, align 4
  %312 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %310, i32 %311, i32 4, i8 zeroext 0)
  %313 = load i32, i32* %24, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %24, align 4
  %315 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %316 = load i32, i32* @SISGR, align 4
  %317 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %315, i32 %316, i32 5, i8 zeroext 16)
  %318 = load i32, i32* %24, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %24, align 4
  %320 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %321 = load i32, i32* @SISGR, align 4
  %322 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %320, i32 %321, i32 6, i8 zeroext 6)
  %323 = load i32, i32* %24, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %24, align 4
  %325 = load i32, i32* %24, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %309
  br label %521

328:                                              ; preds = %309
  %329 = load i32, i32* %13, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %393

331:                                              ; preds = %328
  %332 = load i32, i32* %17, align 4
  %333 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %334 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %332, %335
  br i1 %336, label %337, label %393

337:                                              ; preds = %331
  store i32 0, i32* %23, align 4
  br label %338

338:                                              ; preds = %364, %337
  %339 = load i32, i32* %23, align 4
  %340 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %367

342:                                              ; preds = %338
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vc_cons, align 8
  %344 = load i32, i32* %23, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  %348 = load %struct.vc_data*, %struct.vc_data** %347, align 8
  store %struct.vc_data* %348, %struct.vc_data** %27, align 8
  %349 = load %struct.vc_data*, %struct.vc_data** %27, align 8
  %350 = icmp ne %struct.vc_data* %349, null
  br i1 %350, label %351, label %363

351:                                              ; preds = %342
  %352 = load %struct.vc_data*, %struct.vc_data** %27, align 8
  %353 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %352, i32 0, i32 3
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %353, align 8
  %355 = icmp eq %struct.TYPE_6__* %354, @sisusb_con
  br i1 %355, label %356, label %363

356:                                              ; preds = %351
  %357 = load i32, i32* %17, align 4
  %358 = icmp ne i32 %357, 0
  %359 = zext i1 %358 to i64
  %360 = select i1 %358, i32 2048, i32 0
  %361 = load %struct.vc_data*, %struct.vc_data** %27, align 8
  %362 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %361, i32 0, i32 0
  store i32 %360, i32* %362, align 8
  br label %363

363:                                              ; preds = %356, %351, %342
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %23, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %23, align 4
  br label %338

367:                                              ; preds = %338
  %368 = load i32, i32* %17, align 4
  %369 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %370 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  %371 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %372 = load i32, i32* @SISINPSTAT, align 4
  %373 = call i32 @sisusb_getreg(%struct.sisusb_usb_data* %371, i32 %372, i32* %26)
  %374 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %375 = load i32, i32* @SISAR, align 4
  %376 = call i32 @sisusb_setreg(%struct.sisusb_usb_data* %374, i32 %375, i32 18)
  %377 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %378 = load i32, i32* @SISAR, align 4
  %379 = load i32, i32* %17, align 4
  %380 = icmp ne i32 %379, 0
  %381 = zext i1 %380 to i64
  %382 = select i1 %380, i32 7, i32 15
  %383 = call i32 @sisusb_setreg(%struct.sisusb_usb_data* %377, i32 %378, i32 %382)
  %384 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %385 = load i32, i32* @SISINPSTAT, align 4
  %386 = call i32 @sisusb_getreg(%struct.sisusb_usb_data* %384, i32 %385, i32* %26)
  %387 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %388 = load i32, i32* @SISAR, align 4
  %389 = call i32 @sisusb_setreg(%struct.sisusb_usb_data* %387, i32 %388, i32 32)
  %390 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %391 = load i32, i32* @SISINPSTAT, align 4
  %392 = call i32 @sisusb_getreg(%struct.sisusb_usb_data* %390, i32 %391, i32* %26)
  br label %393

393:                                              ; preds = %367, %331, %328
  %394 = load i32, i32* %18, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %457

396:                                              ; preds = %393
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %397 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %398 = icmp ne %struct.vc_data* %397, null
  br i1 %398, label %399, label %435

399:                                              ; preds = %396
  %400 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %401 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* %20, align 4
  %404 = sdiv i32 %402, %403
  store i32 %404, i32* %31, align 4
  %405 = load i32, i32* %31, align 4
  %406 = load i32, i32* %20, align 4
  %407 = mul nsw i32 %405, %406
  %408 = sub nsw i32 %407, 1
  store i32 %408, i32* %32, align 4
  %409 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %410 = load i32, i32* @SISCR, align 4
  %411 = call i32 @sisusb_getidxreg(%struct.sisusb_usb_data* %409, i32 %410, i32 7, i8* %28)
  %412 = load i32, i32* %32, align 4
  %413 = and i32 %412, 255
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %29, align 1
  %415 = load i8, i8* %28, align 1
  %416 = zext i8 %415 to i32
  %417 = and i32 %416, 189
  %418 = load i32, i32* %32, align 4
  %419 = and i32 %418, 256
  %420 = ashr i32 %419, 7
  %421 = or i32 %417, %420
  %422 = load i32, i32* %32, align 4
  %423 = and i32 %422, 512
  %424 = ashr i32 %423, 3
  %425 = or i32 %421, %424
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %28, align 1
  %427 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %428 = load i32, i32* @SISCR, align 4
  %429 = load i8, i8* %28, align 1
  %430 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %427, i32 %428, i32 7, i8 zeroext %429)
  %431 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %432 = load i32, i32* @SISCR, align 4
  %433 = load i8, i8* %29, align 1
  %434 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %431, i32 %432, i32 18, i8 zeroext %433)
  br label %435

435:                                              ; preds = %399, %396
  %436 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %437 = load i32, i32* @SISCR, align 4
  %438 = call i32 @sisusb_getidxreg(%struct.sisusb_usb_data* %436, i32 %437, i32 9, i8* %30)
  %439 = load i8, i8* %30, align 1
  %440 = zext i8 %439 to i32
  %441 = and i32 %440, 224
  %442 = load i32, i32* %20, align 4
  %443 = sub nsw i32 %442, 1
  %444 = or i32 %441, %443
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %30, align 1
  %446 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %447 = load i32, i32* @SISCR, align 4
  %448 = load i8, i8* %30, align 1
  %449 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %446, i32 %447, i32 9, i8 zeroext %448)
  %450 = load i32, i32* %20, align 4
  %451 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %452 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %451, i32 0, i32 2
  store i32 %450, i32* %452, align 8
  %453 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %454 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %453, i32 0, i32 3
  store i32 -1, i32* %454, align 4
  %455 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %456 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %455, i32 0, i32 4
  store i32 -1, i32* %456, align 8
  br label %457

457:                                              ; preds = %435, %393
  %458 = load i32, i32* %21, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %457
  %461 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %462 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %461, i32 0, i32 5
  %463 = call i32 @mutex_unlock(i32* %462)
  br label %464

464:                                              ; preds = %460, %457
  %465 = load i32, i32* %18, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %520

467:                                              ; preds = %464
  %468 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %469 = icmp ne %struct.vc_data* %468, null
  br i1 %469, label %470, label %520

470:                                              ; preds = %467
  %471 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %472 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %20, align 4
  %475 = sdiv i32 %473, %474
  store i32 %475, i32* %33, align 4
  store i32 0, i32* %23, align 4
  br label %476

476:                                              ; preds = %516, %470
  %477 = load i32, i32* %23, align 4
  %478 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %519

480:                                              ; preds = %476
  %481 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vc_cons, align 8
  %482 = load i32, i32* %23, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 0
  %486 = load %struct.vc_data*, %struct.vc_data** %485, align 8
  store %struct.vc_data* %486, %struct.vc_data** %34, align 8
  %487 = load %struct.vc_data*, %struct.vc_data** %34, align 8
  %488 = icmp ne %struct.vc_data* %487, null
  br i1 %488, label %489, label %515

489:                                              ; preds = %480
  %490 = load %struct.vc_data*, %struct.vc_data** %34, align 8
  %491 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %490, i32 0, i32 3
  %492 = load %struct.TYPE_6__*, %struct.TYPE_6__** %491, align 8
  %493 = icmp eq %struct.TYPE_6__* %492, @sisusb_con
  br i1 %493, label %494, label %515

494:                                              ; preds = %489
  %495 = load %struct.vc_data*, %struct.vc_data** %34, align 8
  %496 = call i64 @con_is_visible(%struct.vc_data* %495)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %507

498:                                              ; preds = %494
  %499 = load %struct.vc_data*, %struct.vc_data** %34, align 8
  %500 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %499, i32 0, i32 3
  %501 = load %struct.TYPE_6__*, %struct.TYPE_6__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 0
  %503 = load i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32)** %502, align 8
  %504 = load %struct.vc_data*, %struct.vc_data** %34, align 8
  %505 = load i32, i32* @CM_DRAW, align 4
  %506 = call i32 %503(%struct.vc_data* %504, i32 %505)
  br label %507

507:                                              ; preds = %498, %494
  %508 = load i32, i32* %20, align 4
  %509 = load %struct.vc_data*, %struct.vc_data** %34, align 8
  %510 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %509, i32 0, i32 2
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %510, i32 0, i32 0
  store i32 %508, i32* %511, align 8
  %512 = load %struct.vc_data*, %struct.vc_data** %34, align 8
  %513 = load i32, i32* %33, align 4
  %514 = call i32 @vc_resize(%struct.vc_data* %512, i32 0, i32 %513)
  br label %515

515:                                              ; preds = %507, %489, %480
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %23, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %23, align 4
  br label %476

519:                                              ; preds = %476
  br label %520

520:                                              ; preds = %519, %467, %464
  store i32 0, i32* %11, align 4
  br label %531

521:                                              ; preds = %327, %308, %275, %119, %100
  %522 = load i32, i32* %21, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %521
  %525 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %12, align 8
  %526 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %525, i32 0, i32 5
  %527 = call i32 @mutex_unlock(i32* %526)
  br label %528

528:                                              ; preds = %524, %521
  %529 = load i32, i32* @EIO, align 4
  %530 = sub nsw i32 0, %529
  store i32 %530, i32* %11, align 4
  br label %531

531:                                              ; preds = %528, %520, %50
  %532 = load i32, i32* %11, align 4
  ret i32 %532
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sisusb_setidxreg(%struct.sisusb_usb_data*, i32, i32, i8 zeroext) #1

declare dso_local i32 @sisusb_writeb(%struct.sisusb_usb_data*, i64, i32) #1

declare dso_local i32 @sisusb_readb(%struct.sisusb_usb_data*, i64, i32*) #1

declare dso_local i32 @sisusb_getreg(%struct.sisusb_usb_data*, i32, i32*) #1

declare dso_local i32 @sisusb_setreg(%struct.sisusb_usb_data*, i32, i32) #1

declare dso_local i32 @sisusb_getidxreg(%struct.sisusb_usb_data*, i32, i32, i8*) #1

declare dso_local i64 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
