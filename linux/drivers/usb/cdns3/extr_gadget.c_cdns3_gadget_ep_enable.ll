; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i64, i64, i32 }
%struct.cdns3_endpoint = type { i32, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_3__, i32, %struct.cdns3_device* }
%struct.TYPE_3__ = type { %struct.usb_endpoint_descriptor* }
%struct.cdns3_device = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@EP_STS_EN_TRBERREN = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"usbss: invalid parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"usbss: missing wMaxPacketSize\0A\00", align 1
@EP_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s is already enabled\0A\00", align 1
@ISO_MAX_INTERVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Driver is limited to %d period\0A\00", align 1
@EP_CMD_EPRST = common dso_local global i32 0, align 4
@EP_CMD_CSTALL = common dso_local global i32 0, align 4
@DEV_VER_V2 = common dso_local global i64 0, align 8
@EP_CFG_ENABLE = common dso_local global i32 0, align 4
@EP_PENDING_REQUEST = common dso_local global i32 0, align 4
@EP_STALLED = common dso_local global i32 0, align 4
@EP_STALL_PENDING = common dso_local global i32 0, align 4
@EP_QUIRK_ISO_OUT_EN = common dso_local global i32 0, align 4
@EP_QUIRK_EXTRA_BUF_EN = common dso_local global i32 0, align 4
@EP_UPDATE_EP_TRBADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @cdns3_gadget_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_gadget_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.cdns3_endpoint*, align 8
  %7 = alloca %struct.cdns3_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %14 = load i32, i32* @EP_STS_EN_TRBERREN, align 4
  store i32 %14, i32* %8, align 4
  store i32 1, i32* %11, align 4
  %15 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %16 = call %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep* %15)
  store %struct.cdns3_endpoint* %16, %struct.cdns3_endpoint** %6, align 8
  %17 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %18 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %17, i32 0, i32 14
  %19 = load %struct.cdns3_device*, %struct.cdns3_device** %18, align 8
  store %struct.cdns3_device* %19, %struct.cdns3_device** %7, align 8
  %20 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %21 = icmp ne %struct.usb_ep* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %24 = icmp ne %struct.usb_endpoint_descriptor* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25, %22, %2
  %32 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %33 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %270

38:                                               ; preds = %25
  %39 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %40 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %45 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %270

50:                                               ; preds = %38
  %51 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %52 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %55 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EP_ENABLED, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %60 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %59, i32 0, i32 13
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @dev_WARN_ONCE(i32 %53, i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %270

65:                                               ; preds = %50
  %66 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %67 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %66, i32 0, i32 1
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %71 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %72 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %70, %struct.usb_endpoint_descriptor** %73, align 8
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %75 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %74)
  %76 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %77 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %79 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %65
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %84 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  %87 = call i32 @BIT(i64 %86)
  br label %89

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %82
  %90 = phi i32 [ %87, %82 ], [ 0, %88 ]
  %91 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %92 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 8
  %93 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %94 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ISO_MAX_INTERVAL, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %89
  %99 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %100 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %106 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ISO_MAX_INTERVAL, align 4
  %109 = call i32 (i32, i8*, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %12, align 4
  br label %264

112:                                              ; preds = %98, %89
  %113 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %114 = call i32 @cdns3_allocate_trb_pool(%struct.cdns3_endpoint* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %264

118:                                              ; preds = %112
  %119 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %120 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %123 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %121, %124
  store i32 %125, i32* %9, align 4
  %126 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @cdns3_select_ep(%struct.cdns3_device* %126, i32 %127)
  %129 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %130 = call i32 @trace_cdns3_gadget_ep_enable(%struct.cdns3_endpoint* %129)
  %131 = load i32, i32* @EP_CMD_EPRST, align 4
  %132 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %133 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = call i32 @writel(i32 %131, i32* %135)
  %137 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %138 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @EP_CMD_CSTALL, align 4
  %144 = load i32, i32* @EP_CMD_EPRST, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i32 @readl_poll_timeout_atomic(i32* %140, i32 %141, i32 %149, i32 1, i32 1000)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %118
  %155 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %156 = call i32 @cdns3_free_trb_pool(%struct.cdns3_endpoint* %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %12, align 4
  br label %264

159:                                              ; preds = %118
  %160 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %161 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32, i32* %9, align 4
  %165 = call i64 @cdns3_ep_addr_to_index(i32 %164)
  %166 = call i32 @BIT(i64 %165)
  %167 = call i32 @cdns3_set_register_bit(i32* %163, i32 %166)
  %168 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %169 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DEV_VER_V2, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %159
  %174 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %175 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @cdns3_wa2_enable_detection(%struct.cdns3_device* %174, %struct.cdns3_endpoint* %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %159
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %181 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %180, i32 0, i32 2
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = call i32 @writel(i32 %179, i32* %183)
  %185 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %186 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %178
  %191 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %192 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  store i32 0, i32* %11, align 4
  br label %196

196:                                              ; preds = %195, %190, %178
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %201 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %200, i32 0, i32 2
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* @EP_CFG_ENABLE, align 4
  %205 = call i32 @cdns3_set_register_bit(i32* %203, i32 %204)
  br label %206

206:                                              ; preds = %199, %196
  %207 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %208 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %209 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %208, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %207, %struct.usb_endpoint_descriptor** %209, align 8
  %210 = load i32, i32* @EP_PENDING_REQUEST, align 4
  %211 = load i32, i32* @EP_STALLED, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @EP_STALL_PENDING, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @EP_QUIRK_ISO_OUT_EN, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @EP_QUIRK_EXTRA_BUF_EN, align 4
  %218 = or i32 %216, %217
  %219 = xor i32 %218, -1
  %220 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %221 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, %219
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* @EP_ENABLED, align 4
  %225 = load i32, i32* @EP_UPDATE_EP_TRBADDR, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %228 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %232 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %231, i32 0, i32 10
  store i64 0, i64* %232, align 8
  %233 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %234 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %233, i32 0, i32 9
  store i64 0, i64* %234, align 8
  %235 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %236 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %235, i32 0, i32 8
  store i64 0, i64* %236, align 8
  %237 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %238 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %237, i32 0, i32 2
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = call i32 @readl(i32* %240)
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @EP_STS_CCS(i32 %242)
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %249 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @EP_STS_CCS(i32 %250)
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %257 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 4
  %258 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %259 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %258, i32 0, i32 6
  %260 = load i64, i64* %259, align 8
  %261 = sub nsw i64 %260, 1
  %262 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %263 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %262, i32 0, i32 7
  store i64 %261, i64* %263, align 8
  br label %264

264:                                              ; preds = %206, %154, %117, %104
  %265 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %266 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %265, i32 0, i32 1
  %267 = load i64, i64* %10, align 8
  %268 = call i32 @spin_unlock_irqrestore(i32* %266, i64 %267)
  %269 = load i32, i32* %12, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %264, %64, %43, %31
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @dev_WARN_ONCE(i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @cdns3_allocate_trb_pool(%struct.cdns3_endpoint*) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @trace_cdns3_gadget_ep_enable(%struct.cdns3_endpoint*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl_poll_timeout_atomic(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cdns3_free_trb_pool(%struct.cdns3_endpoint*) #1

declare dso_local i32 @cdns3_set_register_bit(i32*, i32) #1

declare dso_local i64 @cdns3_ep_addr_to_index(i32) #1

declare dso_local i32 @cdns3_wa2_enable_detection(%struct.cdns3_device*, %struct.cdns3_endpoint*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @EP_STS_CCS(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
