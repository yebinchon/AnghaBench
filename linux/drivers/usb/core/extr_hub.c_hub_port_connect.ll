; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.usb_device*, i32*, i32, i32*, i64, i32, %struct.usb_port** }
%struct.usb_device = type { i64, i32, i64, i32, i64, i64, %struct.TYPE_4__, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.usb_port = type { i32, %struct.usb_device*, i32 }
%struct.usb_hcd = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@hub_port_connect.unreliable_port = internal global i32 -1, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"connect-debounce failed\0A\00", align 1
@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@SET_CONFIG_TRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"couldn't allocate usb_device\0A\00", align 1
@USB_STATE_POWERED = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@USB_QUIRK_DELAY_INIT = common dso_local global i32 0, align 4
@USB_CLASS_HUB = common dso_local global i64 0, align 8
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"get status %d ?\0A\00", align 1
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"can't connect bus-powered hub to this port\0A\00", align 1
@INDICATOR_AMBER_BLINK = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@highspeed_hubs = common dso_local global i64 0, align 8
@usb_port_peer_mutex = common dso_local global i32 0, align 4
@device_state_lock = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"%dmA power budget left\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"attempt power cycle\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"unable to enumerate USB device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32, i32, i32)* @hub_port_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_port_connect(%struct.usb_hub* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usb_hub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.usb_hcd*, align 8
  %14 = alloca %struct.usb_port*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %20 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %19, i32 0, i32 1
  %21 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  store %struct.usb_device* %21, %struct.usb_device** %12, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.usb_hcd* @bus_to_hcd(i32 %24)
  store %struct.usb_hcd* %25, %struct.usb_hcd** %13, align 8
  %26 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %27 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %26, i32 0, i32 7
  %28 = load %struct.usb_port**, %struct.usb_port*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %28, i64 %31
  %33 = load %struct.usb_port*, %struct.usb_port** %32, align 8
  store %struct.usb_port* %33, %struct.usb_port** %14, align 8
  %34 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %35 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %34, i32 0, i32 1
  %36 = load %struct.usb_device*, %struct.usb_device** %35, align 8
  store %struct.usb_device* %36, %struct.usb_device** %15, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %38 = icmp ne %struct.usb_device* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %4
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @usb_phy_notify_disconnect(i64 %52, i64 %55)
  br label %57

57:                                               ; preds = %49, %44, %39
  %58 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %59 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %58, i32 0, i32 1
  %60 = call i32 @usb_disconnect(%struct.usb_device** %59)
  br label %61

61:                                               ; preds = %57, %4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %74 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @clear_bit(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %80 = load i32, i32* @USB_PORT_STAT_C_ENABLE, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %77
  %85 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @hub_port_debounce_be_stable(%struct.usb_hub* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @hub_port_connect.unreliable_port, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = call i64 (...) @printk_ratelimit()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %104 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %103, i32 0, i32 0
  %105 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %102, %99, %95, %90
  %107 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* @hub_port_connect.unreliable_port, align 4
  br label %114

112:                                              ; preds = %84
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %112, %106
  br label %115

115:                                              ; preds = %114, %77
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %123 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @test_bit(i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %120, %115
  %128 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %129 = call i64 @hub_is_port_power_switchable(%struct.usb_hub* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @port_is_power_on(%struct.usb_hub* %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %138 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %145 = call i32 @set_port_feature(%struct.usb_device* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %136, %131, %127
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %479

152:                                              ; preds = %146
  br label %516

153:                                              ; preds = %120
  %154 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %155 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %154, i32 0, i32 1
  %156 = load %struct.usb_device*, %struct.usb_device** %155, align 8
  %157 = call i64 @hub_is_superspeed(%struct.usb_device* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 150, i32* %11, align 4
  br label %161

160:                                              ; preds = %153
  store i32 100, i32* %11, align 4
  br label %161

161:                                              ; preds = %160, %159
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %162

162:                                              ; preds = %436, %161
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @SET_CONFIG_TRIES, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %439

166:                                              ; preds = %162
  %167 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %168 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %169 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %168, i32 0, i32 10
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call %struct.usb_device* @usb_alloc_dev(%struct.usb_device* %167, i32 %170, i32 %171)
  store %struct.usb_device* %172, %struct.usb_device** %15, align 8
  %173 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %174 = icmp ne %struct.usb_device* %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %166
  %176 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %177 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %176, i32 0, i32 0
  %178 = call i32 @dev_err(i32* %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %479

179:                                              ; preds = %166
  %180 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %181 = load i32, i32* @USB_STATE_POWERED, align 4
  %182 = call i32 @usb_set_device_state(%struct.usb_device* %180, i32 %181)
  %183 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %184 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %187 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %189 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %188, i32 0, i32 9
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, 1
  %192 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %193 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %192, i32 0, i32 9
  store i64 %191, i64* %193, align 8
  %194 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %195 = call i32 @hub_is_wusb(%struct.usb_hub* %194)
  %196 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %197 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %196, i32 0, i32 8
  store i32 %195, i32* %197, align 4
  %198 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %199 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %198, i32 0, i32 1
  %200 = load %struct.usb_device*, %struct.usb_device** %199, align 8
  %201 = call i64 @hub_is_superspeed(%struct.usb_device* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %179
  %204 = load i64, i64* @USB_SPEED_SUPER, align 8
  %205 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %206 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %205, i32 0, i32 0
  store i64 %204, i64* %206, align 8
  br label %211

207:                                              ; preds = %179
  %208 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %209 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %207, %203
  %212 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %213 = call i32 @choose_devnum(%struct.usb_device* %212)
  %214 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %215 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp sle i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load i32, i32* @ENOTCONN, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %9, align 4
  br label %391

221:                                              ; preds = %211
  %222 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %223 = call i32 @usb_lock_port(%struct.usb_port* %222)
  %224 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %225 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @hub_port_init(%struct.usb_hub* %224, %struct.usb_device* %225, i32 %226, i32 %227)
  store i32 %228, i32* %9, align 4
  %229 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %230 = call i32 @usb_unlock_port(%struct.usb_port* %229)
  %231 = load i32, i32* %9, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  br label %391

234:                                              ; preds = %221
  %235 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %236 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @USB_QUIRK_DELAY_INIT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = call i32 @msleep(i32 2000)
  br label %243

243:                                              ; preds = %241, %234
  %244 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %245 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @USB_CLASS_HUB, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %298

250:                                              ; preds = %243
  %251 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %252 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = icmp ule i32 %253, %254
  br i1 %255, label %256, label %298

256:                                              ; preds = %250
  %257 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %258 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %259 = call i32 @usb_get_std_status(%struct.usb_device* %257, i32 %258, i32 0, i32* %16)
  store i32 %259, i32* %9, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %264 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %263, i32 0, i32 7
  %265 = load i32, i32* %9, align 4
  %266 = call i32 @dev_dbg(i32* %264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %265)
  br label %387

267:                                              ; preds = %256
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %270 = shl i32 1, %269
  %271 = and i32 %268, %270
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %297

273:                                              ; preds = %267
  %274 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %275 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %274, i32 0, i32 7
  %276 = call i32 @dev_err(i32* %275, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %277 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %278 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %277, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %273
  %282 = load i32, i32* @INDICATOR_AMBER_BLINK, align 4
  %283 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %284 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %283, i32 0, i32 4
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  store i32 %282, i32* %289, align 4
  %290 = load i32, i32* @system_power_efficient_wq, align 4
  %291 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %292 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %291, i32 0, i32 3
  %293 = call i32 @queue_delayed_work(i32 %290, i32* %292, i32 0)
  br label %294

294:                                              ; preds = %281, %273
  %295 = load i32, i32* @ENOTCONN, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %9, align 4
  br label %387

297:                                              ; preds = %267
  br label %298

298:                                              ; preds = %297, %250, %243
  %299 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %300 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %299, i32 0, i32 6
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @le16_to_cpu(i32 %302)
  %304 = icmp sge i32 %303, 512
  br i1 %304, label %305, label %319

305:                                              ; preds = %298
  %306 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %307 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @USB_SPEED_FULL, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %319

311:                                              ; preds = %305
  %312 = load i64, i64* @highspeed_hubs, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %316 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @check_highspeed(%struct.usb_hub* %315, %struct.usb_device* %316, i32 %317)
  br label %319

319:                                              ; preds = %314, %311, %305, %298
  store i32 0, i32* %9, align 4
  %320 = call i32 @mutex_lock(i32* @usb_port_peer_mutex)
  %321 = call i32 @spin_lock_irq(i32* @device_state_lock)
  %322 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %323 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %319
  %328 = load i32, i32* @ENOTCONN, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %9, align 4
  br label %334

330:                                              ; preds = %319
  %331 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %332 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %333 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %332, i32 0, i32 1
  store %struct.usb_device* %331, %struct.usb_device** %333, align 8
  br label %334

334:                                              ; preds = %330, %327
  %335 = call i32 @spin_unlock_irq(i32* @device_state_lock)
  %336 = call i32 @mutex_unlock(i32* @usb_port_peer_mutex)
  %337 = load i32, i32* %9, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %371, label %339

339:                                              ; preds = %334
  %340 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %341 = call i32 @usb_new_device(%struct.usb_device* %340)
  store i32 %341, i32* %9, align 4
  %342 = load i32, i32* %9, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %339
  %345 = call i32 @mutex_lock(i32* @usb_port_peer_mutex)
  %346 = call i32 @spin_lock_irq(i32* @device_state_lock)
  %347 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %348 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %347, i32 0, i32 1
  store %struct.usb_device* null, %struct.usb_device** %348, align 8
  %349 = call i32 @spin_unlock_irq(i32* @device_state_lock)
  %350 = call i32 @mutex_unlock(i32* @usb_port_peer_mutex)
  br label %370

351:                                              ; preds = %339
  %352 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %353 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %369

356:                                              ; preds = %351
  %357 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %358 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %357, i32 0, i32 5
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %369, label %361

361:                                              ; preds = %356
  %362 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %363 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %366 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @usb_phy_notify_connect(i64 %364, i64 %367)
  br label %369

369:                                              ; preds = %361, %356, %351
  br label %370

370:                                              ; preds = %369, %344
  br label %371

371:                                              ; preds = %370, %334
  %372 = load i32, i32* %9, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %371
  br label %387

375:                                              ; preds = %371
  %376 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %377 = call i32 @hub_power_remaining(%struct.usb_hub* %376)
  store i32 %377, i32* %9, align 4
  %378 = load i32, i32* %9, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %375
  %381 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %382 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %381, i32 0, i32 2
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %9, align 4
  %385 = call i32 @dev_dbg(i32* %383, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %384)
  br label %386

386:                                              ; preds = %380, %375
  br label %516

387:                                              ; preds = %374, %294, %262
  %388 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %389 = load i32, i32* %6, align 4
  %390 = call i32 @hub_port_disable(%struct.usb_hub* %388, i32 %389, i32 1)
  br label %391

391:                                              ; preds = %387, %233, %218
  %392 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %393 = call i32 @usb_ep0_reinit(%struct.usb_device* %392)
  %394 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %395 = call i32 @release_devnum(%struct.usb_device* %394)
  %396 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %397 = call i32 @hub_free_dev(%struct.usb_device* %396)
  %398 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %399 = call i32 @usb_put_dev(%struct.usb_device* %398)
  %400 = load i32, i32* %9, align 4
  %401 = load i32, i32* @ENOTCONN, align 4
  %402 = sub nsw i32 0, %401
  %403 = icmp eq i32 %400, %402
  br i1 %403, label %409, label %404

404:                                              ; preds = %391
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* @ENOTSUPP, align 4
  %407 = sub nsw i32 0, %406
  %408 = icmp eq i32 %405, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %404, %391
  br label %439

410:                                              ; preds = %404
  %411 = load i32, i32* %10, align 4
  %412 = load i32, i32* @SET_CONFIG_TRIES, align 4
  %413 = sdiv i32 %412, 2
  %414 = sub nsw i32 %413, 1
  %415 = icmp eq i32 %411, %414
  br i1 %415, label %416, label %435

416:                                              ; preds = %410
  %417 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %418 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %417, i32 0, i32 0
  %419 = call i32 @dev_info(i32* %418, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %420 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %421 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %422 = load i32, i32* %6, align 4
  %423 = call i32 @usb_hub_set_port_power(%struct.usb_device* %420, %struct.usb_hub* %421, i32 %422, i32 0)
  %424 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %425 = call i32 @hub_power_on_good_delay(%struct.usb_hub* %424)
  %426 = mul nsw i32 2, %425
  %427 = call i32 @msleep(i32 %426)
  %428 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %429 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %430 = load i32, i32* %6, align 4
  %431 = call i32 @usb_hub_set_port_power(%struct.usb_device* %428, %struct.usb_hub* %429, i32 %430, i32 1)
  %432 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %433 = call i32 @hub_power_on_good_delay(%struct.usb_hub* %432)
  %434 = call i32 @msleep(i32 %433)
  br label %435

435:                                              ; preds = %416, %410
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %10, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %10, align 4
  br label %162

439:                                              ; preds = %409, %162
  %440 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %441 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %440, i32 0, i32 1
  %442 = load %struct.usb_device*, %struct.usb_device** %441, align 8
  %443 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %442, i32 0, i32 5
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %463, label %446

446:                                              ; preds = %439
  %447 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %448 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %447, i32 0, i32 0
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 1
  %451 = load i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)** %450, align 8
  %452 = icmp ne i32 (%struct.usb_hcd*, i32)* %451, null
  br i1 %452, label %453, label %463

453:                                              ; preds = %446
  %454 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %455 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %454, i32 0, i32 0
  %456 = load %struct.TYPE_3__*, %struct.TYPE_3__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %456, i32 0, i32 1
  %458 = load i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)** %457, align 8
  %459 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %460 = load i32, i32* %6, align 4
  %461 = call i32 %458(%struct.usb_hcd* %459, i32 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %478, label %463

463:                                              ; preds = %453, %446, %439
  %464 = load i32, i32* %9, align 4
  %465 = load i32, i32* @ENOTCONN, align 4
  %466 = sub nsw i32 0, %465
  %467 = icmp ne i32 %464, %466
  br i1 %467, label %468, label %477

468:                                              ; preds = %463
  %469 = load i32, i32* %9, align 4
  %470 = load i32, i32* @ENODEV, align 4
  %471 = sub nsw i32 0, %470
  %472 = icmp ne i32 %469, %471
  br i1 %472, label %473, label %477

473:                                              ; preds = %468
  %474 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %475 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %474, i32 0, i32 0
  %476 = call i32 @dev_err(i32* %475, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %477

477:                                              ; preds = %473, %468, %463
  br label %478

478:                                              ; preds = %477, %453
  br label %479

479:                                              ; preds = %478, %175, %151
  %480 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %481 = load i32, i32* %6, align 4
  %482 = call i32 @hub_port_disable(%struct.usb_hub* %480, i32 %481, i32 1)
  %483 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %484 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %483, i32 0, i32 0
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 0
  %487 = load i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)** %486, align 8
  %488 = icmp ne i32 (%struct.usb_hcd*, i32)* %487, null
  br i1 %488, label %489, label %516

489:                                              ; preds = %479
  %490 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %491 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %490, i32 0, i32 1
  %492 = load %struct.usb_device*, %struct.usb_device** %491, align 8
  %493 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %492, i32 0, i32 5
  %494 = load i64, i64* %493, align 8
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %516, label %496

496:                                              ; preds = %489
  %497 = load i32, i32* %9, align 4
  %498 = load i32, i32* @ENOTCONN, align 4
  %499 = sub nsw i32 0, %498
  %500 = icmp ne i32 %497, %499
  br i1 %500, label %501, label %515

501:                                              ; preds = %496
  %502 = load i32, i32* %9, align 4
  %503 = load i32, i32* @ENODEV, align 4
  %504 = sub nsw i32 0, %503
  %505 = icmp ne i32 %502, %504
  br i1 %505, label %506, label %515

506:                                              ; preds = %501
  %507 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %508 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %507, i32 0, i32 0
  %509 = load %struct.TYPE_3__*, %struct.TYPE_3__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %509, i32 0, i32 0
  %511 = load i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)** %510, align 8
  %512 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %513 = load i32, i32* %6, align 4
  %514 = call i32 %511(%struct.usb_hcd* %512, i32 %513)
  br label %515

515:                                              ; preds = %506, %501, %496
  br label %516

516:                                              ; preds = %152, %386, %515, %489, %479
  ret void
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @usb_phy_notify_disconnect(i64, i64) #1

declare dso_local i32 @usb_disconnect(%struct.usb_device**) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @hub_port_debounce_be_stable(%struct.usb_hub*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @hub_is_port_power_switchable(%struct.usb_hub*) #1

declare dso_local i32 @port_is_power_on(%struct.usb_hub*, i32) #1

declare dso_local i32 @set_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local i64 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local %struct.usb_device* @usb_alloc_dev(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @hub_is_wusb(%struct.usb_hub*) #1

declare dso_local i32 @choose_devnum(%struct.usb_device*) #1

declare dso_local i32 @usb_lock_port(%struct.usb_port*) #1

declare dso_local i32 @hub_port_init(%struct.usb_hub*, %struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_unlock_port(%struct.usb_port*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_get_std_status(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @check_highspeed(%struct.usb_hub*, %struct.usb_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_new_device(%struct.usb_device*) #1

declare dso_local i32 @usb_phy_notify_connect(i64, i64) #1

declare dso_local i32 @hub_power_remaining(%struct.usb_hub*) #1

declare dso_local i32 @hub_port_disable(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @usb_ep0_reinit(%struct.usb_device*) #1

declare dso_local i32 @release_devnum(%struct.usb_device*) #1

declare dso_local i32 @hub_free_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @usb_hub_set_port_power(%struct.usb_device*, %struct.usb_hub*, i32, i32) #1

declare dso_local i32 @hub_power_on_good_delay(%struct.usb_hub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
