; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c_dwc2_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c_dwc2_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.dwc2_hsotg = type { i32, i64, i32, i32, i32, i64, %struct.TYPE_11__*, i32, i8*, i32, i32*, i32, i32* }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't set coherent DMA mask: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mapped PA %08lx to VA %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"registering common handler for irq%d\0A\00", align 1
@dwc2_handle_common_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"snps,need-phy-for-wake\00", align 1
@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"snps,reset-phy-on-wake\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Quirk reset-phy-on-wake only supports generic PHYs\0A\00", align 1
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc2_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_driver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dwc2_hsotg* @devm_kzalloc(%struct.TYPE_11__* %8, i32 96, i32 %9)
  store %struct.dwc2_hsotg* %10, %struct.dwc2_hsotg** %4, align 8
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %12 = icmp ne %struct.dwc2_hsotg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %288

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 6
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  store i32* %29, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %16
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @DMA_BIT_MASK(i32 32)
  %37 = call i32 @dma_set_coherent_mask(%struct.TYPE_11__* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %288

46:                                               ; preds = %33
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 0)
  store %struct.resource* %49, %struct.resource** %5, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = call i32* @devm_ioremap_resource(%struct.TYPE_11__* %51, %struct.resource* %52)
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %54, i32 0, i32 12
  store i32* %53, i32** %55, align 8
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %57 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %56, i32 0, i32 12
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %63 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %62, i32 0, i32 12
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @PTR_ERR(i32* %64)
  store i32 %65, i32* %2, align 4
  br label %288

66:                                               ; preds = %46
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.resource*, %struct.resource** %5, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %74 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %73, i32 0, i32 12
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32* %75)
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %78 = call i32 @dwc2_lowlevel_hw_init(%struct.dwc2_hsotg* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %288

83:                                               ; preds = %66
  %84 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %85 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %84, i32 0, i32 11
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 @platform_get_irq(%struct.platform_device* %87, i32 0)
  %89 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %90 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %92 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %97 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %2, align 4
  br label %288

99:                                               ; preds = %83
  %100 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %101 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %100, i32 0, i32 6
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %104 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_11__* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %108 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %107, i32 0, i32 6
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %111 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @dwc2_handle_common_intr, align 4
  %114 = load i32, i32* @IRQF_SHARED, align 4
  %115 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %116 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %115, i32 0, i32 6
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = call i32 @dev_name(%struct.TYPE_11__* %117)
  %119 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %120 = call i32 @devm_request_irq(%struct.TYPE_11__* %109, i32 %112, i32 %113, i32 %114, i32 %118, %struct.dwc2_hsotg* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %99
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %288

125:                                              ; preds = %99
  %126 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %127 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %126, i32 0, i32 6
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = call i32* @devm_regulator_get_optional(%struct.TYPE_11__* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %130 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %131 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %130, i32 0, i32 10
  store i32* %129, i32** %131, align 8
  %132 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %133 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %132, i32 0, i32 10
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @IS_ERR(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %125
  %138 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %139 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %138, i32 0, i32 10
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @PTR_ERR(i32* %140)
  store i32 %141, i32* %6, align 4
  %142 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %143 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %142, i32 0, i32 10
  store i32* null, i32** %143, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp ne i32 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %137
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %288

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %125
  %152 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %153 = call i32 @dwc2_lowlevel_hw_enable(%struct.dwc2_hsotg* %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %288

158:                                              ; preds = %151
  %159 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %160 = call i32 @dwc2_check_core_endianness(%struct.dwc2_hsotg* %159)
  %161 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %162 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %161, i32 0, i32 9
  store i32 %160, i32* %162, align 8
  %163 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %164 = call i32 @dwc2_get_dr_mode(%struct.dwc2_hsotg* %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %284

168:                                              ; preds = %158
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @of_property_read_bool(i32 %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %174 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %175 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %174, i32 0, i32 8
  store i8* %173, i8** %175, align 8
  %176 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %177 = call i32 @dwc2_core_reset(%struct.dwc2_hsotg* %176, i32 0)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %284

181:                                              ; preds = %168
  %182 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %183 = call i32 @dwc2_get_hwparams(%struct.dwc2_hsotg* %182)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %284

187:                                              ; preds = %181
  %188 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %189 = call i32 @dwc2_force_dr_mode(%struct.dwc2_hsotg* %188)
  %190 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %191 = call i32 @dwc2_init_params(%struct.dwc2_hsotg* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %284

195:                                              ; preds = %187
  %196 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %197 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %203 = call i32 @dwc2_gadget_init(%struct.dwc2_hsotg* %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %284

207:                                              ; preds = %201
  %208 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %209 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %208, i32 0, i32 2
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %195
  %211 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %212 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %211, i32 0, i32 8
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = call i32 @device_set_wakeup_capable(%struct.TYPE_11__* %217, i32 1)
  br label %219

219:                                              ; preds = %215, %210
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i8* @of_property_read_bool(i32 %223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %227 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %229 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %219
  %233 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %234 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %232
  %238 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %239 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %238, i32 0, i32 6
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = call i32 @dev_warn(%struct.TYPE_11__* %240, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %242 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %243 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %242, i32 0, i32 3
  store i32 0, i32* %243, align 4
  br label %244

244:                                              ; preds = %237, %232, %219
  %245 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %246 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %267

250:                                              ; preds = %244
  %251 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %252 = call i32 @dwc2_hcd_init(%struct.dwc2_hsotg* %251)
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %257 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %262 = call i32 @dwc2_hsotg_remove(%struct.dwc2_hsotg* %261)
  br label %263

263:                                              ; preds = %260, %255
  br label %284

264:                                              ; preds = %250
  %265 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %266 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %265, i32 0, i32 4
  store i32 1, i32* %266, align 8
  br label %267

267:                                              ; preds = %264, %244
  %268 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %269 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %270 = call i32 @platform_set_drvdata(%struct.platform_device* %268, %struct.dwc2_hsotg* %269)
  %271 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %272 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %271, i32 0, i32 5
  store i64 0, i64* %272, align 8
  %273 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %274 = call i32 @dwc2_debugfs_init(%struct.dwc2_hsotg* %273)
  %275 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %276 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %267
  %281 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %282 = call i32 @dwc2_lowlevel_hw_disable(%struct.dwc2_hsotg* %281)
  br label %283

283:                                              ; preds = %280, %267
  store i32 0, i32* %2, align 4
  br label %288

284:                                              ; preds = %263, %206, %194, %186, %180, %167
  %285 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %286 = call i32 @dwc2_lowlevel_hw_disable(%struct.dwc2_hsotg* %285)
  %287 = load i32, i32* %6, align 4
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %284, %283, %156, %148, %123, %95, %81, %61, %40, %13
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local %struct.dwc2_hsotg* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @dma_set_coherent_mask(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*, i32, ...) #1

declare dso_local i32 @dwc2_lowlevel_hw_init(%struct.dwc2_hsotg*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i32, %struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dwc2_lowlevel_hw_enable(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_check_core_endianness(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_get_dr_mode(%struct.dwc2_hsotg*) #1

declare dso_local i8* @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @dwc2_core_reset(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_get_hwparams(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_force_dr_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_init_params(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_gadget_init(%struct.dwc2_hsotg*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dwc2_hcd_init(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hsotg_remove(%struct.dwc2_hsotg*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_debugfs_init(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_lowlevel_hw_disable(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
