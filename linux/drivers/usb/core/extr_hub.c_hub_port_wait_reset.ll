; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_wait_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_wait_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32, i32, i32 }

@HUB_RESET_TIMEOUT = common dso_local global i32 0, align 4
@HUB_EXT_PORT_STATUS = common dso_local global i32 0, align 4
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@HUB_SHORT_RESET_TIME = common dso_local global i32 0, align 4
@HUB_LONG_RESET_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"not %sreset yet, waiting %dms\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"warm \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_CONNECTION = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_SPEED_WIRELESS = common dso_local global i32 0, align 4
@USB_EXT_PORT_STAT_RX_SPEED_ID = common dso_local global i32 0, align 4
@USB_SPEED_SUPER_PLUS = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32, %struct.usb_device*, i32, i32)* @hub_port_wait_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_wait_reset(%struct.usb_hub* %0, i32 %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %77, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @HUB_RESET_TIMEOUT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @msleep(i32 %22)
  %24 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %25 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @hub_is_superspeedplus(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @HUB_EXT_PORT_STATUS, align 4
  %33 = call i32 @hub_ext_port_status(%struct.usb_hub* %30, i32 %31, i32 %32, i32* %14, i32* %15, i32* %16)
  store i32 %33, i32* %13, align 4
  br label %38

34:                                               ; preds = %21
  %35 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @hub_port_status(%struct.usb_hub* %35, i32 %36, i32* %14, i32* %15)
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %224

43:                                               ; preds = %38
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %81

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @HUB_SHORT_RESET_TIME, align 4
  %57 = mul nsw i32 2, %56
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @HUB_LONG_RESET_TIME, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %63 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %17

81:                                               ; preds = %53, %17
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %224

89:                                               ; preds = %81
  %90 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @hub_port_warm_reset_required(%struct.usb_hub* %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOTCONN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %224

98:                                               ; preds = %89
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOTCONN, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %224

106:                                              ; preds = %98
  %107 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %108 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @hub_is_superspeed(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %119 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %123 = call i32 @usb_clear_port_feature(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %224

126:                                              ; preds = %112, %106
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %224

134:                                              ; preds = %126
  %135 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %136 = icmp ne %struct.usb_device* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %224

138:                                              ; preds = %134
  %139 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %140 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @hub_is_superspeedplus(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %138
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @USB_EXT_PORT_RX_LANES(i32 %145)
  %147 = add nsw i32 %146, 1
  %148 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %149 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @USB_EXT_PORT_TX_LANES(i32 %150)
  %152 = add nsw i32 %151, 1
  %153 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %154 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %160

155:                                              ; preds = %138
  %156 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %157 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  %158 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %159 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %144
  %161 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %162 = call i64 @hub_is_wusb(%struct.usb_hub* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i32, i32* @USB_SPEED_WIRELESS, align 4
  %166 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %167 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  br label %223

168:                                              ; preds = %160
  %169 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %170 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @hub_is_superspeedplus(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %168
  %175 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %176 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @USB_EXT_PORT_STAT_RX_SPEED_ID, align 4
  %180 = and i32 %178, %179
  %181 = call i64 @port_speed_is_ssp(i32 %177, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %174
  %184 = load i32, i32* @USB_SPEED_SUPER_PLUS, align 4
  %185 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %186 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  br label %222

187:                                              ; preds = %174, %168
  %188 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %189 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i64 @hub_is_superspeed(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i32, i32* @USB_SPEED_SUPER, align 4
  %195 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %196 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  br label %221

197:                                              ; preds = %187
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i32, i32* @USB_SPEED_HIGH, align 4
  %204 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %205 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  br label %220

206:                                              ; preds = %197
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i32, i32* @USB_SPEED_LOW, align 4
  %213 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %214 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  br label %219

215:                                              ; preds = %206
  %216 = load i32, i32* @USB_SPEED_FULL, align 4
  %217 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %218 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %215, %211
  br label %220

220:                                              ; preds = %219, %202
  br label %221

221:                                              ; preds = %220, %193
  br label %222

222:                                              ; preds = %221, %183
  br label %223

223:                                              ; preds = %222, %164
  store i32 0, i32* %6, align 4
  br label %224

224:                                              ; preds = %223, %137, %131, %117, %103, %95, %86, %41
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @hub_is_superspeedplus(i32) #1

declare dso_local i32 @hub_ext_port_status(%struct.usb_hub*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hub_port_status(%struct.usb_hub*, i32, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32) #1

declare dso_local i64 @hub_port_warm_reset_required(%struct.usb_hub*, i32, i32) #1

declare dso_local i64 @hub_is_superspeed(i32) #1

declare dso_local i32 @usb_clear_port_feature(i32, i32, i32) #1

declare dso_local i32 @USB_EXT_PORT_RX_LANES(i32) #1

declare dso_local i32 @USB_EXT_PORT_TX_LANES(i32) #1

declare dso_local i64 @hub_is_wusb(%struct.usb_hub*) #1

declare dso_local i64 @port_speed_is_ssp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
