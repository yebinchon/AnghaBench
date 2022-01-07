; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.s3c_hsudc = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, %struct.TYPE_7__*, i8*, %struct.device* }
%struct.TYPE_6__ = type { i32, i64, i64, i32*, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.s3c24xx_hsudc_platdata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@s3c_hsudc_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to request supplies: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@s3c_hsudc_gadget_ops = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@s3c_hsudc_irq = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"usb-device\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to find usb-device clock source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_hsudc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.s3c_hsudc*, align 8
  %7 = alloca %struct.s3c24xx_hsudc_platdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i8* @dev_get_platdata(%struct.device* %13)
  %15 = bitcast i8* %14 to %struct.s3c24xx_hsudc_platdata*
  store %struct.s3c24xx_hsudc_platdata* %15, %struct.s3c24xx_hsudc_platdata** %7, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.s3c24xx_hsudc_platdata*, %struct.s3c24xx_hsudc_platdata** %7, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_hsudc_platdata, %struct.s3c24xx_hsudc_platdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = add i64 112, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.s3c_hsudc* @devm_kzalloc(%struct.device* %17, i32 %24, i32 %25)
  store %struct.s3c_hsudc* %26, %struct.s3c_hsudc** %6, align 8
  %27 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %28 = icmp ne %struct.s3c_hsudc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %225

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @platform_set_drvdata(%struct.platform_device* %33, %struct.device* %34)
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %38 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %37, i32 0, i32 9
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i8* @dev_get_platdata(%struct.device* %40)
  %42 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %43 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %45 = call i32 @usb_get_phy(i32 %44)
  %46 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %47 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %68, %32
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %51 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %50, i32 0, i32 7
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %52)
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load i32*, i32** @s3c_hsudc_supply_names, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %62 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %61, i32 0, i32 7
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %48

71:                                               ; preds = %48
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %74 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %73, i32 0, i32 7
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %75)
  %77 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %78 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %77, i32 0, i32 7
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i32 @devm_regulator_bulk_get(%struct.device* %72, i32 %76, %struct.TYPE_7__* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %223

87:                                               ; preds = %71
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load i32, i32* @IORESOURCE_MEM, align 4
  %90 = call %struct.resource* @platform_get_resource(%struct.platform_device* %88, i32 %89, i32 0)
  store %struct.resource* %90, %struct.resource** %5, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.resource*, %struct.resource** %5, align 8
  %94 = call i32 @devm_ioremap_resource(%struct.device* %92, %struct.resource* %93)
  %95 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %96 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %98 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @IS_ERR(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %87
  %103 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %104 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PTR_ERR(i32 %105)
  store i32 %106, i32* %8, align 4
  br label %211

107:                                              ; preds = %87
  %108 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %109 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %108, i32 0, i32 5
  %110 = call i32 @spin_lock_init(i32* %109)
  %111 = load i32, i32* @USB_SPEED_HIGH, align 4
  %112 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %113 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  store i32 %111, i32* %114, align 8
  %115 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %116 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 5
  store i32* @s3c_hsudc_gadget_ops, i32** %117, align 8
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = call i32 @dev_name(%struct.device* %118)
  %120 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %121 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  store i32 %119, i32* %122, align 8
  %123 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %124 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %123, i32 0, i32 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %129 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i32* %127, i32** %130, align 8
  %131 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %132 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %135 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %138 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %139 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %142 = call i32 @s3c_hsudc_setup_ep(%struct.s3c_hsudc* %141)
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = call i32 @platform_get_irq(%struct.platform_device* %143, i32 0)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %107
  br label %211

148:                                              ; preds = %107
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %151 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %155 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @s3c_hsudc_irq, align 4
  %158 = load i32, i32* @driver_name, align 4
  %159 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %160 = call i32 @devm_request_irq(%struct.device* %153, i32 %156, i32 %157, i32 0, i32 %158, %struct.s3c_hsudc* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %148
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %211

166:                                              ; preds = %148
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 @devm_clk_get(%struct.device* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %170 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %171 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %173 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @IS_ERR(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %166
  %178 = load %struct.device*, %struct.device** %4, align 8
  %179 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %178, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %180 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %181 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @PTR_ERR(i32 %182)
  store i32 %183, i32* %8, align 4
  br label %211

184:                                              ; preds = %166
  %185 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %186 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @clk_enable(i32 %187)
  %189 = call i32 (...) @local_irq_disable()
  %190 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %191 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @disable_irq(i32 %192)
  %194 = call i32 (...) @local_irq_enable()
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %198 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %197, i32 0, i32 3
  %199 = call i32 @usb_add_gadget_udc(%struct.device* %196, %struct.TYPE_6__* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %184
  br label %206

203:                                              ; preds = %184
  %204 = load %struct.device*, %struct.device** %4, align 8
  %205 = call i32 @pm_runtime_enable(%struct.device* %204)
  store i32 0, i32* %2, align 4
  br label %225

206:                                              ; preds = %202
  %207 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %208 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @clk_disable(i32 %209)
  br label %211

211:                                              ; preds = %206, %177, %163, %147, %102
  %212 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %213 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @IS_ERR_OR_NULL(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %211
  %218 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %219 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @usb_put_phy(i32 %220)
  br label %222

222:                                              ; preds = %217, %211
  br label %223

223:                                              ; preds = %222, %83
  %224 = load i32, i32* %8, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %203, %29
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i8* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.s3c_hsudc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.device*) #1

declare dso_local i32 @usb_get_phy(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @s3c_hsudc_setup_ep(%struct.s3c_hsudc*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.s3c_hsudc*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @usb_add_gadget_udc(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_put_phy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
