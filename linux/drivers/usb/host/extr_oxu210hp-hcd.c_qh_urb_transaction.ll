; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_qh_urb_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_qh_urb_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.list_head = type { i32 }
%struct.ehci_qtd = type { i32, i32, i32, i32, i8*, %struct.urb*, i32, i8*, i32 }

@QTD_STS_ACTIVE = common dso_local global i32 0, align 4
@EHCI_TUNE_CERR = common dso_local global i32 0, align 4
@QTD_TOGGLE = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EHCI_LIST_END = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@QTD_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.oxu_hcd*, %struct.urb*, %struct.list_head*, i32)* @qh_urb_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @qh_urb_transaction(%struct.oxu_hcd* %0, %struct.urb* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.oxu_hcd*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehci_qtd*, align 8
  %11 = alloca %struct.ehci_qtd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %6, align 8
  store %struct.urb* %1, %struct.urb** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %17, align 8
  %21 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %22 = call %struct.ehci_qtd* @ehci_qtd_alloc(%struct.oxu_hcd* %21)
  store %struct.ehci_qtd* %22, %struct.ehci_qtd** %10, align 8
  %23 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %24 = icmp ne %struct.ehci_qtd* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store %struct.list_head* null, %struct.list_head** %5, align 8
  br label %377

30:                                               ; preds = %4
  %31 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %32 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %31, i32 0, i32 2
  %33 = load %struct.list_head*, %struct.list_head** %8, align 8
  %34 = call i32 @list_add_tail(i32* %32, %struct.list_head* %33)
  %35 = load %struct.urb*, %struct.urb** %7, align 8
  %36 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %37 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %36, i32 0, i32 5
  store %struct.urb* %35, %struct.urb** %37, align 8
  %38 = load i32, i32* @QTD_STS_ACTIVE, align 4
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @EHCI_TUNE_CERR, align 4
  %40 = shl i32 %39, 10
  %41 = load i32, i32* %16, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %16, align 4
  %43 = load %struct.urb*, %struct.urb** %7, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  %46 = load %struct.urb*, %struct.urb** %7, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @usb_pipein(i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load %struct.urb*, %struct.urb** %7, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %30
  %55 = load %struct.urb*, %struct.urb** %7, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.urb*, %struct.urb** %7, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @phys_to_virt(i32 %65)
  %67 = load %struct.urb*, %struct.urb** %7, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %62, %59, %54, %30
  %70 = load %struct.urb*, %struct.urb** %7, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @usb_pipecontrol(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %132

75:                                               ; preds = %69
  %76 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %77 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %78 = call i32 @oxu_buf_alloc(%struct.oxu_hcd* %76, %struct.ehci_qtd* %77, i32 4)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %372

82:                                               ; preds = %75
  %83 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %84 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %85 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = or i32 %87, 512
  %89 = call i32 @qtd_fill(%struct.ehci_qtd* %83, i32 %86, i32 4, i32 %88, i32 8)
  %90 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %91 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %94 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %93, i32 0, i32 5
  %95 = load %struct.urb*, %struct.urb** %94, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 5
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @memcpy(i32 %92, i8* %97, i32 4)
  %99 = load i32, i32* @QTD_TOGGLE, align 4
  %100 = load i32, i32* %16, align 4
  %101 = xor i32 %100, %99
  store i32 %101, i32* %16, align 4
  %102 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  store %struct.ehci_qtd* %102, %struct.ehci_qtd** %11, align 8
  %103 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %104 = call %struct.ehci_qtd* @ehci_qtd_alloc(%struct.oxu_hcd* %103)
  store %struct.ehci_qtd* %104, %struct.ehci_qtd** %10, align 8
  %105 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %106 = icmp ne %struct.ehci_qtd* %105, null
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %82
  br label %372

112:                                              ; preds = %82
  %113 = load %struct.urb*, %struct.urb** %7, align 8
  %114 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %115 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %114, i32 0, i32 5
  store %struct.urb* %113, %struct.urb** %115, align 8
  %116 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %117 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @QTD_NEXT(i32 %118)
  %120 = load %struct.ehci_qtd*, %struct.ehci_qtd** %11, align 8
  %121 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %123 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %122, i32 0, i32 2
  %124 = load %struct.list_head*, %struct.list_head** %8, align 8
  %125 = call i32 @list_add_tail(i32* %123, %struct.list_head* %124)
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load i32, i32* %16, align 4
  %130 = or i32 %129, 256
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %128, %112
  br label %132

132:                                              ; preds = %131, %69
  %133 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %134 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @oxu_buf_alloc(%struct.oxu_hcd* %133, %struct.ehci_qtd* %134, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %372

140:                                              ; preds = %132
  %141 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %142 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %12, align 4
  %144 = load %struct.urb*, %struct.urb** %7, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 4
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %17, align 8
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %140
  %150 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %151 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %154 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %153, i32 0, i32 5
  %155 = load %struct.urb*, %struct.urb** %154, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @memcpy(i32 %152, i8* %157, i32 %158)
  br label %160

160:                                              ; preds = %149, %140
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %16, align 4
  %165 = or i32 %164, 256
  store i32 %165, i32* %16, align 4
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.urb*, %struct.urb** %7, align 8
  %168 = getelementptr inbounds %struct.urb, %struct.urb* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.urb*, %struct.urb** %7, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @usb_maxpacket(i32 %169, i32 %172, i32 %176)
  %178 = call i32 @max_packet(i32 %177)
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %254, %166
  %180 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @qtd_fill(%struct.ehci_qtd* %180, i32 %181, i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %19, align 4
  %186 = load i8*, i8** %17, align 8
  %187 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %188 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %187, i32 0, i32 7
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %190, %189
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i8*, i8** %17, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr i8, i8* %196, i64 %197
  store i8* %198, i8** %17, align 8
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %179
  %202 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %203 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %202, i32 0, i32 0
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %208 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %201, %179
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %14, align 4
  %213 = sub nsw i32 %212, 1
  %214 = add nsw i32 %211, %213
  %215 = and i32 %210, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %209
  %218 = load i32, i32* @QTD_TOGGLE, align 4
  %219 = load i32, i32* %16, align 4
  %220 = xor i32 %219, %218
  store i32 %220, i32* %16, align 4
  br label %221

221:                                              ; preds = %217, %209
  %222 = load i32, i32* %13, align 4
  %223 = icmp sle i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i64 @likely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %268

228:                                              ; preds = %221
  %229 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  store %struct.ehci_qtd* %229, %struct.ehci_qtd** %11, align 8
  %230 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %231 = call %struct.ehci_qtd* @ehci_qtd_alloc(%struct.oxu_hcd* %230)
  store %struct.ehci_qtd* %231, %struct.ehci_qtd** %10, align 8
  %232 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %233 = icmp ne %struct.ehci_qtd* %232, null
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %228
  br label %372

239:                                              ; preds = %228
  %240 = load i32, i32* %13, align 4
  %241 = icmp sgt i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = call i64 @likely(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %239
  %246 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %247 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @oxu_buf_alloc(%struct.oxu_hcd* %246, %struct.ehci_qtd* %247, i32 %248)
  store i32 %249, i32* %18, align 4
  %250 = load i32, i32* %18, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %372

253:                                              ; preds = %245
  br label %254

254:                                              ; preds = %253, %239
  %255 = load %struct.urb*, %struct.urb** %7, align 8
  %256 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %257 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %256, i32 0, i32 5
  store %struct.urb* %255, %struct.urb** %257, align 8
  %258 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %259 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i8* @QTD_NEXT(i32 %260)
  %262 = load %struct.ehci_qtd*, %struct.ehci_qtd** %11, align 8
  %263 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %262, i32 0, i32 4
  store i8* %261, i8** %263, align 8
  %264 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %265 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %264, i32 0, i32 2
  %266 = load %struct.list_head*, %struct.list_head** %8, align 8
  %267 = call i32 @list_add_tail(i32* %265, %struct.list_head* %266)
  br label %179

268:                                              ; preds = %227
  %269 = load %struct.urb*, %struct.urb** %7, align 8
  %270 = getelementptr inbounds %struct.urb, %struct.urb* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %273 = and i32 %271, %272
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %268
  %276 = load %struct.urb*, %struct.urb** %7, align 8
  %277 = getelementptr inbounds %struct.urb, %struct.urb* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @usb_pipecontrol(i32 %278)
  %280 = icmp ne i64 %279, 0
  br label %281

281:                                              ; preds = %275, %268
  %282 = phi i1 [ true, %268 ], [ %280, %275 ]
  %283 = zext i1 %282 to i32
  %284 = call i64 @likely(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load i32, i32* @EHCI_LIST_END, align 4
  %288 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %289 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %288, i32 0, i32 6
  store i32 %287, i32* %289, align 8
  br label %290

290:                                              ; preds = %286, %281
  %291 = load %struct.urb*, %struct.urb** %7, align 8
  %292 = getelementptr inbounds %struct.urb, %struct.urb* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i32
  %296 = call i64 @likely(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %364

298:                                              ; preds = %290
  store i32 0, i32* %20, align 4
  %299 = load %struct.urb*, %struct.urb** %7, align 8
  %300 = getelementptr inbounds %struct.urb, %struct.urb* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = call i64 @usb_pipecontrol(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  store i32 1, i32* %20, align 4
  %305 = load i32, i32* %16, align 4
  %306 = xor i32 %305, 256
  store i32 %306, i32* %16, align 4
  %307 = load i32, i32* @QTD_TOGGLE, align 4
  %308 = load i32, i32* %16, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %16, align 4
  br label %332

310:                                              ; preds = %298
  %311 = load %struct.urb*, %struct.urb** %7, align 8
  %312 = getelementptr inbounds %struct.urb, %struct.urb* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = call i64 @usb_pipebulk(i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %331

316:                                              ; preds = %310
  %317 = load %struct.urb*, %struct.urb** %7, align 8
  %318 = getelementptr inbounds %struct.urb, %struct.urb* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @URB_ZERO_PACKET, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %316
  %324 = load %struct.urb*, %struct.urb** %7, align 8
  %325 = getelementptr inbounds %struct.urb, %struct.urb* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %14, align 4
  %328 = srem i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %323
  store i32 1, i32* %20, align 4
  br label %331

331:                                              ; preds = %330, %323, %316, %310
  br label %332

332:                                              ; preds = %331, %304
  %333 = load i32, i32* %20, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %363

335:                                              ; preds = %332
  %336 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  store %struct.ehci_qtd* %336, %struct.ehci_qtd** %11, align 8
  %337 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %338 = call %struct.ehci_qtd* @ehci_qtd_alloc(%struct.oxu_hcd* %337)
  store %struct.ehci_qtd* %338, %struct.ehci_qtd** %10, align 8
  %339 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %340 = icmp ne %struct.ehci_qtd* %339, null
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i32
  %343 = call i64 @unlikely(i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %335
  br label %372

346:                                              ; preds = %335
  %347 = load %struct.urb*, %struct.urb** %7, align 8
  %348 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %349 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %348, i32 0, i32 5
  store %struct.urb* %347, %struct.urb** %349, align 8
  %350 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %351 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = call i8* @QTD_NEXT(i32 %352)
  %354 = load %struct.ehci_qtd*, %struct.ehci_qtd** %11, align 8
  %355 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %354, i32 0, i32 4
  store i8* %353, i8** %355, align 8
  %356 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %357 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %356, i32 0, i32 2
  %358 = load %struct.list_head*, %struct.list_head** %8, align 8
  %359 = call i32 @list_add_tail(i32* %357, %struct.list_head* %358)
  %360 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %361 = load i32, i32* %16, align 4
  %362 = call i32 @qtd_fill(%struct.ehci_qtd* %360, i32 0, i32 0, i32 %361, i32 0)
  br label %363

363:                                              ; preds = %346, %332
  br label %364

364:                                              ; preds = %363, %290
  %365 = load i32, i32* @QTD_IOC, align 4
  %366 = call i32 @cpu_to_le32(i32 %365)
  %367 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %368 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 4
  %371 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %371, %struct.list_head** %5, align 8
  br label %377

372:                                              ; preds = %345, %252, %238, %139, %111, %81
  %373 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %374 = load %struct.urb*, %struct.urb** %7, align 8
  %375 = load %struct.list_head*, %struct.list_head** %8, align 8
  %376 = call i32 @qtd_list_free(%struct.oxu_hcd* %373, %struct.urb* %374, %struct.list_head* %375)
  store %struct.list_head* null, %struct.list_head** %5, align 8
  br label %377

377:                                              ; preds = %372, %364, %29
  %378 = load %struct.list_head*, %struct.list_head** %5, align 8
  ret %struct.list_head* %378
}

declare dso_local %struct.ehci_qtd* @ehci_qtd_alloc(%struct.oxu_hcd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @usb_pipein(i32) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local i32 @oxu_buf_alloc(%struct.oxu_hcd*, %struct.ehci_qtd*, i32) #1

declare dso_local i32 @qtd_fill(%struct.ehci_qtd*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @QTD_NEXT(i32) #1

declare dso_local i32 @max_packet(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @usb_pipebulk(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qtd_list_free(%struct.oxu_hcd*, %struct.urb*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
