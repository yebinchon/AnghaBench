; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-plat.c_xhci_plat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-plat.c_xhci_plat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device*, i32, i32*, i32 }
%struct.xhci_plat_priv = type { i32 }
%struct.xhci_hcd = type { i32, i32*, i32*, %struct.usb_hcd*, i32, i32, %struct.usb_hcd* }
%struct.usb_hcd = type { i32, i32*, i32, %struct.TYPE_2__, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@xhci_plat_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"usb2-lpm-disable\00", align 1
@XHCI_HW_LPM_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"usb3-lpm-capable\00", align 1
@XHCI_LPM_SUPPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"quirk-broken-port-ped\00", align 1
@XHCI_BROKEN_PORT_PED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"imod-interval-ns\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@pci_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xhci_plat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_plat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xhci_plat_priv*, align 8
  %5 = alloca %struct.hc_driver*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.usb_hcd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xhci_plat_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = call i64 (...) @usb_disabled()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %400

19:                                               ; preds = %1
  store %struct.hc_driver* @xhci_plat_hc_driver, %struct.hc_driver** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %2, align 4
  br label %400

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  store %struct.device* %28, %struct.device** %6, align 8
  br label %29

29:                                               ; preds = %46, %26
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @is_of_node(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @is_acpi_device_node(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  br label %50

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 1
  %49 = load %struct.device*, %struct.device** %48, align 8
  store %struct.device* %49, %struct.device** %6, align 8
  br label %29

50:                                               ; preds = %44, %29
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = icmp ne %struct.device* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  store %struct.device* %55, %struct.device** %6, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 @DMA_BIT_MASK(i32 64)
  %68 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %73

69:                                               ; preds = %56
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @DMA_BIT_MASK(i32 64)
  %72 = call i32 @dma_set_mask_and_coherent(%struct.device* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @DMA_BIT_MASK(i32 32)
  %79 = call i32 @dma_set_mask_and_coherent(%struct.device* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %2, align 4
  br label %400

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @pm_runtime_set_active(%struct.device* %87)
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @pm_runtime_enable(%struct.device* %90)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @pm_runtime_get_noresume(%struct.device* %93)
  %95 = load %struct.hc_driver*, %struct.hc_driver** %5, align 8
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_name(%struct.device* %100)
  %102 = call i8* @__usb_create_hcd(%struct.hc_driver* %95, %struct.device* %96, %struct.device* %98, i32 %101, %struct.usb_hcd* null)
  %103 = bitcast i8* %102 to %struct.usb_hcd*
  store %struct.usb_hcd* %103, %struct.usb_hcd** %10, align 8
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %105 = icmp ne %struct.usb_hcd* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %85
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %392

109:                                              ; preds = %85
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load i32, i32* @IORESOURCE_MEM, align 4
  %112 = call %struct.resource* @platform_get_resource(%struct.platform_device* %110, i32 %111, i32 0)
  store %struct.resource* %112, %struct.resource** %9, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.resource*, %struct.resource** %9, align 8
  %116 = call i32* @devm_ioremap_resource(%struct.device* %114, %struct.resource* %115)
  %117 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %118 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %117, i32 0, i32 6
  store i32* %116, i32** %118, align 8
  %119 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %120 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @IS_ERR(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %109
  %125 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %126 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %125, i32 0, i32 6
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @PTR_ERR(i32* %127)
  store i32 %128, i32* %11, align 4
  br label %389

129:                                              ; preds = %109
  %130 = load %struct.resource*, %struct.resource** %9, align 8
  %131 = getelementptr inbounds %struct.resource, %struct.resource* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %134 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.resource*, %struct.resource** %9, align 8
  %136 = call i32 @resource_size(%struct.resource* %135)
  %137 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %138 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %140 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %139)
  store %struct.xhci_hcd* %140, %struct.xhci_hcd** %8, align 8
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i8* @devm_clk_get_optional(%struct.device* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %146 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %145, i32 0, i32 1
  store i32* %144, i32** %146, align 8
  %147 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %148 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = call i64 @IS_ERR(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %129
  %153 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %154 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @PTR_ERR(i32* %155)
  store i32 %156, i32* %11, align 4
  br label %389

157:                                              ; preds = %129
  %158 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %159 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @clk_prepare_enable(i32* %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %389

165:                                              ; preds = %157
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i8* @devm_clk_get_optional(%struct.device* %167, i8* null)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %171 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %170, i32 0, i32 2
  store i32* %169, i32** %171, align 8
  %172 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %173 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = call i64 @IS_ERR(i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %165
  %178 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %179 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @PTR_ERR(i32* %180)
  store i32 %181, i32* %11, align 4
  br label %384

182:                                              ; preds = %165
  %183 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %184 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @clk_prepare_enable(i32* %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %384

190:                                              ; preds = %182
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call %struct.xhci_plat_priv* @of_device_get_match_data(%struct.device* %192)
  store %struct.xhci_plat_priv* %193, %struct.xhci_plat_priv** %4, align 8
  %194 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %4, align 8
  %195 = icmp ne %struct.xhci_plat_priv* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %190
  %197 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %198 = call %struct.xhci_plat_priv* @hcd_to_xhci_priv(%struct.usb_hcd* %197)
  store %struct.xhci_plat_priv* %198, %struct.xhci_plat_priv** %13, align 8
  %199 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %4, align 8
  %200 = icmp ne %struct.xhci_plat_priv* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %13, align 8
  %203 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %4, align 8
  %204 = bitcast %struct.xhci_plat_priv* %202 to i8*
  %205 = bitcast %struct.xhci_plat_priv* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %204, i8* align 4 %205, i64 4, i1 false)
  br label %206

206:                                              ; preds = %201, %196
  br label %207

207:                                              ; preds = %206, %190
  %208 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %209 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @device_wakeup_enable(i32 %211)
  %213 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %214 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %215 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %214, i32 0, i32 6
  store %struct.usb_hcd* %213, %struct.usb_hcd** %215, align 8
  %216 = load %struct.hc_driver*, %struct.hc_driver** %5, align 8
  %217 = load %struct.device*, %struct.device** %6, align 8
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @dev_name(%struct.device* %221)
  %223 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %224 = call i8* @__usb_create_hcd(%struct.hc_driver* %216, %struct.device* %217, %struct.device* %219, i32 %222, %struct.usb_hcd* %223)
  %225 = bitcast i8* %224 to %struct.usb_hcd*
  %226 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %227 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %226, i32 0, i32 3
  store %struct.usb_hcd* %225, %struct.usb_hcd** %227, align 8
  %228 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %229 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %228, i32 0, i32 3
  %230 = load %struct.usb_hcd*, %struct.usb_hcd** %229, align 8
  %231 = icmp ne %struct.usb_hcd* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %207
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %11, align 4
  br label %379

235:                                              ; preds = %207
  %236 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %237 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %236, i32 0, i32 0
  store i32 40000, i32* %237, align 8
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %238, i32 0, i32 0
  store %struct.device* %239, %struct.device** %7, align 8
  br label %240

240:                                              ; preds = %278, %235
  %241 = load %struct.device*, %struct.device** %7, align 8
  %242 = icmp ne %struct.device* %241, null
  br i1 %242, label %243, label %282

243:                                              ; preds = %240
  %244 = load %struct.device*, %struct.device** %7, align 8
  %245 = call i64 @device_property_read_bool(%struct.device* %244, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = load i32, i32* @XHCI_HW_LPM_DISABLE, align 4
  %249 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %250 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %247, %243
  %254 = load %struct.device*, %struct.device** %7, align 8
  %255 = call i64 @device_property_read_bool(%struct.device* %254, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load i32, i32* @XHCI_LPM_SUPPORT, align 4
  %259 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %260 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %257, %253
  %264 = load %struct.device*, %struct.device** %7, align 8
  %265 = call i64 @device_property_read_bool(%struct.device* %264, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %263
  %268 = load i32, i32* @XHCI_BROKEN_PORT_PED, align 4
  %269 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %270 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %267, %263
  %274 = load %struct.device*, %struct.device** %7, align 8
  %275 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %276 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %275, i32 0, i32 0
  %277 = call i32 @device_property_read_u32(%struct.device* %274, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %276)
  br label %278

278:                                              ; preds = %273
  %279 = load %struct.device*, %struct.device** %7, align 8
  %280 = getelementptr inbounds %struct.device, %struct.device* %279, i32 0, i32 1
  %281 = load %struct.device*, %struct.device** %280, align 8
  store %struct.device* %281, %struct.device** %7, align 8
  br label %240

282:                                              ; preds = %240
  %283 = load %struct.device*, %struct.device** %6, align 8
  %284 = call i32* @devm_usb_get_phy_by_phandle(%struct.device* %283, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %285 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %286 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %285, i32 0, i32 1
  store i32* %284, i32** %286, align 8
  %287 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %288 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = call i64 @IS_ERR(i32* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %282
  %293 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %294 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @PTR_ERR(i32* %295)
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @EPROBE_DEFER, align 4
  %299 = sub nsw i32 0, %298
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %292
  br label %374

302:                                              ; preds = %292
  %303 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %304 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %303, i32 0, i32 1
  store i32* null, i32** %304, align 8
  br label %314

305:                                              ; preds = %282
  %306 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %307 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = call i32 @usb_phy_init(i32* %308)
  store i32 %309, i32* %11, align 4
  %310 = load i32, i32* %11, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %305
  br label %374

313:                                              ; preds = %305
  br label %314

314:                                              ; preds = %313, %302
  %315 = load %struct.device*, %struct.device** %6, align 8
  %316 = getelementptr inbounds %struct.device, %struct.device* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @of_usb_host_tpl_support(i32 %317)
  %319 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %320 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %319, i32 0, i32 2
  store i32 %318, i32* %320, align 8
  %321 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %322 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %325 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %324, i32 0, i32 3
  %326 = load %struct.usb_hcd*, %struct.usb_hcd** %325, align 8
  %327 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %326, i32 0, i32 2
  store i32 %323, i32* %327, align 8
  %328 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %329 = load i32, i32* %12, align 4
  %330 = load i32, i32* @IRQF_SHARED, align 4
  %331 = call i32 @usb_add_hcd(%struct.usb_hcd* %328, i32 %329, i32 %330)
  store i32 %331, i32* %11, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %314
  br label %369

335:                                              ; preds = %314
  %336 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %337 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @HCC_MAX_PSA(i32 %338)
  %340 = icmp sge i32 %339, 4
  br i1 %340, label %341, label %346

341:                                              ; preds = %335
  %342 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %343 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %342, i32 0, i32 3
  %344 = load %struct.usb_hcd*, %struct.usb_hcd** %343, align 8
  %345 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %344, i32 0, i32 0
  store i32 1, i32* %345, align 8
  br label %346

346:                                              ; preds = %341, %335
  %347 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %348 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %347, i32 0, i32 3
  %349 = load %struct.usb_hcd*, %struct.usb_hcd** %348, align 8
  %350 = load i32, i32* %12, align 4
  %351 = load i32, i32* @IRQF_SHARED, align 4
  %352 = call i32 @usb_add_hcd(%struct.usb_hcd* %349, i32 %350, i32 %351)
  store i32 %352, i32* %11, align 4
  %353 = load i32, i32* %11, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %346
  br label %366

356:                                              ; preds = %346
  %357 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %358 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %357, i32 0, i32 0
  %359 = call i32 @device_enable_async_suspend(%struct.device* %358)
  %360 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %361 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %360, i32 0, i32 0
  %362 = call i32 @pm_runtime_put_noidle(%struct.device* %361)
  %363 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %364 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %363, i32 0, i32 0
  %365 = call i32 @pm_runtime_forbid(%struct.device* %364)
  store i32 0, i32* %2, align 4
  br label %400

366:                                              ; preds = %355
  %367 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %368 = call i32 @usb_remove_hcd(%struct.usb_hcd* %367)
  br label %369

369:                                              ; preds = %366, %334
  %370 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %371 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @usb_phy_shutdown(i32* %372)
  br label %374

374:                                              ; preds = %369, %312, %301
  %375 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %376 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %375, i32 0, i32 3
  %377 = load %struct.usb_hcd*, %struct.usb_hcd** %376, align 8
  %378 = call i32 @usb_put_hcd(%struct.usb_hcd* %377)
  br label %379

379:                                              ; preds = %374, %232
  %380 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %381 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %380, i32 0, i32 2
  %382 = load i32*, i32** %381, align 8
  %383 = call i32 @clk_disable_unprepare(i32* %382)
  br label %384

384:                                              ; preds = %379, %189, %177
  %385 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %386 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = call i32 @clk_disable_unprepare(i32* %387)
  br label %389

389:                                              ; preds = %384, %164, %152, %124
  %390 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %391 = call i32 @usb_put_hcd(%struct.usb_hcd* %390)
  br label %392

392:                                              ; preds = %389, %106
  %393 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %394 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %393, i32 0, i32 0
  %395 = call i32 @pm_runtime_put_noidle(%struct.device* %394)
  %396 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %397 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %396, i32 0, i32 0
  %398 = call i32 @pm_runtime_disable(%struct.device* %397)
  %399 = load i32, i32* %11, align 4
  store i32 %399, i32* %2, align 4
  br label %400

400:                                              ; preds = %392, %356, %82, %24, %16
  %401 = load i32, i32* %2, align 4
  ret i32 %401
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @is_of_node(i32) #1

declare dso_local i64 @is_acpi_device_node(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i8* @__usb_create_hcd(%struct.hc_driver*, %struct.device*, %struct.device*, i32, %struct.usb_hcd*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i8* @devm_clk_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local %struct.xhci_plat_priv* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.xhci_plat_priv* @hcd_to_xhci_priv(%struct.usb_hcd*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32* @devm_usb_get_phy_by_phandle(%struct.device*, i8*, i32) #1

declare dso_local i32 @usb_phy_init(i32*) #1

declare dso_local i32 @of_usb_host_tpl_support(i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @HCC_MAX_PSA(i32) #1

declare dso_local i32 @device_enable_async_suspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.device*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_phy_shutdown(i32*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
