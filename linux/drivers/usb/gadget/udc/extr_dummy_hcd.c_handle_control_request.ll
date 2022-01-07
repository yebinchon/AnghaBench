; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_handle_control_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_handle_control_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_hcd = type { %struct.dummy* }
%struct.dummy = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.urb = type { i32, i32, i64 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32 }
%struct.dummy_ep = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@Dev_Request = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"set_address = %d\0A\00", align 1
@HCD_USB3 = common dso_local global i32 0, align 4
@USB_DEV_STAT_U1_ENABLED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_DEV_STAT_U2_ENABLED = common dso_local global i32 0, align 4
@USB_DEV_STAT_LTM_ENABLED = common dso_local global i32 0, align 4
@Ep_Request = common dso_local global i32 0, align 4
@ep0name = common dso_local global i32 0, align 4
@Dev_InRequest = common dso_local global i32 0, align 4
@Intf_InRequest = common dso_local global i32 0, align 4
@Ep_InRequest = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy_hcd*, %struct.urb*, %struct.usb_ctrlrequest*, i32*)* @handle_control_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_control_request(%struct.dummy_hcd* %0, %struct.urb* %1, %struct.usb_ctrlrequest* %2, i32* %3) #0 {
  %5 = alloca %struct.dummy_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_ctrlrequest*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dummy_ep*, align 8
  %10 = alloca %struct.dummy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.dummy_hcd* %0, %struct.dummy_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.usb_ctrlrequest* %2, %struct.usb_ctrlrequest** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %16 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %15, i32 0, i32 0
  %17 = load %struct.dummy*, %struct.dummy** %16, align 8
  store %struct.dummy* %17, %struct.dummy** %10, align 8
  store i32 1, i32* %11, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %324 [
    i32 129, label %29
    i32 128, label %45
    i32 131, label %148
    i32 130, label %239
  ]

29:                                               ; preds = %4
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %31 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @Dev_Request, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %324

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.dummy*, %struct.dummy** %10, align 8
  %39 = getelementptr inbounds %struct.dummy, %struct.dummy* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 0, i32* %40, align 4
  %41 = load %struct.dummy*, %struct.dummy** %10, align 8
  %42 = call i32 @udc_dev(%struct.dummy* %41)
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 0, i32* %11, align 4
  br label %324

45:                                               ; preds = %4
  %46 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %47 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @Dev_Request, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %120

51:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  switch i32 %52, label %105 [
    i32 134, label %53
    i32 136, label %54
    i32 137, label %58
    i32 138, label %62
    i32 133, label %66
    i32 132, label %79
    i32 135, label %92
  ]

53:                                               ; preds = %51
  br label %108

54:                                               ; preds = %51
  %55 = load %struct.dummy*, %struct.dummy** %10, align 8
  %56 = getelementptr inbounds %struct.dummy, %struct.dummy* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %108

58:                                               ; preds = %51
  %59 = load %struct.dummy*, %struct.dummy** %10, align 8
  %60 = getelementptr inbounds %struct.dummy, %struct.dummy* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %108

62:                                               ; preds = %51
  %63 = load %struct.dummy*, %struct.dummy** %10, align 8
  %64 = getelementptr inbounds %struct.dummy, %struct.dummy* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  br label %108

66:                                               ; preds = %51
  %67 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %68 = call %struct.TYPE_6__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HCD_USB3, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @USB_DEV_STAT_U1_ENABLED, align 4
  store i32 %74, i32* %13, align 4
  br label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %73
  br label %108

79:                                               ; preds = %51
  %80 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %81 = call %struct.TYPE_6__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @HCD_USB3, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @USB_DEV_STAT_U2_ENABLED, align 4
  store i32 %87, i32* %13, align 4
  br label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @EOPNOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %88, %86
  br label %108

92:                                               ; preds = %51
  %93 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %94 = call %struct.TYPE_6__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @HCD_USB3, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @USB_DEV_STAT_LTM_ENABLED, align 4
  store i32 %100, i32* %13, align 4
  br label %104

101:                                              ; preds = %92
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %101, %99
  br label %108

105:                                              ; preds = %51
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %105, %104, %91, %78, %62, %58, %54, %53
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = shl i32 1, %112
  %114 = load %struct.dummy*, %struct.dummy** %10, align 8
  %115 = getelementptr inbounds %struct.dummy, %struct.dummy* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32*, i32** %8, align 8
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %111, %108
  br label %147

120:                                              ; preds = %45
  %121 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %122 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @Ep_Request, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %120
  %127 = load %struct.dummy*, %struct.dummy** %10, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call %struct.dummy_ep* @find_endpoint(%struct.dummy* %127, i32 %128)
  store %struct.dummy_ep* %129, %struct.dummy_ep** %9, align 8
  %130 = load %struct.dummy_ep*, %struct.dummy_ep** %9, align 8
  %131 = icmp ne %struct.dummy_ep* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.dummy_ep*, %struct.dummy_ep** %9, align 8
  %134 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ep0name, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132, %126
  %140 = load i32, i32* @EOPNOTSUPP, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %11, align 4
  br label %324

142:                                              ; preds = %132
  %143 = load %struct.dummy_ep*, %struct.dummy_ep** %9, align 8
  %144 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  store i32 0, i32* %11, align 4
  %145 = load i32*, i32** %8, align 8
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %120
  br label %147

147:                                              ; preds = %146, %119
  br label %324

148:                                              ; preds = %4
  %149 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %150 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @Dev_Request, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %212

154:                                              ; preds = %148
  store i32 0, i32* %11, align 4
  %155 = load i32, i32* %13, align 4
  switch i32 %155, label %196 [
    i32 134, label %156
    i32 133, label %157
    i32 132, label %170
    i32 135, label %183
  ]

156:                                              ; preds = %154
  store i32 134, i32* %13, align 4
  br label %199

157:                                              ; preds = %154
  %158 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %159 = call %struct.TYPE_6__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %158)
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @HCD_USB3, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* @USB_DEV_STAT_U1_ENABLED, align 4
  store i32 %165, i32* %13, align 4
  br label %169

166:                                              ; preds = %157
  %167 = load i32, i32* @EOPNOTSUPP, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %166, %164
  br label %199

170:                                              ; preds = %154
  %171 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %172 = call %struct.TYPE_6__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %171)
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @HCD_USB3, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32, i32* @USB_DEV_STAT_U2_ENABLED, align 4
  store i32 %178, i32* %13, align 4
  br label %182

179:                                              ; preds = %170
  %180 = load i32, i32* @EOPNOTSUPP, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %179, %177
  br label %199

183:                                              ; preds = %154
  %184 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %185 = call %struct.TYPE_6__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %184)
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @HCD_USB3, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = load i32, i32* @USB_DEV_STAT_LTM_ENABLED, align 4
  store i32 %191, i32* %13, align 4
  br label %195

192:                                              ; preds = %183
  %193 = load i32, i32* @EOPNOTSUPP, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %192, %190
  br label %199

196:                                              ; preds = %154
  %197 = load i32, i32* @EOPNOTSUPP, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %196, %195, %182, %169, %156
  %200 = load i32, i32* %11, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i32, i32* %13, align 4
  %204 = shl i32 1, %203
  %205 = xor i32 %204, -1
  %206 = load %struct.dummy*, %struct.dummy** %10, align 8
  %207 = getelementptr inbounds %struct.dummy, %struct.dummy* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load i32*, i32** %8, align 8
  store i32 0, i32* %210, align 4
  br label %211

211:                                              ; preds = %202, %199
  br label %238

212:                                              ; preds = %148
  %213 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %214 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @Ep_Request, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %237

218:                                              ; preds = %212
  %219 = load %struct.dummy*, %struct.dummy** %10, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call %struct.dummy_ep* @find_endpoint(%struct.dummy* %219, i32 %220)
  store %struct.dummy_ep* %221, %struct.dummy_ep** %9, align 8
  %222 = load %struct.dummy_ep*, %struct.dummy_ep** %9, align 8
  %223 = icmp ne %struct.dummy_ep* %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %218
  %225 = load i32, i32* @EOPNOTSUPP, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %11, align 4
  br label %324

227:                                              ; preds = %218
  %228 = load %struct.dummy_ep*, %struct.dummy_ep** %9, align 8
  %229 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %227
  %233 = load %struct.dummy_ep*, %struct.dummy_ep** %9, align 8
  %234 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %233, i32 0, i32 0
  store i32 0, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %227
  store i32 0, i32* %11, align 4
  %236 = load i32*, i32** %8, align 8
  store i32 0, i32* %236, align 4
  br label %237

237:                                              ; preds = %235, %212
  br label %238

238:                                              ; preds = %237, %211
  br label %324

239:                                              ; preds = %4
  %240 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %241 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @Dev_InRequest, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %257, label %245

245:                                              ; preds = %239
  %246 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %247 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @Intf_InRequest, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %253 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @Ep_InRequest, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %323

257:                                              ; preds = %251, %245, %239
  %258 = load %struct.urb*, %struct.urb** %6, align 8
  %259 = getelementptr inbounds %struct.urb, %struct.urb* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to i8*
  store i8* %261, i8** %14, align 8
  %262 = load %struct.urb*, %struct.urb** %6, align 8
  %263 = getelementptr inbounds %struct.urb, %struct.urb* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %306

266:                                              ; preds = %257
  %267 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %268 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @Ep_InRequest, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %288

272:                                              ; preds = %266
  %273 = load %struct.dummy*, %struct.dummy** %10, align 8
  %274 = load i32, i32* %12, align 4
  %275 = call %struct.dummy_ep* @find_endpoint(%struct.dummy* %273, i32 %274)
  store %struct.dummy_ep* %275, %struct.dummy_ep** %9, align 8
  %276 = load %struct.dummy_ep*, %struct.dummy_ep** %9, align 8
  %277 = icmp ne %struct.dummy_ep* %276, null
  br i1 %277, label %281, label %278

278:                                              ; preds = %272
  %279 = load i32, i32* @EOPNOTSUPP, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %11, align 4
  br label %324

281:                                              ; preds = %272
  %282 = load %struct.dummy_ep*, %struct.dummy_ep** %9, align 8
  %283 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = trunc i32 %284 to i8
  %286 = load i8*, i8** %14, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 0
  store i8 %285, i8* %287, align 1
  br label %305

288:                                              ; preds = %266
  %289 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %290 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @Dev_InRequest, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %288
  %295 = load %struct.dummy*, %struct.dummy** %10, align 8
  %296 = getelementptr inbounds %struct.dummy, %struct.dummy* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = trunc i32 %297 to i8
  %299 = load i8*, i8** %14, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 0
  store i8 %298, i8* %300, align 1
  br label %304

301:                                              ; preds = %288
  %302 = load i8*, i8** %14, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 0
  store i8 0, i8* %303, align 1
  br label %304

304:                                              ; preds = %301, %294
  br label %305

305:                                              ; preds = %304, %281
  br label %306

306:                                              ; preds = %305, %257
  %307 = load %struct.urb*, %struct.urb** %6, align 8
  %308 = getelementptr inbounds %struct.urb, %struct.urb* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = load i8*, i8** %14, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 1
  store i8 0, i8* %313, align 1
  br label %314

314:                                              ; preds = %311, %306
  %315 = load i32, i32* @u32, align 4
  %316 = load %struct.urb*, %struct.urb** %6, align 8
  %317 = getelementptr inbounds %struct.urb, %struct.urb* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @min_t(i32 %315, i32 2, i32 %318)
  %320 = load %struct.urb*, %struct.urb** %6, align 8
  %321 = getelementptr inbounds %struct.urb, %struct.urb* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 4
  store i32 0, i32* %11, align 4
  %322 = load i32*, i32** %8, align 8
  store i32 0, i32* %322, align 4
  br label %323

323:                                              ; preds = %314, %251
  br label %324

324:                                              ; preds = %4, %323, %278, %238, %224, %147, %139, %36, %35
  %325 = load i32, i32* %11, align 4
  ret i32 %325
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @udc_dev(%struct.dummy*) #1

declare dso_local %struct.TYPE_6__* @dummy_hcd_to_hcd(%struct.dummy_hcd*) #1

declare dso_local %struct.dummy_ep* @find_endpoint(%struct.dummy*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
