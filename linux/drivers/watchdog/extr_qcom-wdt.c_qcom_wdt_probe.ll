; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_qcom-wdt.c_qcom_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_qcom-wdt.c_qcom_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.qcom_wdt = type { i32, %struct.TYPE_4__, i64*, %struct.clk* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.device*, i32*, i32* }
%struct.clk = type { i32 }
%struct.resource = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unsupported QCOM WDT module\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"cpu-offset\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get input clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to setup clock\0A\00", align 1
@qcom_clk_disable_unprepare = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@qcom_wdt_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"wdt_bark\00", align 1
@qcom_wdt_pt_info = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@qcom_wdt_info = common dso_local global i32 0, align 4
@qcom_wdt_ops = common dso_local global i32 0, align 4
@WDT_STS = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qcom_wdt*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i64* @of_device_get_match_data(%struct.device* %18)
  store i64* %19, i64** %8, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %221

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.qcom_wdt* @devm_kzalloc(%struct.device* %28, i32 72, i32 %29)
  store %struct.qcom_wdt* %30, %struct.qcom_wdt** %5, align 8
  %31 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %32 = icmp ne %struct.qcom_wdt* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %221

36:                                               ; preds = %27
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %6, align 8
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = icmp ne %struct.resource* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %221

45:                                               ; preds = %36
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = call i64 @of_property_read_u32(%struct.device_node* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64* %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i64 0, i64* %9, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.resource*, %struct.resource** %6, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = call %struct.clk* @devm_ioremap_resource(%struct.device* %65, %struct.resource* %66)
  %68 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %69 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %68, i32 0, i32 3
  store %struct.clk* %67, %struct.clk** %69, align 8
  %70 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %71 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %70, i32 0, i32 3
  %72 = load %struct.clk*, %struct.clk** %71, align 8
  %73 = call i64 @IS_ERR(%struct.clk* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %50
  %76 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %77 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %76, i32 0, i32 3
  %78 = load %struct.clk*, %struct.clk** %77, align 8
  %79 = call i32 @PTR_ERR(%struct.clk* %78)
  store i32 %79, i32* %2, align 4
  br label %221

80:                                               ; preds = %50
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call %struct.clk* @devm_clk_get(%struct.device* %81, i32* null)
  store %struct.clk* %82, %struct.clk** %12, align 8
  %83 = load %struct.clk*, %struct.clk** %12, align 8
  %84 = call i64 @IS_ERR(%struct.clk* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.clk*, %struct.clk** %12, align 8
  %90 = call i32 @PTR_ERR(%struct.clk* %89)
  store i32 %90, i32* %2, align 4
  br label %221

91:                                               ; preds = %80
  %92 = load %struct.clk*, %struct.clk** %12, align 8
  %93 = call i32 @clk_prepare_enable(%struct.clk* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %2, align 4
  br label %221

100:                                              ; preds = %91
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load i32, i32* @qcom_clk_disable_unprepare, align 4
  %103 = load %struct.clk*, %struct.clk** %12, align 8
  %104 = call i32 @devm_add_action_or_reset(%struct.device* %101, i32 %102, %struct.clk* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %2, align 4
  br label %221

109:                                              ; preds = %100
  %110 = load %struct.clk*, %struct.clk** %12, align 8
  %111 = call i32 @clk_get_rate(%struct.clk* %110)
  %112 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %113 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %115 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %109
  %119 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %120 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ugt i32 %121, 268435456
  br i1 %122, label %123, label %128

123:                                              ; preds = %118, %109
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %221

128:                                              ; preds = %118
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = call i32 @platform_get_irq(%struct.platform_device* %129, i32 0)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @qcom_wdt_isr, align 4
  %137 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %138 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %139 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %138, i32 0, i32 1
  %140 = call i32 @devm_request_irq(%struct.device* %134, i32 %135, i32 %136, i32 %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %2, align 4
  br label %221

145:                                              ; preds = %133
  %146 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %147 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 7
  store i32* @qcom_wdt_pt_info, i32** %148, align 8
  %149 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %150 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  br label %164

152:                                              ; preds = %128
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @EPROBE_DEFER, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @EPROBE_DEFER, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %221

160:                                              ; preds = %152
  %161 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %162 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 7
  store i32* @qcom_wdt_info, i32** %163, align 8
  br label %164

164:                                              ; preds = %160, %145
  %165 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %166 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  store i32* @qcom_wdt_ops, i32** %167, align 8
  %168 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %169 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  store i32 1, i32* %170, align 4
  %171 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %172 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = udiv i32 268435456, %173
  %175 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %176 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  store i32 %174, i32* %177, align 8
  %178 = load %struct.device*, %struct.device** %4, align 8
  %179 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %180 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  store %struct.device* %178, %struct.device** %181, align 8
  %182 = load i64*, i64** %8, align 8
  %183 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %184 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %183, i32 0, i32 2
  store i64* %182, i64** %184, align 8
  %185 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %186 = load i32, i32* @WDT_STS, align 4
  %187 = call i32 @wdt_addr(%struct.qcom_wdt* %185, i32 %186)
  %188 = call i32 @readl(i32 %187)
  %189 = and i32 %188, 1
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %164
  %192 = load i32, i32* @WDIOF_CARDRESET, align 4
  %193 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %194 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 4
  store i32 %192, i32* %195, align 8
  br label %196

196:                                              ; preds = %191, %164
  %197 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %198 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @min(i32 %200, i32 30)
  %202 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %203 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 3
  store i32 %201, i32* %204, align 4
  %205 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %206 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %205, i32 0, i32 1
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = call i32 @watchdog_init_timeout(%struct.TYPE_4__* %206, i32 0, %struct.device* %207)
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %211 = getelementptr inbounds %struct.qcom_wdt, %struct.qcom_wdt* %210, i32 0, i32 1
  %212 = call i32 @devm_watchdog_register_device(%struct.device* %209, %struct.TYPE_4__* %211)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %196
  %216 = load i32, i32* %11, align 4
  store i32 %216, i32* %2, align 4
  br label %221

217:                                              ; preds = %196
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = load %struct.qcom_wdt*, %struct.qcom_wdt** %5, align 8
  %220 = call i32 @platform_set_drvdata(%struct.platform_device* %218, %struct.qcom_wdt* %219)
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %217, %215, %157, %143, %123, %107, %96, %86, %75, %42, %33, %22
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i64* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.qcom_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @wdt_addr(%struct.qcom_wdt*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_4__*, i32, %struct.device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_wdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
