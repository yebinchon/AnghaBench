; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_getbuswidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_getbuswidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@SISUSB_PCI_MEMBASE = common dso_local global i32 0, align 4
@SISSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32*, i32*)* @sisusb_getbuswidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_getbuswidth(%struct.sisusb_usb_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @SISUSB_PCI_MEMBASE, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* @SISSR, align 4
  %18 = call i32 @GETIREG(i32 %17, i32 58, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 3
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @SISSR, align 4
  %22 = call i32 @SETIREG(i32 %21, i32 19, i32 0)
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load i32, i32* @SISSR, align 4
  %29 = call i32 @SETIREG(i32 %28, i32 20, i32 18)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @SISSR, align 4
  %33 = call i32 @SETIREGAND(i32 %32, i32 21, i32 239)
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %41

36:                                               ; preds = %3
  %37 = load i32, i32* @SISSR, align 4
  %38 = call i32 @SETIREG(i32 %37, i32 20, i32 2)
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @sisusb_triggersr16(%struct.sisusb_usb_data* %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 0
  %49 = call i32 @WRITEL(i32 %48, i32 19088743)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 4
  %54 = call i32 @WRITEL(i32 %53, i32 1164413355)
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 8
  %59 = call i32 @WRITEL(i32 %58, i32 -1985229329)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 12
  %64 = call i32 @WRITEL(i32 %63, i32 -839974621)
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 16
  %69 = call i32 @WRITEL(i32 %68, i32 1431655765)
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 20
  %74 = call i32 @WRITEL(i32 %73, i32 1431655765)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 24
  %79 = call i32 @WRITEL(i32 %78, i32 -1)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 28
  %84 = call i32 @WRITEL(i32 %83, i32 -1)
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 0
  %89 = call i32 @READL(i32 %88, i32* %11)
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 4
  %94 = call i32 @READL(i32 %93, i32* %12)
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 8
  %99 = call i32 @READL(i32 %98, i32* %13)
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 12
  %104 = call i32 @READL(i32 %103, i32* %14)
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp sle i32 %107, 1
  br i1 %108, label %109, label %194

109:                                              ; preds = %41
  %110 = load i32*, i32** %7, align 8
  store i32 0, i32* %110, align 4
  %111 = load i32*, i32** %6, align 8
  store i32 64, i32* %111, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, -839974621
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, -1985229329
  br i1 %116, label %117, label %131

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 1164413355
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, 19088743
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32*, i32** %7, align 8
  store i32 0, i32* %124, align 4
  %125 = load i32*, i32** %6, align 8
  store i32 64, i32* %125, align 4
  %126 = load i32, i32* @SISSR, align 4
  %127 = call i32 @SETIREGAND(i32 %126, i32 20, i32 253)
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %123, %120, %117
  br label %131

131:                                              ; preds = %130, %114
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 1164413355
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 19088743
  br i1 %136, label %137, label %193

137:                                              ; preds = %134, %131
  %138 = load i32*, i32** %7, align 8
  store i32 1, i32* %138, align 4
  %139 = load i32*, i32** %6, align 8
  store i32 64, i32* %139, align 4
  %140 = load i32, i32* @SISSR, align 4
  %141 = call i32 @SETIREGANDOR(i32 %140, i32 20, i32 252, i32 1)
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @sisusb_triggersr16(%struct.sisusb_usb_data* %144, i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 0
  %151 = call i32 @WRITEL(i32 %150, i32 -1985229329)
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 4
  %156 = call i32 @WRITEL(i32 %155, i32 -839974621)
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, 8
  %161 = call i32 @WRITEL(i32 %160, i32 1431655765)
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 12
  %166 = call i32 @WRITEL(i32 %165, i32 1431655765)
  %167 = load i32, i32* %8, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 16
  %171 = call i32 @WRITEL(i32 %170, i32 -1431655766)
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 20
  %176 = call i32 @WRITEL(i32 %175, i32 -1431655766)
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 4
  %181 = call i32 @READL(i32 %180, i32* %12)
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, -839974621
  br i1 %185, label %186, label %192

186:                                              ; preds = %137
  %187 = load i32*, i32** %6, align 8
  store i32 32, i32* %187, align 4
  %188 = load i32, i32* @SISSR, align 4
  %189 = call i32 @SETIREGOR(i32 %188, i32 21, i32 16)
  %190 = load i32, i32* %8, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %186, %137
  br label %193

193:                                              ; preds = %192, %134
  br label %303

194:                                              ; preds = %41
  %195 = load i32*, i32** %7, align 8
  store i32 0, i32* %195, align 4
  %196 = load i32*, i32** %6, align 8
  store i32 64, i32* %196, align 4
  store i32 0, i32* %10, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp eq i32 %197, 1164413355
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load i32, i32* %11, align 4
  %201 = icmp eq i32 %200, 19088743
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32*, i32** %7, align 8
  store i32 0, i32* %203, align 4
  %204 = load i32*, i32** %6, align 8
  store i32 64, i32* %204, align 4
  store i32 1, i32* %10, align 4
  br label %205

205:                                              ; preds = %202, %199
  br label %217

206:                                              ; preds = %194
  %207 = load i32, i32* %11, align 4
  %208 = icmp eq i32 %207, 19088743
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load i32*, i32** %7, align 8
  store i32 0, i32* %210, align 4
  %211 = load i32*, i32** %6, align 8
  store i32 32, i32* %211, align 4
  %212 = load i32, i32* @SISSR, align 4
  %213 = call i32 @SETIREG(i32 %212, i32 20, i32 0)
  %214 = load i32, i32* %8, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %216

216:                                              ; preds = %209, %206
  br label %217

217:                                              ; preds = %216, %205
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %302, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* @SISSR, align 4
  %222 = call i32 @SETIREG(i32 %221, i32 20, i32 3)
  %223 = load i32, i32* %8, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %8, align 4
  %225 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @sisusb_triggersr16(%struct.sisusb_usb_data* %225, i32 %226)
  %228 = load i32, i32* %8, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %15, align 4
  %231 = add nsw i32 %230, 0
  %232 = call i32 @WRITEL(i32 %231, i32 19088743)
  %233 = load i32, i32* %8, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, 4
  %237 = call i32 @WRITEL(i32 %236, i32 1164413355)
  %238 = load i32, i32* %8, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %240, 8
  %242 = call i32 @WRITEL(i32 %241, i32 -1985229329)
  %243 = load i32, i32* %8, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %15, align 4
  %246 = add nsw i32 %245, 12
  %247 = call i32 @WRITEL(i32 %246, i32 -839974621)
  %248 = load i32, i32* %8, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, 16
  %252 = call i32 @WRITEL(i32 %251, i32 1431655765)
  %253 = load i32, i32* %8, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %8, align 4
  %255 = load i32, i32* %15, align 4
  %256 = add nsw i32 %255, 20
  %257 = call i32 @WRITEL(i32 %256, i32 1431655765)
  %258 = load i32, i32* %8, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %260, 24
  %262 = call i32 @WRITEL(i32 %261, i32 -1)
  %263 = load i32, i32* %8, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 28
  %267 = call i32 @WRITEL(i32 %266, i32 -1)
  %268 = load i32, i32* %8, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %8, align 4
  %270 = load i32, i32* %15, align 4
  %271 = add nsw i32 %270, 0
  %272 = call i32 @READL(i32 %271, i32* %11)
  %273 = load i32, i32* %8, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, 4
  %277 = call i32 @READL(i32 %276, i32* %12)
  %278 = load i32, i32* %8, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %12, align 4
  %281 = icmp eq i32 %280, 1164413355
  br i1 %281, label %282, label %290

282:                                              ; preds = %220
  %283 = load i32, i32* %11, align 4
  %284 = icmp eq i32 %283, 19088743
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32*, i32** %7, align 8
  store i32 1, i32* %286, align 4
  %287 = load i32*, i32** %6, align 8
  store i32 64, i32* %287, align 4
  %288 = load i32, i32* %8, align 4
  store i32 %288, i32* %4, align 4
  br label %305

289:                                              ; preds = %282
  br label %301

290:                                              ; preds = %220
  %291 = load i32, i32* %11, align 4
  %292 = icmp eq i32 %291, 19088743
  br i1 %292, label %293, label %300

293:                                              ; preds = %290
  %294 = load i32*, i32** %7, align 8
  store i32 1, i32* %294, align 4
  %295 = load i32*, i32** %6, align 8
  store i32 32, i32* %295, align 4
  %296 = load i32, i32* @SISSR, align 4
  %297 = call i32 @SETIREG(i32 %296, i32 20, i32 1)
  %298 = load i32, i32* %8, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %8, align 4
  br label %300

300:                                              ; preds = %293, %290
  br label %301

301:                                              ; preds = %300, %289
  br label %302

302:                                              ; preds = %301, %217
  br label %303

303:                                              ; preds = %302, %193
  %304 = load i32, i32* %8, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %303, %285
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i32 @GETIREG(i32, i32, i32*) #1

declare dso_local i32 @SETIREG(i32, i32, i32) #1

declare dso_local i32 @SETIREGAND(i32, i32, i32) #1

declare dso_local i32 @sisusb_triggersr16(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @WRITEL(i32, i32) #1

declare dso_local i32 @READL(i32, i32*) #1

declare dso_local i32 @SETIREGANDOR(i32, i32, i32, i32) #1

declare dso_local i32 @SETIREGOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
