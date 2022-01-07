; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.xhci_hcd_histb = type { %struct.usb_hcd*, i32, i32, %struct.device* }
%struct.usb_hcd = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_hcd = type { i32, %struct.usb_hcd*, i32, i32, %struct.usb_hcd* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@xhci_histb_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get soft reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"usb2-lpm-disable\00", align 1
@XHCI_HW_LPM_DISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"usb3-lpm-capable\00", align 1
@XHCI_LPM_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"imod-interval-ns\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xhci_histb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_histb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.xhci_hcd_histb*, align 8
  %6 = alloca %struct.hc_driver*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = call i64 (...) @usb_disabled()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %246

21:                                               ; preds = %1
  store %struct.hc_driver* @xhci_histb_hc_driver, %struct.hc_driver** %6, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.xhci_hcd_histb* @devm_kzalloc(%struct.device* %22, i32 24, i32 %23)
  store %struct.xhci_hcd_histb* %24, %struct.xhci_hcd_histb** %5, align 8
  %25 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %26 = icmp ne %struct.xhci_hcd_histb* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %246

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %33 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %32, i32 0, i32 3
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @platform_get_irq(%struct.platform_device* %34, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %2, align 4
  br label %246

40:                                               ; preds = %30
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** %9, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %9, align 8
  %47 = call i32 @devm_ioremap_resource(%struct.device* %45, %struct.resource* %46)
  %48 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %49 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %51 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %57 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %246

60:                                               ; preds = %40
  %61 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %62 = call i32 @xhci_histb_clks_get(%struct.xhci_hcd_histb* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %2, align 4
  br label %246

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @devm_reset_control_get(%struct.device* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %71 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %73 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %81 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %246

84:                                               ; preds = %67
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @pm_runtime_enable(%struct.device* %85)
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 @pm_runtime_get_sync(%struct.device* %87)
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @device_enable_async_suspend(%struct.device* %89)
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @DMA_BIT_MASK(i32 32)
  %93 = call i32 @dma_set_mask_and_coherent(%struct.device* %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %2, align 4
  br label %246

98:                                               ; preds = %84
  %99 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @dev_name(%struct.device* %101)
  %103 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %99, %struct.device* %100, i32 %102)
  store %struct.usb_hcd* %103, %struct.usb_hcd** %7, align 8
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %105 = icmp ne %struct.usb_hcd* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %240

109:                                              ; preds = %98
  %110 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %111 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %114 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load %struct.resource*, %struct.resource** %9, align 8
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %119 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.resource*, %struct.resource** %9, align 8
  %121 = call i32 @resource_size(%struct.resource* %120)
  %122 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %123 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %125 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %126 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %125, i32 0, i32 0
  store %struct.usb_hcd* %124, %struct.usb_hcd** %126, align 8
  %127 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %128 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %132 = call i32 @dev_set_drvdata(i32 %130, %struct.xhci_hcd_histb* %131)
  %133 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %134 = call i32 @xhci_histb_host_enable(%struct.xhci_hcd_histb* %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %109
  br label %237

138:                                              ; preds = %109
  %139 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %140 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %139)
  store %struct.xhci_hcd* %140, %struct.xhci_hcd** %8, align 8
  %141 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %142 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @device_wakeup_enable(i32 %144)
  %146 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %147 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %148 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %147, i32 0, i32 4
  store %struct.usb_hcd* %146, %struct.usb_hcd** %148, align 8
  %149 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = call i32 @dev_name(%struct.device* %151)
  %153 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %154 = call %struct.usb_hcd* @usb_create_shared_hcd(%struct.hc_driver* %149, %struct.device* %150, i32 %152, %struct.usb_hcd* %153)
  %155 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %156 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %155, i32 0, i32 1
  store %struct.usb_hcd* %154, %struct.usb_hcd** %156, align 8
  %157 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %158 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %157, i32 0, i32 1
  %159 = load %struct.usb_hcd*, %struct.usb_hcd** %158, align 8
  %160 = icmp ne %struct.usb_hcd* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %138
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %11, align 4
  br label %234

164:                                              ; preds = %138
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = call i64 @device_property_read_bool(%struct.device* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i32, i32* @XHCI_HW_LPM_DISABLE, align 4
  %170 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %171 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %168, %164
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = call i64 @device_property_read_bool(%struct.device* %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i32, i32* @XHCI_LPM_SUPPORT, align 4
  %180 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %181 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %174
  %185 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %186 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %185, i32 0, i32 0
  store i32 40000, i32* %186, align 8
  %187 = load %struct.device*, %struct.device** %4, align 8
  %188 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %189 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %188, i32 0, i32 0
  %190 = call i32 @device_property_read_u32(%struct.device* %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %189)
  %191 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @IRQF_SHARED, align 4
  %194 = call i32 @usb_add_hcd(%struct.usb_hcd* %191, i32 %192, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %184
  br label %229

198:                                              ; preds = %184
  %199 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %200 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @HCC_MAX_PSA(i32 %201)
  %203 = icmp sge i32 %202, 4
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %206 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %205, i32 0, i32 1
  %207 = load %struct.usb_hcd*, %struct.usb_hcd** %206, align 8
  %208 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %207, i32 0, i32 0
  store i32 1, i32* %208, align 4
  br label %209

209:                                              ; preds = %204, %198
  %210 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %211 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %210, i32 0, i32 1
  %212 = load %struct.usb_hcd*, %struct.usb_hcd** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @IRQF_SHARED, align 4
  %215 = call i32 @usb_add_hcd(%struct.usb_hcd* %212, i32 %213, i32 %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %209
  br label %226

219:                                              ; preds = %209
  %220 = load %struct.device*, %struct.device** %4, align 8
  %221 = call i32 @device_enable_async_suspend(%struct.device* %220)
  %222 = load %struct.device*, %struct.device** %4, align 8
  %223 = call i32 @pm_runtime_put_noidle(%struct.device* %222)
  %224 = load %struct.device*, %struct.device** %4, align 8
  %225 = call i32 @pm_runtime_forbid(%struct.device* %224)
  store i32 0, i32* %2, align 4
  br label %246

226:                                              ; preds = %218
  %227 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %228 = call i32 @usb_remove_hcd(%struct.usb_hcd* %227)
  br label %229

229:                                              ; preds = %226, %197
  %230 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %231 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %230, i32 0, i32 1
  %232 = load %struct.usb_hcd*, %struct.usb_hcd** %231, align 8
  %233 = call i32 @usb_put_hcd(%struct.usb_hcd* %232)
  br label %234

234:                                              ; preds = %229, %161
  %235 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %5, align 8
  %236 = call i32 @xhci_histb_host_disable(%struct.xhci_hcd_histb* %235)
  br label %237

237:                                              ; preds = %234, %137
  %238 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %239 = call i32 @usb_put_hcd(%struct.usb_hcd* %238)
  br label %240

240:                                              ; preds = %237, %106
  %241 = load %struct.device*, %struct.device** %4, align 8
  %242 = call i32 @pm_runtime_put_sync(%struct.device* %241)
  %243 = load %struct.device*, %struct.device** %4, align 8
  %244 = call i32 @pm_runtime_disable(%struct.device* %243)
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %240, %219, %96, %77, %65, %55, %38, %27, %18
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local %struct.xhci_hcd_histb* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @xhci_histb_clks_get(%struct.xhci_hcd_histb*) #1

declare dso_local i32 @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.device*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.xhci_hcd_histb*) #1

declare dso_local i32 @xhci_histb_host_enable(%struct.xhci_hcd_histb*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_shared_hcd(%struct.hc_driver*, %struct.device*, i32, %struct.usb_hcd*) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @HCC_MAX_PSA(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.device*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_histb_host_disable(%struct.xhci_hcd_histb*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
