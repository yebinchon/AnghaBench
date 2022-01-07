; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ab8500_usb = type { i32, %struct.ab8500*, %struct.TYPE_7__, i32, %struct.TYPE_8__*, i32 }
%struct.ab8500 = type { i32 }
%struct.TYPE_7__ = type { i8*, %struct.usb_otg*, i32, %struct.TYPE_8__* }
%struct.usb_otg = type { i32, i32, %struct.TYPE_7__*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unsupported AB8500 chip rev=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ab8500\00", align 1
@ab8500_usb_set_suspend = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@ab8500_usb_set_host = common dso_local global i32 0, align 4
@ab8500_usb_set_peripheral = common dso_local global i32 0, align 4
@AB8500_USB_FLAG_USE_LINK_STATUS_IRQ = common dso_local global i32 0, align 4
@AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ = common dso_local global i32 0, align 4
@AB8500_USB_FLAG_USE_VBUS_DET_IRQ = common dso_local global i32 0, align 4
@AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE = common dso_local global i32 0, align 4
@ab8500_usb_phy_disable_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"sysclk\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Could not get sysclk.\0A\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Can't register transceiver\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"revision 0x%2x driver initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_usb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ab8500_usb*, align 8
  %5 = alloca %struct.ab8500*, align 8
  %6 = alloca %struct.usb_otg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ab8500* @dev_get_drvdata(i32 %12)
  store %struct.ab8500* %13, %struct.ab8500** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @abx500_get_chip_id(%struct.TYPE_8__* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %18 = call i64 @is_ab8500_1p1_or_earlier(%struct.ab8500* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %230

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kzalloc(%struct.TYPE_8__* %29, i32 72, i32 %30)
  %32 = bitcast i8* %31 to %struct.ab8500_usb*
  store %struct.ab8500_usb* %32, %struct.ab8500_usb** %4, align 8
  %33 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %34 = icmp ne %struct.ab8500_usb* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %230

38:                                               ; preds = %27
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kzalloc(%struct.TYPE_8__* %40, i32 24, i32 %41)
  %43 = bitcast i8* %42 to %struct.usb_otg*
  store %struct.usb_otg* %43, %struct.usb_otg** %6, align 8
  %44 = load %struct.usb_otg*, %struct.usb_otg** %6, align 8
  %45 = icmp ne %struct.usb_otg* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %230

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %53 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %52, i32 0, i32 4
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %55 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %56 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %55, i32 0, i32 1
  store %struct.ab8500* %54, %struct.ab8500** %56, align 8
  %57 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %58 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %57, i32 0, i32 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %61 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %62, align 8
  %63 = load %struct.usb_otg*, %struct.usb_otg** %6, align 8
  %64 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %65 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store %struct.usb_otg* %63, %struct.usb_otg** %66, align 8
  %67 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %68 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %69, align 8
  %70 = load i32, i32* @ab8500_usb_set_suspend, align 4
  %71 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %72 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %75 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %76 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.usb_otg*, %struct.usb_otg** %77, align 8
  %79 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %78, i32 0, i32 3
  store i32 %74, i32* %79, align 8
  %80 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %81 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %80, i32 0, i32 2
  %82 = load %struct.usb_otg*, %struct.usb_otg** %6, align 8
  %83 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %82, i32 0, i32 2
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %83, align 8
  %84 = load i32, i32* @ab8500_usb_set_host, align 4
  %85 = load %struct.usb_otg*, %struct.usb_otg** %6, align 8
  %86 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @ab8500_usb_set_peripheral, align 4
  %88 = load %struct.usb_otg*, %struct.usb_otg** %6, align 8
  %89 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %91 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %90, i32 0, i32 1
  %92 = load %struct.ab8500*, %struct.ab8500** %91, align 8
  %93 = call i64 @is_ab8500(%struct.ab8500* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %49
  %96 = load i32, i32* @AB8500_USB_FLAG_USE_LINK_STATUS_IRQ, align 4
  %97 = load i32, i32* @AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @AB8500_USB_FLAG_USE_VBUS_DET_IRQ, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %104 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %126

107:                                              ; preds = %49
  %108 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %109 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %108, i32 0, i32 1
  %110 = load %struct.ab8500*, %struct.ab8500** %109, align 8
  %111 = call i64 @is_ab8505(%struct.ab8500* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load i32, i32* @AB8500_USB_FLAG_USE_LINK_STATUS_IRQ, align 4
  %115 = load i32, i32* @AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @AB8500_USB_FLAG_USE_VBUS_DET_IRQ, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %122 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %113, %107
  br label %126

126:                                              ; preds = %125, %95
  %127 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %128 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %127, i32 0, i32 1
  %129 = load %struct.ab8500*, %struct.ab8500** %128, align 8
  %130 = call i64 @is_ab8500_2p0_or_earlier(%struct.ab8500* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load i32, i32* @AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %136 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %142 = call i32 @platform_set_drvdata(%struct.platform_device* %140, %struct.ab8500_usb* %141)
  %143 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %144 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %143, i32 0, i32 5
  %145 = load i32, i32* @ab8500_usb_phy_disable_work, align 4
  %146 = call i32 @INIT_WORK(i32* %144, i32 %145)
  %147 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %148 = call i32 @ab8500_usb_regulator_get(%struct.ab8500_usb* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %139
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %230

153:                                              ; preds = %139
  %154 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %155 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %154, i32 0, i32 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = call i32 @devm_clk_get(%struct.TYPE_8__* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %158 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %159 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %161 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @IS_ERR(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %153
  %166 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %167 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %166, i32 0, i32 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %170 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %171 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @PTR_ERR(i32 %172)
  store i32 %173, i32* %2, align 4
  br label %230

174:                                              ; preds = %153
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %177 = call i32 @ab8500_usb_irq_setup(%struct.platform_device* %175, %struct.ab8500_usb* %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %230

182:                                              ; preds = %174
  %183 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %184 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %183, i32 0, i32 2
  %185 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %186 = call i32 @usb_add_phy(%struct.TYPE_7__* %184, i32 %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %182
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %230

194:                                              ; preds = %182
  %195 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %196 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %195, i32 0, i32 1
  %197 = load %struct.ab8500*, %struct.ab8500** %196, align 8
  %198 = call i64 @is_ab8500(%struct.ab8500* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %194
  %201 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %202 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %201, i32 0, i32 1
  %203 = load %struct.ab8500*, %struct.ab8500** %202, align 8
  %204 = call i64 @is_ab8500_2p0_or_earlier(%struct.ab8500* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %200
  %207 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %208 = call i32 @ab8500_usb_set_ab8500_tuning_values(%struct.ab8500_usb* %207)
  br label %219

209:                                              ; preds = %200, %194
  %210 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %211 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %210, i32 0, i32 1
  %212 = load %struct.ab8500*, %struct.ab8500** %211, align 8
  %213 = call i64 @is_ab8505(%struct.ab8500* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %217 = call i32 @ab8500_usb_set_ab8505_tuning_values(%struct.ab8500_usb* %216)
  br label %218

218:                                              ; preds = %215, %209
  br label %219

219:                                              ; preds = %218, %206
  %220 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %221 = call i32 @ab8500_usb_wd_workaround(%struct.ab8500_usb* %220)
  %222 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %223 = call i32 @ab8500_usb_restart_phy(%struct.ab8500_usb* %222)
  %224 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %225 = call i32 @abx500_usb_link_status_update(%struct.ab8500_usb* %224)
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @dev_info(%struct.TYPE_8__* %227, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %228)
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %219, %189, %180, %165, %151, %46, %35, %20
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.ab8500* @dev_get_drvdata(i32) #1

declare dso_local i32 @abx500_get_chip_id(%struct.TYPE_8__*) #1

declare dso_local i64 @is_ab8500_1p1_or_earlier(%struct.ab8500*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @is_ab8500(%struct.ab8500*) #1

declare dso_local i64 @is_ab8505(%struct.ab8500*) #1

declare dso_local i64 @is_ab8500_2p0_or_earlier(%struct.ab8500*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ab8500_usb*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ab8500_usb_regulator_get(%struct.ab8500_usb*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ab8500_usb_irq_setup(%struct.platform_device*, %struct.ab8500_usb*) #1

declare dso_local i32 @usb_add_phy(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ab8500_usb_set_ab8500_tuning_values(%struct.ab8500_usb*) #1

declare dso_local i32 @ab8500_usb_set_ab8505_tuning_values(%struct.ab8500_usb*) #1

declare dso_local i32 @ab8500_usb_wd_workaround(%struct.ab8500_usb*) #1

declare dso_local i32 @ab8500_usb_restart_phy(%struct.ab8500_usb*) #1

declare dso_local i32 @abx500_usb_link_status_update(%struct.ab8500_usb*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
