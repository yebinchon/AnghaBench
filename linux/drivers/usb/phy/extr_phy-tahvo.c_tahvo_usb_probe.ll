; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_tahvo_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_tahvo_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.retu_dev = type { i32 }
%struct.tahvo_usb = type { i64, i32, i32, %struct.TYPE_11__, i32, i32, i32, %struct.platform_device* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TAHVO_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"usb_l4_ick\00", align 1
@TAHVO_REG_IDSR = common dso_local global i32 0, align 4
@TAHVO_STAT_VBUS = common dso_local global i32 0, align 4
@tahvo_cable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"could not register extcon device: %d\0A\00", align 1
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@TAHVO_MODE_HOST = common dso_local global i64 0, align 8
@EXTCON_USB = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@tahvo_usb_set_suspend = common dso_local global i32 0, align 4
@tahvo_usb_set_host = common dso_local global i32 0, align 4
@tahvo_usb_set_peripheral = common dso_local global i32 0, align 4
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot register USB transceiver: %d\0A\00", align 1
@tahvo_usb_vbus_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"tahvo-vbus\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"could not register tahvo-vbus irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tahvo_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tahvo_usb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.retu_dev*, align 8
  %5 = alloca %struct.tahvo_usb*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.retu_dev* @dev_get_drvdata(i32 %10)
  store %struct.retu_dev* %11, %struct.retu_dev** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @devm_kzalloc(%struct.TYPE_12__* %13, i32 64, i32 %14)
  %16 = bitcast i8* %15 to %struct.tahvo_usb*
  store %struct.tahvo_usb* %16, %struct.tahvo_usb** %5, align 8
  %17 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %18 = icmp ne %struct.tahvo_usb* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %217

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.TYPE_12__* %24, i32 24, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_10__*
  %28 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %29 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %30, align 8
  %31 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %32 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %217

39:                                               ; preds = %22
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %42 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %41, i32 0, i32 7
  store %struct.platform_device* %40, %struct.platform_device** %42, align 8
  %43 = load i64, i64* @TAHVO_MODE_PERIPHERAL, align 8
  %44 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %45 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %47 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %46, i32 0, i32 6
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @devm_clk_get(%struct.TYPE_12__* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %53 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %55 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %39
  %60 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %61 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_enable(i32 %62)
  br label %64

64:                                               ; preds = %59, %39
  %65 = load %struct.retu_dev*, %struct.retu_dev** %4, align 8
  %66 = load i32, i32* @TAHVO_REG_IDSR, align 4
  %67 = call i32 @retu_read(%struct.retu_dev* %65, i32 %66)
  %68 = load i32, i32* @TAHVO_STAT_VBUS, align 4
  %69 = and i32 %67, %68
  %70 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %71 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* @tahvo_cable, align 4
  %75 = call i32 @devm_extcon_dev_allocate(%struct.TYPE_12__* %73, i32 %74)
  %76 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %77 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %79 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %64
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %88 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %6, align 4
  br label %204

91:                                               ; preds = %64
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %95 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @devm_extcon_dev_register(%struct.TYPE_12__* %93, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %204

105:                                              ; preds = %91
  %106 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %107 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @EXTCON_USB_HOST, align 4
  %110 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %111 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TAHVO_MODE_HOST, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @extcon_set_state_sync(i32 %108, i32 %109, i32 %115)
  %117 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %118 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @EXTCON_USB, align 4
  %121 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %122 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @extcon_set_state_sync(i32 %119, i32 %120, i32 %123)
  %125 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %126 = call i32 @tahvo_usb_power_off(%struct.tahvo_usb* %125)
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %130 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %131, align 8
  %132 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %133 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %134 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  store i32 %132, i32* %137, align 8
  %138 = load i32, i32* @DRIVER_NAME, align 4
  %139 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %140 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @tahvo_usb_set_suspend, align 4
  %143 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %144 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %147 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %146, i32 0, i32 3
  %148 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %149 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %152, align 8
  %153 = load i32, i32* @tahvo_usb_set_host, align 4
  %154 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %155 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  store i32 %153, i32* %158, align 4
  %159 = load i32, i32* @tahvo_usb_set_peripheral, align 4
  %160 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %161 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %159, i32* %164, align 8
  %165 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %166 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %165, i32 0, i32 3
  %167 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %168 = call i32 @usb_add_phy(%struct.TYPE_11__* %166, i32 %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %105
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load i32, i32* %6, align 4
  %175 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %204

176:                                              ; preds = %105
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %180 = call i32 @dev_set_drvdata(%struct.TYPE_12__* %178, %struct.tahvo_usb* %179)
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = call i32 @platform_get_irq(%struct.platform_device* %181, i32 0)
  %183 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %184 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %186 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @tahvo_usb_vbus_interrupt, align 4
  %189 = load i32, i32* @IRQF_ONESHOT, align 4
  %190 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %191 = call i32 @request_threaded_irq(i32 %187, i32* null, i32 %188, i32 %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.tahvo_usb* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %176
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load i32, i32* %6, align 4
  %198 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  br label %200

199:                                              ; preds = %176
  store i32 0, i32* %2, align 4
  br label %217

200:                                              ; preds = %194
  %201 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %202 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %201, i32 0, i32 3
  %203 = call i32 @usb_remove_phy(%struct.TYPE_11__* %202)
  br label %204

204:                                              ; preds = %200, %171, %100, %83
  %205 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %206 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @IS_ERR(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %204
  %211 = load %struct.tahvo_usb*, %struct.tahvo_usb** %5, align 8
  %212 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @clk_disable(i32 %213)
  br label %215

215:                                              ; preds = %210, %204
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %215, %199, %36, %19
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.retu_dev* @dev_get_drvdata(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @retu_read(%struct.retu_dev*, i32) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @tahvo_usb_power_off(%struct.tahvo_usb*) #1

declare dso_local i32 @usb_add_phy(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_12__*, %struct.tahvo_usb*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.tahvo_usb*) #1

declare dso_local i32 @usb_remove_phy(%struct.TYPE_11__*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
