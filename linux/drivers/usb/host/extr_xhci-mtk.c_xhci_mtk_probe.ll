; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk.c_xhci_mtk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk.c_xhci_mtk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.xhci_hcd_mtk = type { i32, i8*, i32, i32, i32, i8*, i8*, %struct.device* }
%struct.xhci_hcd = type { i32, %struct.usb_hcd*, i32, %struct.usb_hcd* }
%struct.usb_hcd = type { i32, i32, i32, i8* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@xhci_mtk_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"fail to get vbus\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vusb33\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"fail to get vusb33\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"usb3-lpm-capable\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"mediatek,u3p-dis-msk\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to parse uwk property\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ippc\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"imod-interval-ns\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xhci_mtk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_mtk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.xhci_hcd_mtk*, align 8
  %7 = alloca %struct.hc_driver*, align 8
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.usb_hcd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = call i64 (...) @usb_disabled()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %289

25:                                               ; preds = %1
  store %struct.hc_driver* @xhci_mtk_hc_driver, %struct.hc_driver** %7, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.xhci_hcd_mtk* @devm_kzalloc(%struct.device* %26, i32 56, i32 %27)
  store %struct.xhci_hcd_mtk* %28, %struct.xhci_hcd_mtk** %6, align 8
  %29 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %30 = icmp ne %struct.xhci_hcd_mtk* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %289

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %36, i32 0, i32 7
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i8* @devm_regulator_get(%struct.device* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %51 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %50, i32 0, i32 6
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %2, align 4
  br label %289

54:                                               ; preds = %34
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i8* @devm_regulator_get(%struct.device* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %58 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %60 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %59, i32 0, i32 5
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %68 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %2, align 4
  br label %289

71:                                               ; preds = %54
  %72 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %73 = call i32 @xhci_mtk_clks_get(%struct.xhci_hcd_mtk* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %2, align 4
  br label %289

78:                                               ; preds = %71
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = call i32 @of_property_read_bool(%struct.device_node* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %82 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %85 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %84, i32 0, i32 3
  %86 = call i32 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %85)
  %87 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = call i32 @usb_wakeup_of_property_parse(%struct.xhci_hcd_mtk* %87, %struct.device_node* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %2, align 4
  br label %289

96:                                               ; preds = %78
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @pm_runtime_enable(%struct.device* %97)
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 @pm_runtime_get_sync(%struct.device* %99)
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @device_enable_async_suspend(%struct.device* %101)
  %103 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %104 = call i32 @xhci_mtk_ldos_enable(%struct.xhci_hcd_mtk* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %283

108:                                              ; preds = %96
  %109 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %110 = call i32 @xhci_mtk_clks_enable(%struct.xhci_hcd_mtk* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %280

114:                                              ; preds = %108
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = call i32 @platform_get_irq(%struct.platform_device* %115, i32 0)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %11, align 4
  br label %277

121:                                              ; preds = %114
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i32 @DMA_BIT_MASK(i32 32)
  %124 = call i32 @dma_set_mask_and_coherent(%struct.device* %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %277

128:                                              ; preds = %121
  %129 = load %struct.hc_driver*, %struct.hc_driver** %7, align 8
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @dev_name(%struct.device* %131)
  %133 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %129, %struct.device* %130, i32 %132)
  store %struct.usb_hcd* %133, %struct.usb_hcd** %10, align 8
  %134 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %135 = icmp ne %struct.usb_hcd* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %11, align 4
  br label %277

139:                                              ; preds = %128
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = call i32 @platform_get_drvdata(%struct.platform_device* %140)
  %142 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %143 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %146 = call i32 @platform_set_drvdata(%struct.platform_device* %144, %struct.xhci_hcd_mtk* %145)
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load i32, i32* @IORESOURCE_MEM, align 4
  %149 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %147, i32 %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store %struct.resource* %149, %struct.resource** %9, align 8
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load %struct.resource*, %struct.resource** %9, align 8
  %152 = call i8* @devm_ioremap_resource(%struct.device* %150, %struct.resource* %151)
  %153 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %154 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  %155 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %156 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %155, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @IS_ERR(i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %139
  %161 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %162 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @PTR_ERR(i8* %163)
  store i32 %164, i32* %11, align 4
  br label %274

165:                                              ; preds = %139
  %166 = load %struct.resource*, %struct.resource** %9, align 8
  %167 = getelementptr inbounds %struct.resource, %struct.resource* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %170 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.resource*, %struct.resource** %9, align 8
  %172 = call i32 @resource_size(%struct.resource* %171)
  %173 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %174 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = load i32, i32* @IORESOURCE_MEM, align 4
  %177 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %175, i32 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.resource* %177, %struct.resource** %9, align 8
  %178 = load %struct.resource*, %struct.resource** %9, align 8
  %179 = icmp ne %struct.resource* %178, null
  br i1 %179, label %180, label %199

180:                                              ; preds = %165
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = load %struct.resource*, %struct.resource** %9, align 8
  %183 = call i8* @devm_ioremap_resource(%struct.device* %181, %struct.resource* %182)
  %184 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %185 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %187 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @IS_ERR(i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %180
  %192 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %193 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @PTR_ERR(i8* %194)
  store i32 %195, i32* %11, align 4
  br label %274

196:                                              ; preds = %180
  %197 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %198 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  br label %202

199:                                              ; preds = %165
  %200 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %201 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  br label %202

202:                                              ; preds = %199, %196
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = call i32 @device_init_wakeup(%struct.device* %203, i32 1)
  %205 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %206 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %205)
  store %struct.xhci_hcd* %206, %struct.xhci_hcd** %8, align 8
  %207 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %208 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %209 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %208, i32 0, i32 3
  store %struct.usb_hcd* %207, %struct.usb_hcd** %209, align 8
  %210 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %211 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %210, i32 0, i32 0
  store i32 5000, i32* %211, align 8
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %214 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %213, i32 0, i32 0
  %215 = call i32 @device_property_read_u32(%struct.device* %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %214)
  %216 = load %struct.hc_driver*, %struct.hc_driver** %7, align 8
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = load %struct.device*, %struct.device** %4, align 8
  %219 = call i32 @dev_name(%struct.device* %218)
  %220 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %221 = call %struct.usb_hcd* @usb_create_shared_hcd(%struct.hc_driver* %216, %struct.device* %217, i32 %219, %struct.usb_hcd* %220)
  %222 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %223 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %222, i32 0, i32 1
  store %struct.usb_hcd* %221, %struct.usb_hcd** %223, align 8
  %224 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %225 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %224, i32 0, i32 1
  %226 = load %struct.usb_hcd*, %struct.usb_hcd** %225, align 8
  %227 = icmp ne %struct.usb_hcd* %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %202
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %11, align 4
  br label %271

231:                                              ; preds = %202
  %232 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @IRQF_SHARED, align 4
  %235 = call i32 @usb_add_hcd(%struct.usb_hcd* %232, i32 %233, i32 %234)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %264

239:                                              ; preds = %231
  %240 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %241 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @HCC_MAX_PSA(i32 %242)
  %244 = icmp sge i32 %243, 4
  br i1 %244, label %245, label %250

245:                                              ; preds = %239
  %246 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %247 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %246, i32 0, i32 1
  %248 = load %struct.usb_hcd*, %struct.usb_hcd** %247, align 8
  %249 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  br label %250

250:                                              ; preds = %245, %239
  %251 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %252 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %251, i32 0, i32 1
  %253 = load %struct.usb_hcd*, %struct.usb_hcd** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* @IRQF_SHARED, align 4
  %256 = call i32 @usb_add_hcd(%struct.usb_hcd* %253, i32 %254, i32 %255)
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %250
  br label %261

260:                                              ; preds = %250
  store i32 0, i32* %2, align 4
  br label %289

261:                                              ; preds = %259
  %262 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %263 = call i32 @usb_remove_hcd(%struct.usb_hcd* %262)
  br label %264

264:                                              ; preds = %261, %238
  %265 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %266 = call i32 @xhci_mtk_sch_exit(%struct.xhci_hcd_mtk* %265)
  %267 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %268 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %267, i32 0, i32 1
  %269 = load %struct.usb_hcd*, %struct.usb_hcd** %268, align 8
  %270 = call i32 @usb_put_hcd(%struct.usb_hcd* %269)
  br label %271

271:                                              ; preds = %264, %228
  %272 = load %struct.device*, %struct.device** %4, align 8
  %273 = call i32 @device_init_wakeup(%struct.device* %272, i32 0)
  br label %274

274:                                              ; preds = %271, %191, %160
  %275 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %276 = call i32 @usb_put_hcd(%struct.usb_hcd* %275)
  br label %277

277:                                              ; preds = %274, %136, %127, %119
  %278 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %279 = call i32 @xhci_mtk_clks_disable(%struct.xhci_hcd_mtk* %278)
  br label %280

280:                                              ; preds = %277, %113
  %281 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %6, align 8
  %282 = call i32 @xhci_mtk_ldos_disable(%struct.xhci_hcd_mtk* %281)
  br label %283

283:                                              ; preds = %280, %107
  %284 = load %struct.device*, %struct.device** %4, align 8
  %285 = call i32 @pm_runtime_put_sync(%struct.device* %284)
  %286 = load %struct.device*, %struct.device** %4, align 8
  %287 = call i32 @pm_runtime_disable(%struct.device* %286)
  %288 = load i32, i32* %11, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %283, %260, %92, %76, %64, %47, %31, %22
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local %struct.xhci_hcd_mtk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @xhci_mtk_clks_get(%struct.xhci_hcd_mtk*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @usb_wakeup_of_property_parse(%struct.xhci_hcd_mtk*, %struct.device_node*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.device*) #1

declare dso_local i32 @xhci_mtk_ldos_enable(%struct.xhci_hcd_mtk*) #1

declare dso_local i32 @xhci_mtk_clks_enable(%struct.xhci_hcd_mtk*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xhci_hcd_mtk*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local %struct.usb_hcd* @usb_create_shared_hcd(%struct.hc_driver*, %struct.device*, i32, %struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @HCC_MAX_PSA(i32) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_mtk_sch_exit(%struct.xhci_hcd_mtk*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_mtk_clks_disable(%struct.xhci_hcd_mtk*) #1

declare dso_local i32 @xhci_mtk_ldos_disable(%struct.xhci_hcd_mtk*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
