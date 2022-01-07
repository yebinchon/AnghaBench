; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_phy_usb2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_phy_usb2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rcar_gen3_chan = type { i64, i32, i32, %struct.device*, %struct.phy_provider*, %struct.TYPE_2__*, i32, %struct.phy_provider*, i32, %struct.phy_provider* }
%struct.TYPE_2__ = type { %struct.phy_provider*, i32, %struct.rcar_gen3_chan* }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.phy_ops = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"This driver needs device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@rcar_gen3_phy_usb2_work = common dso_local global i32 0, align 4
@rcar_gen3_phy_usb2_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No irq handler (%d)\0A\00", align 1
@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"renesas,no-otg-pins\00", align 1
@rcar_gen3_phy_cable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to register extcon\0A\00", align 1
@NUM_OF_PHYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to create USB2 PHY\0A\00", align 1
@rcar_gen3_int_enable = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@rcar_gen3_phy_usb2_xlate = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register PHY provider\0A\00", align 1
@dev_attr_role = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_gen3_phy_usb2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_phy_usb2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rcar_gen3_chan*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.phy_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %282

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.rcar_gen3_chan* @devm_kzalloc(%struct.device* %26, i32 72, i32 %27)
  store %struct.rcar_gen3_chan* %28, %struct.rcar_gen3_chan** %5, align 8
  %29 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %30 = icmp ne %struct.rcar_gen3_chan* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %282

34:                                               ; preds = %25
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %7, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %38, %struct.resource* %39)
  %41 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %42 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %41, i32 0, i32 9
  store %struct.phy_provider* %40, %struct.phy_provider** %42, align 8
  %43 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %44 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %43, i32 0, i32 9
  %45 = load %struct.phy_provider*, %struct.phy_provider** %44, align 8
  %46 = call i64 @IS_ERR(%struct.phy_provider* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %50 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %49, i32 0, i32 9
  %51 = load %struct.phy_provider*, %struct.phy_provider** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.phy_provider* %51)
  store i32 %52, i32* %2, align 4
  br label %282

53:                                               ; preds = %34
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i32 @platform_get_irq(%struct.platform_device* %54, i32 0)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %60 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %59, i32 0, i32 8
  %61 = load i32, i32* @rcar_gen3_phy_usb2_work, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @rcar_gen3_phy_usb2_irq, align 4
  %66 = load i32, i32* @IRQF_SHARED, align 4
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @dev_name(%struct.device* %67)
  %69 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %70 = call i32 @devm_request_irq(%struct.device* %63, i32 %64, i32 %65, i32 %66, i32 %68, %struct.rcar_gen3_chan* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %58
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %58
  br label %78

78:                                               ; preds = %77, %53
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @rcar_gen3_get_dr_mode(i32 %81)
  %83 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %84 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %86 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %78
  %91 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %92 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %91, i32 0, i32 1
  store i32 1, i32* %92, align 8
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @of_property_read_bool(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %101 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load i32, i32* @rcar_gen3_phy_cable, align 4
  %104 = call %struct.phy_provider* @devm_extcon_dev_allocate(%struct.device* %102, i32 %103)
  %105 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %106 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %105, i32 0, i32 7
  store %struct.phy_provider* %104, %struct.phy_provider** %106, align 8
  %107 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %108 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %107, i32 0, i32 7
  %109 = load %struct.phy_provider*, %struct.phy_provider** %108, align 8
  %110 = call i64 @IS_ERR(%struct.phy_provider* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %90
  %113 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %114 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %113, i32 0, i32 7
  %115 = load %struct.phy_provider*, %struct.phy_provider** %114, align 8
  %116 = call i32 @PTR_ERR(%struct.phy_provider* %115)
  store i32 %116, i32* %2, align 4
  br label %282

117:                                              ; preds = %90
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %120 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %119, i32 0, i32 7
  %121 = load %struct.phy_provider*, %struct.phy_provider** %120, align 8
  %122 = call i32 @devm_extcon_dev_register(%struct.device* %118, %struct.phy_provider* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %2, align 4
  br label %282

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %78
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @pm_runtime_enable(%struct.device* %131)
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call %struct.phy_ops* @of_device_get_match_data(%struct.device* %133)
  store %struct.phy_ops* %134, %struct.phy_ops** %8, align 8
  %135 = load %struct.phy_ops*, %struct.phy_ops** %8, align 8
  %136 = icmp ne %struct.phy_ops* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %282

140:                                              ; preds = %130
  %141 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %142 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %141, i32 0, i32 6
  %143 = call i32 @mutex_init(i32* %142)
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %217, %140
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @NUM_OF_PHYS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %220

148:                                              ; preds = %144
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load %struct.phy_ops*, %struct.phy_ops** %8, align 8
  %151 = call %struct.phy_provider* @devm_phy_create(%struct.device* %149, i32* null, %struct.phy_ops* %150)
  %152 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %153 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %152, i32 0, i32 5
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store %struct.phy_provider* %151, %struct.phy_provider** %158, align 8
  %159 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %160 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %159, i32 0, i32 5
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load %struct.phy_provider*, %struct.phy_provider** %165, align 8
  %167 = call i64 @IS_ERR(%struct.phy_provider* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %148
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %172 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %173 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %172, i32 0, i32 5
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load %struct.phy_provider*, %struct.phy_provider** %178, align 8
  %180 = call i32 @PTR_ERR(%struct.phy_provider* %179)
  store i32 %180, i32* %10, align 4
  br label %278

181:                                              ; preds = %148
  %182 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %183 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %184 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %183, i32 0, i32 5
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  store %struct.rcar_gen3_chan* %182, %struct.rcar_gen3_chan** %189, align 8
  %190 = load i32*, i32** @rcar_gen3_int_enable, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %196 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %195, i32 0, i32 5
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  store i32 %194, i32* %201, align 8
  %202 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %203 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %202, i32 0, i32 5
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load %struct.phy_provider*, %struct.phy_provider** %208, align 8
  %210 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %211 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %210, i32 0, i32 5
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %214
  %216 = call i32 @phy_set_drvdata(%struct.phy_provider* %209, %struct.TYPE_2__* %215)
  br label %217

217:                                              ; preds = %181
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %144

220:                                              ; preds = %144
  %221 = load %struct.device*, %struct.device** %4, align 8
  %222 = call %struct.phy_provider* @devm_regulator_get_optional(%struct.device* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %223 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %224 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %223, i32 0, i32 4
  store %struct.phy_provider* %222, %struct.phy_provider** %224, align 8
  %225 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %226 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %225, i32 0, i32 4
  %227 = load %struct.phy_provider*, %struct.phy_provider** %226, align 8
  %228 = call i64 @IS_ERR(%struct.phy_provider* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %220
  %231 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %232 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %231, i32 0, i32 4
  %233 = load %struct.phy_provider*, %struct.phy_provider** %232, align 8
  %234 = call i32 @PTR_ERR(%struct.phy_provider* %233)
  %235 = load i32, i32* @EPROBE_DEFER, align 4
  %236 = sub nsw i32 0, %235
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %230
  %239 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %240 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %239, i32 0, i32 4
  %241 = load %struct.phy_provider*, %struct.phy_provider** %240, align 8
  %242 = call i32 @PTR_ERR(%struct.phy_provider* %241)
  store i32 %242, i32* %10, align 4
  br label %278

243:                                              ; preds = %230
  %244 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %245 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %244, i32 0, i32 4
  store %struct.phy_provider* null, %struct.phy_provider** %245, align 8
  br label %246

246:                                              ; preds = %243, %220
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %249 = call i32 @platform_set_drvdata(%struct.platform_device* %247, %struct.rcar_gen3_chan* %248)
  %250 = load %struct.device*, %struct.device** %4, align 8
  %251 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %252 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %251, i32 0, i32 3
  store %struct.device* %250, %struct.device** %252, align 8
  %253 = load %struct.device*, %struct.device** %4, align 8
  %254 = load i32, i32* @rcar_gen3_phy_usb2_xlate, align 4
  %255 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %253, i32 %254)
  store %struct.phy_provider* %255, %struct.phy_provider** %6, align 8
  %256 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %257 = call i64 @IS_ERR(%struct.phy_provider* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %246
  %260 = load %struct.device*, %struct.device** %4, align 8
  %261 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %260, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %262 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %263 = call i32 @PTR_ERR(%struct.phy_provider* %262)
  store i32 %263, i32* %10, align 4
  br label %278

264:                                              ; preds = %246
  %265 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %5, align 8
  %266 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %264
  %270 = load %struct.device*, %struct.device** %4, align 8
  %271 = call i32 @device_create_file(%struct.device* %270, i32* @dev_attr_role)
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %269
  br label %278

275:                                              ; preds = %269
  br label %276

276:                                              ; preds = %275, %264
  br label %277

277:                                              ; preds = %276
  store i32 0, i32* %2, align 4
  br label %282

278:                                              ; preds = %274, %259, %238, %169
  %279 = load %struct.device*, %struct.device** %4, align 8
  %280 = call i32 @pm_runtime_disable(%struct.device* %279)
  %281 = load i32, i32* %10, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %278, %277, %137, %125, %112, %48, %31, %20
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.rcar_gen3_chan* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.rcar_gen3_chan*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @rcar_gen3_get_dr_mode(i32) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.phy_provider* @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, %struct.phy_provider*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local %struct.phy_ops* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, %struct.phy_ops*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.TYPE_2__*) #1

declare dso_local %struct.phy_provider* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_gen3_chan*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
