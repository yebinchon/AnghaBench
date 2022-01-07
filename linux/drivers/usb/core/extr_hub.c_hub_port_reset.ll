; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { %struct.TYPE_6__*, i32*, i32, %struct.usb_port** }
%struct.TYPE_6__ = type { i32 }
%struct.usb_port = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.usb_hcd*, %struct.usb_device*)* }

@.str = private unnamed_addr constant [34 x i8] c"only USB3 hub support warm reset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ehci_cf_port_reset_rwsem = common dso_local global i32 0, align 4
@PORT_RESET_TRIES = common dso_local global i32 0, align 4
@USB_PORT_FEAT_BH_PORT_RESET = common dso_local global i32 0, align 4
@USB_PORT_FEAT_RESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot %sreset (err = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"warm \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOTCONN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"port_wait_reset: err = %d\0A\00", align 1
@USB_PORT_FEAT_C_RESET = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_BH_PORT_RESET = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_PORT_LINK_STATE = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_CONNECTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"hot reset failed, warm reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"not enabled, trying %sreset again...\0A\00", align 1
@HUB_LONG_RESET_TIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Cannot enable. Maybe the USB cable is bad?\0A\00", align 1
@USB_PORT_QUIRK_FAST_ENUM = common dso_local global i32 0, align 4
@USB_QUIRK_HUB_SLOW_RESET = common dso_local global i32 0, align 4
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32, %struct.usb_device*, i32, i32)* @hub_port_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_reset(%struct.usb_hub* %0, i32 %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_port*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hub* %0, %struct.usb_hub** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %20 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %19, i32 0, i32 3
  %21 = load %struct.usb_port**, %struct.usb_port*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %21, i64 %24
  %26 = load %struct.usb_port*, %struct.usb_port** %25, align 8
  store %struct.usb_port* %26, %struct.usb_port** %16, align 8
  %27 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %28 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 @hub_is_superspeed(%struct.TYPE_6__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %37 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %290

42:                                               ; preds = %32
  %43 = call i32 @down_read(i32* @ehci_cf_port_reset_rwsem)
  br label %62

44:                                               ; preds = %5
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @hub_port_status(%struct.usb_hub* %48, i32 %49, i32* %15, i32* %14)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i64 @hub_port_warm_reset_required(%struct.usb_hub* %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %65 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @clear_bit(i32 %63, i32 %66)
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %208, %62
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @PORT_RESET_TRIES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %211

72:                                               ; preds = %68
  %73 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %74 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @USB_PORT_FEAT_BH_PORT_RESET, align 4
  br label %83

81:                                               ; preds = %72
  %82 = load i32, i32* @USB_PORT_FEAT_RESET, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @set_port_feature(%struct.TYPE_6__* %75, i32 %76, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %130

91:                                               ; preds = %83
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.usb_port*, %struct.usb_port** %16, align 8
  %96 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %95, i32 0, i32 1
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %100, i32 %101)
  br label %129

103:                                              ; preds = %91
  %104 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @hub_port_wait_reset(%struct.usb_hub* %104, i32 %105, %struct.usb_device* %106, i32 %107, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %103
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @ENOTCONN, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %124 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %122, %117, %112, %103
  br label %129

129:                                              ; preds = %128, %94
  br label %130

130:                                              ; preds = %129, %90
  %131 = load i32, i32* %13, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @ENOTCONN, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @ENODEV, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %199

143:                                              ; preds = %138, %133, %130
  %144 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %145 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @USB_PORT_FEAT_C_RESET, align 4
  %149 = call i32 @usb_clear_port_feature(%struct.TYPE_6__* %146, i32 %147, i32 %148)
  %150 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %151 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = call i32 @hub_is_superspeed(%struct.TYPE_6__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %143
  br label %215

156:                                              ; preds = %143
  %157 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %158 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @USB_PORT_FEAT_C_BH_PORT_RESET, align 4
  %162 = call i32 @usb_clear_port_feature(%struct.TYPE_6__* %159, i32 %160, i32 %161)
  %163 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %164 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @USB_PORT_FEAT_C_PORT_LINK_STATE, align 4
  %168 = call i32 @usb_clear_port_feature(%struct.TYPE_6__* %165, i32 %166, i32 %167)
  %169 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %170 = icmp ne %struct.usb_device* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %156
  %172 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %173 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %177 = call i32 @usb_clear_port_feature(%struct.TYPE_6__* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %171, %156
  %179 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i64 @hub_port_status(%struct.usb_hub* %179, i32 %180, i32* %15, i32* %14)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %215

184:                                              ; preds = %178
  %185 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %15, align 4
  %188 = call i64 @hub_port_warm_reset_required(%struct.usb_hub* %185, i32 %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %184
  br label %215

191:                                              ; preds = %184
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = load %struct.usb_port*, %struct.usb_port** %16, align 8
  %196 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %195, i32 0, i32 1
  %197 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %196, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %198

198:                                              ; preds = %194, %191
  br label %199

199:                                              ; preds = %198, %138
  %200 = load %struct.usb_port*, %struct.usb_port** %16, align 8
  %201 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %200, i32 0, i32 1
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %206 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %201, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %205)
  %207 = load i32, i32* @HUB_LONG_RESET_TIME, align 4
  store i32 %207, i32* %10, align 4
  br label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %68

211:                                              ; preds = %68
  %212 = load %struct.usb_port*, %struct.usb_port** %16, align 8
  %213 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %212, i32 0, i32 1
  %214 = call i32 (i32*, i8*, ...) @dev_err(i32* %213, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %215

215:                                              ; preds = %211, %190, %183, %155
  %216 = load i32, i32* %13, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %272

218:                                              ; preds = %215
  %219 = load %struct.usb_port*, %struct.usb_port** %16, align 8
  %220 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @USB_PORT_QUIRK_FAST_ENUM, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = call i32 @usleep_range(i32 10000, i32 12000)
  br label %242

227:                                              ; preds = %218
  store i32 50, i32* %17, align 4
  %228 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %229 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @USB_QUIRK_HUB_SLOW_RESET, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %227
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, 100
  store i32 %238, i32* %17, align 4
  br label %239

239:                                              ; preds = %236, %227
  %240 = load i32, i32* %17, align 4
  %241 = call i32 @msleep(i32 %240)
  br label %242

242:                                              ; preds = %239, %225
  %243 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %244 = icmp ne %struct.usb_device* %243, null
  br i1 %244, label %245, label %271

245:                                              ; preds = %242
  %246 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %247 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call %struct.usb_hcd* @bus_to_hcd(i32 %248)
  store %struct.usb_hcd* %249, %struct.usb_hcd** %18, align 8
  %250 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %251 = call i32 @update_devnum(%struct.usb_device* %250, i32 0)
  %252 = load %struct.usb_hcd*, %struct.usb_hcd** %18, align 8
  %253 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %252, i32 0, i32 0
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %255, align 8
  %257 = icmp ne i32 (%struct.usb_hcd*, %struct.usb_device*)* %256, null
  br i1 %257, label %258, label %267

258:                                              ; preds = %245
  %259 = load %struct.usb_hcd*, %struct.usb_hcd** %18, align 8
  %260 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %259, i32 0, i32 0
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %262, align 8
  %264 = load %struct.usb_hcd*, %struct.usb_hcd** %18, align 8
  %265 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %266 = call i32 %263(%struct.usb_hcd* %264, %struct.usb_device* %265)
  br label %267

267:                                              ; preds = %258, %245
  %268 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %269 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %270 = call i32 @usb_set_device_state(%struct.usb_device* %268, i32 %269)
  br label %271

271:                                              ; preds = %267, %242
  br label %280

272:                                              ; preds = %215
  %273 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %274 = icmp ne %struct.usb_device* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %277 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %278 = call i32 @usb_set_device_state(%struct.usb_device* %276, i32 %277)
  br label %279

279:                                              ; preds = %275, %272
  br label %280

280:                                              ; preds = %279, %271
  %281 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %282 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %281, i32 0, i32 0
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = call i32 @hub_is_superspeed(%struct.TYPE_6__* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %280
  %287 = call i32 @up_read(i32* @ehci_cf_port_reset_rwsem)
  br label %288

288:                                              ; preds = %286, %280
  %289 = load i32, i32* %13, align 4
  store i32 %289, i32* %6, align 4
  br label %290

290:                                              ; preds = %288, %35
  %291 = load i32, i32* %6, align 4
  ret i32 %291
}

declare dso_local i32 @hub_is_superspeed(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @hub_port_status(%struct.usb_hub*, i32, i32*, i32*) #1

declare dso_local i64 @hub_port_warm_reset_required(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_port_feature(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @hub_port_wait_reset(%struct.usb_hub*, i32, %struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @usb_clear_port_feature(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @update_devnum(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
