; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_send_gadget_ep_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_send_gadget_ep_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, i32, %struct.dwc3*, %struct.TYPE_3__ }
%struct.dwc3 = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.dwc3_gadget_ep_cmd_params = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@DWC3_GUSB2PHYCFG_SUSPHY = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG_ENBLSLPM = common dso_local global i32 0, align 4
@DWC3_DEPCMD_STARTTRANSFER = common dso_local global i64 0, align 8
@DWC3_LINK_STATE_U1 = common dso_local global i64 0, align 8
@DWC3_LINK_STATE_U2 = common dso_local global i64 0, align 8
@DWC3_LINK_STATE_U3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"wakeup failed --> %d\0A\00", align 1
@DWC3_DEPCMDPAR0 = common dso_local global i32 0, align 4
@DWC3_DEPCMDPAR1 = common dso_local global i32 0, align 4
@DWC3_DEPCMDPAR2 = common dso_local global i32 0, align 4
@DWC3_DEPCMD_UPDATETRANSFER = common dso_local global i64 0, align 8
@DWC3_DEPCMD_CMDIOC = common dso_local global i32 0, align 4
@DWC3_DEPCMD_CMDACT = common dso_local global i32 0, align 4
@DWC3_DEPCMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"UNKNOWN cmd status\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DWC3_EP_TRANSFER_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %0, i32 %1, %struct.dwc3_gadget_ep_cmd_params* %2) #0 {
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc3_gadget_ep_cmd_params*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.dwc3*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dwc3_gadget_ep_cmd_params* %2, %struct.dwc3_gadget_ep_cmd_params** %6, align 8
  %15 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %16 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  store %struct.usb_endpoint_descriptor* %18, %struct.usb_endpoint_descriptor** %7, align 8
  %19 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %20 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %19, i32 0, i32 2
  %21 = load %struct.dwc3*, %struct.dwc3** %20, align 8
  store %struct.dwc3* %21, %struct.dwc3** %8, align 8
  store i32 1000, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  %24 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_SPEED_HIGH, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %3
  %31 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %32 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %35 = call i32 @dwc3_readl(i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %41, %30
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @DWC3_GUSB2PHYCFG_ENBLSLPM, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* @DWC3_GUSB2PHYCFG_ENBLSLPM, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @DWC3_GUSB2PHYCFG_ENBLSLPM, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %54, %49
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %67 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @dwc3_writel(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %62
  br label %73

73:                                               ; preds = %72, %3
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @DWC3_DEPCMD_CMD(i32 %74)
  %76 = load i64, i64* @DWC3_DEPCMD_STARTTRANSFER, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %73
  %79 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %80 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DWC3_LINK_STATE_U1, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %86 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DWC3_LINK_STATE_U2, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %92 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DWC3_LINK_STATE_U3, align 8
  %95 = icmp eq i64 %93, %94
  br label %96

96:                                               ; preds = %90, %84, %78
  %97 = phi i1 [ true, %84 ], [ true, %78 ], [ %95, %90 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %104 = call i32 @__dwc3_gadget_wakeup(%struct.dwc3* %103)
  store i32 %104, i32* %13, align 4
  %105 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %106 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @dev_WARN_ONCE(i32 %107, i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %102, %96
  br label %112

112:                                              ; preds = %111, %73
  %113 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %114 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DWC3_DEPCMDPAR0, align 4
  %117 = load %struct.dwc3_gadget_ep_cmd_params*, %struct.dwc3_gadget_ep_cmd_params** %6, align 8
  %118 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dwc3_writel(i32 %115, i32 %116, i32 %119)
  %121 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %122 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DWC3_DEPCMDPAR1, align 4
  %125 = load %struct.dwc3_gadget_ep_cmd_params*, %struct.dwc3_gadget_ep_cmd_params** %6, align 8
  %126 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dwc3_writel(i32 %123, i32 %124, i32 %127)
  %129 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %130 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DWC3_DEPCMDPAR2, align 4
  %133 = load %struct.dwc3_gadget_ep_cmd_params*, %struct.dwc3_gadget_ep_cmd_params** %6, align 8
  %134 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dwc3_writel(i32 %131, i32 %132, i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = call i64 @DWC3_DEPCMD_CMD(i32 %137)
  %139 = load i64, i64* @DWC3_DEPCMD_UPDATETRANSFER, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %112
  %142 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %143 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @DWC3_DEPCMD_CMDIOC, align 4
  %147 = load i32, i32* @DWC3_DEPCMD_CMDACT, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %5, align 4
  br label %156

152:                                              ; preds = %141, %112
  %153 = load i32, i32* @DWC3_DEPCMD_CMDACT, align 4
  %154 = load i32, i32* %5, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %145
  %157 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %158 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @DWC3_DEPCMD, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @dwc3_writel(i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %191, %156
  %164 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %165 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DWC3_DEPCMD, align 4
  %168 = call i32 @dwc3_readl(i32 %166, i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @DWC3_DEPCMD_CMDACT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %190, label %173

173:                                              ; preds = %163
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @DWC3_DEPCMD_STATUS(i32 %174)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  switch i32 %176, label %184 [
    i32 0, label %177
    i32 128, label %178
    i32 129, label %181
  ]

177:                                              ; preds = %173
  store i32 0, i32* %13, align 4
  br label %189

178:                                              ; preds = %173
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %13, align 4
  br label %189

181:                                              ; preds = %173
  %182 = load i32, i32* @EAGAIN, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %13, align 4
  br label %189

184:                                              ; preds = %173
  %185 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %186 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dev_WARN(i32 %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %189

189:                                              ; preds = %184, %181, %178, %177
  br label %195

190:                                              ; preds = %163
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %163, label %195

195:                                              ; preds = %191, %189
  %196 = load i32, i32* %9, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i32, i32* @ETIMEDOUT, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* @ETIMEDOUT, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %12, align 4
  br label %203

203:                                              ; preds = %198, %195
  %204 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load %struct.dwc3_gadget_ep_cmd_params*, %struct.dwc3_gadget_ep_cmd_params** %6, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @trace_dwc3_gadget_ep_cmd(%struct.dwc3_ep* %204, i32 %205, %struct.dwc3_gadget_ep_cmd_params* %206, i32 %207)
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %203
  %212 = load i32, i32* %5, align 4
  %213 = call i64 @DWC3_DEPCMD_CMD(i32 %212)
  %214 = load i64, i64* @DWC3_DEPCMD_STARTTRANSFER, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %218 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %219 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  %222 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %223 = call i32 @dwc3_gadget_ep_get_transfer_index(%struct.dwc3_ep* %222)
  br label %224

224:                                              ; preds = %216, %211, %203
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %224
  %228 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %229 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %232 = call i32 @dwc3_readl(i32 %230, i32 %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %11, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %11, align 4
  %236 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %237 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @dwc3_writel(i32 %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %227, %224
  %243 = load i32, i32* %13, align 4
  ret i32 %243
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i64 @DWC3_DEPCMD_CMD(i32) #1

declare dso_local i32 @__dwc3_gadget_wakeup(%struct.dwc3*) #1

declare dso_local i32 @dev_WARN_ONCE(i32, i32, i8*, i32) #1

declare dso_local i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @DWC3_DEPCMD_STATUS(i32) #1

declare dso_local i32 @dev_WARN(i32, i8*) #1

declare dso_local i32 @trace_dwc3_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*, i32) #1

declare dso_local i32 @dwc3_gadget_ep_get_transfer_index(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
