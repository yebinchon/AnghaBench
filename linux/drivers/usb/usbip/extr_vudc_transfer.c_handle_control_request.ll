; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_transfer.c_handle_control_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_transfer.c_handle_control_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vudc = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.urb = type { i32, i32, i64 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32 }
%struct.vep = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DEV_REQUEST = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EP_REQUEST = common dso_local global i32 0, align 4
@DEV_INREQUEST = common dso_local global i32 0, align 4
@INTF_INREQUEST = common dso_local global i32 0, align 4
@EP_INREQUEST = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vudc*, %struct.urb*, %struct.usb_ctrlrequest*, i32*)* @handle_control_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_control_request(%struct.vudc* %0, %struct.urb* %1, %struct.usb_ctrlrequest* %2, i32* %3) #0 {
  %5 = alloca %struct.vudc*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_ctrlrequest*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vep*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.vudc* %0, %struct.vudc** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.usb_ctrlrequest* %2, %struct.usb_ctrlrequest** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 1, i32* %10, align 4
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %247 [
    i32 129, label %25
    i32 128, label %37
    i32 131, label %107
    i32 130, label %162
  ]

25:                                               ; preds = %4
  %26 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DEV_REQUEST, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %247

32:                                               ; preds = %25
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.vudc*, %struct.vudc** %5, align 8
  %35 = getelementptr inbounds %struct.vudc, %struct.vudc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %10, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 0, i32* %36, align 4
  br label %247

37:                                               ; preds = %4
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DEV_REQUEST, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %58 [
    i32 134, label %45
    i32 136, label %46
    i32 137, label %50
    i32 138, label %54
  ]

45:                                               ; preds = %43
  br label %61

46:                                               ; preds = %43
  %47 = load %struct.vudc*, %struct.vudc** %5, align 8
  %48 = getelementptr inbounds %struct.vudc, %struct.vudc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %61

50:                                               ; preds = %43
  %51 = load %struct.vudc*, %struct.vudc** %5, align 8
  %52 = getelementptr inbounds %struct.vudc, %struct.vudc* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %61

54:                                               ; preds = %43
  %55 = load %struct.vudc*, %struct.vudc** %5, align 8
  %56 = getelementptr inbounds %struct.vudc, %struct.vudc* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  br label %61

58:                                               ; preds = %43
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %54, %50, %46, %45
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.vudc*, %struct.vudc** %5, align 8
  %68 = getelementptr inbounds %struct.vudc, %struct.vudc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %61
  br label %106

73:                                               ; preds = %37
  %74 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %75 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EP_REQUEST, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = load %struct.vudc*, %struct.vudc** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call %struct.vep* @vudc_find_endpoint(%struct.vudc* %80, i32 %81)
  store %struct.vep* %82, %struct.vep** %9, align 8
  %83 = load %struct.vep*, %struct.vep** %9, align 8
  %84 = icmp ne %struct.vep* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load %struct.vep*, %struct.vep** %9, align 8
  %87 = getelementptr inbounds %struct.vep, %struct.vep* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vudc*, %struct.vudc** %5, align 8
  %91 = getelementptr inbounds %struct.vudc, %struct.vudc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %89, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %85, %79
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %247

101:                                              ; preds = %85
  %102 = load %struct.vep*, %struct.vep** %9, align 8
  %103 = getelementptr inbounds %struct.vep, %struct.vep* %102, i32 0, i32 0
  store i32 1, i32* %103, align 4
  store i32 0, i32* %10, align 4
  %104 = load i32*, i32** %8, align 8
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %73
  br label %106

106:                                              ; preds = %105, %72
  br label %247

107:                                              ; preds = %4
  %108 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %109 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DEV_REQUEST, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  %114 = load i32, i32* %12, align 4
  switch i32 %114, label %119 [
    i32 134, label %115
    i32 133, label %116
    i32 132, label %116
    i32 135, label %116
  ]

115:                                              ; preds = %113
  store i32 134, i32* %12, align 4
  br label %122

116:                                              ; preds = %113, %113, %113
  %117 = load i32, i32* @EOPNOTSUPP, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @EOPNOTSUPP, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %119, %116, %115
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = shl i32 1, %126
  %128 = xor i32 %127, -1
  %129 = load %struct.vudc*, %struct.vudc** %5, align 8
  %130 = getelementptr inbounds %struct.vudc, %struct.vudc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load i32*, i32** %8, align 8
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %125, %122
  br label %161

135:                                              ; preds = %107
  %136 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %137 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @EP_REQUEST, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %135
  %142 = load %struct.vudc*, %struct.vudc** %5, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call %struct.vep* @vudc_find_endpoint(%struct.vudc* %142, i32 %143)
  store %struct.vep* %144, %struct.vep** %9, align 8
  %145 = load %struct.vep*, %struct.vep** %9, align 8
  %146 = icmp ne %struct.vep* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* @EOPNOTSUPP, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %10, align 4
  br label %247

150:                                              ; preds = %141
  %151 = load %struct.vep*, %struct.vep** %9, align 8
  %152 = getelementptr inbounds %struct.vep, %struct.vep* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load %struct.vep*, %struct.vep** %9, align 8
  %157 = getelementptr inbounds %struct.vep, %struct.vep* %156, i32 0, i32 0
  store i32 0, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %150
  store i32 0, i32* %10, align 4
  %159 = load i32*, i32** %8, align 8
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %158, %135
  br label %161

161:                                              ; preds = %160, %134
  br label %247

162:                                              ; preds = %4
  %163 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %164 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DEV_INREQUEST, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %180, label %168

168:                                              ; preds = %162
  %169 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %170 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @INTF_INREQUEST, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %176 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @EP_INREQUEST, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %246

180:                                              ; preds = %174, %168, %162
  %181 = load %struct.urb*, %struct.urb** %6, align 8
  %182 = getelementptr inbounds %struct.urb, %struct.urb* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i8*
  store i8* %184, i8** %13, align 8
  %185 = load %struct.urb*, %struct.urb** %6, align 8
  %186 = getelementptr inbounds %struct.urb, %struct.urb* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %229

189:                                              ; preds = %180
  %190 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %191 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @EP_INREQUEST, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %189
  %196 = load %struct.vudc*, %struct.vudc** %5, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call %struct.vep* @vudc_find_endpoint(%struct.vudc* %196, i32 %197)
  store %struct.vep* %198, %struct.vep** %9, align 8
  %199 = load %struct.vep*, %struct.vep** %9, align 8
  %200 = icmp ne %struct.vep* %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %195
  %202 = load i32, i32* @EOPNOTSUPP, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %10, align 4
  br label %247

204:                                              ; preds = %195
  %205 = load %struct.vep*, %struct.vep** %9, align 8
  %206 = getelementptr inbounds %struct.vep, %struct.vep* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = trunc i32 %207 to i8
  %209 = load i8*, i8** %13, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 0
  store i8 %208, i8* %210, align 1
  br label %228

211:                                              ; preds = %189
  %212 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %213 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @DEV_INREQUEST, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load %struct.vudc*, %struct.vudc** %5, align 8
  %219 = getelementptr inbounds %struct.vudc, %struct.vudc* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %13, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  store i8 %221, i8* %223, align 1
  br label %227

224:                                              ; preds = %211
  %225 = load i8*, i8** %13, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  store i8 0, i8* %226, align 1
  br label %227

227:                                              ; preds = %224, %217
  br label %228

228:                                              ; preds = %227, %204
  br label %229

229:                                              ; preds = %228, %180
  %230 = load %struct.urb*, %struct.urb** %6, align 8
  %231 = getelementptr inbounds %struct.urb, %struct.urb* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp sgt i32 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i8*, i8** %13, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 1
  store i8 0, i8* %236, align 1
  br label %237

237:                                              ; preds = %234, %229
  %238 = load i32, i32* @u32, align 4
  %239 = load %struct.urb*, %struct.urb** %6, align 8
  %240 = getelementptr inbounds %struct.urb, %struct.urb* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @min_t(i32 %238, i32 2, i32 %241)
  %243 = load %struct.urb*, %struct.urb** %6, align 8
  %244 = getelementptr inbounds %struct.urb, %struct.urb* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  store i32 0, i32* %10, align 4
  %245 = load i32*, i32** %8, align 8
  store i32 0, i32* %245, align 4
  br label %246

246:                                              ; preds = %237, %174
  br label %247

247:                                              ; preds = %4, %246, %201, %161, %147, %106, %98, %32, %31
  %248 = load i32, i32* %10, align 4
  ret i32 %248
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.vep* @vudc_find_endpoint(%struct.vudc*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
