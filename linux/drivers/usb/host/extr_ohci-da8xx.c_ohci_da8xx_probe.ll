; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da8xx_ohci_hcd = type { i32*, i32*, i32*, i32*, %struct.usb_hcd* }
%struct.usb_hcd = type { %struct.TYPE_2__, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@ohci_da8xx_hc_driver = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to get clock.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to get phy.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to get regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"oc\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@ohci_da8xx_oc_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"OHCI over-current indicator\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_da8xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_da8xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da8xx_ohci_hcd*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_hcd*, align 8
  %10 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @dev_name(%struct.device* %14)
  %16 = call %struct.usb_hcd* @usb_create_hcd(i32* @ohci_da8xx_hc_driver, %struct.device* %13, i32 %15)
  store %struct.usb_hcd* %16, %struct.usb_hcd** %9, align 8
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %18 = icmp ne %struct.usb_hcd* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %207

22:                                               ; preds = %1
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %24 = call %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd* %23)
  store %struct.da8xx_ohci_hcd* %24, %struct.da8xx_ohci_hcd** %4, align 8
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %26 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %27 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %26, i32 0, i32 4
  store %struct.usb_hcd* %25, %struct.usb_hcd** %27, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32* @devm_clk_get(%struct.device* %28, i32* null)
  %30 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %31 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %33 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %22
  %38 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %39 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @EPROBE_DEFER, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %37
  br label %203

50:                                               ; preds = %22
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32* @devm_phy_get(%struct.device* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %54 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %56 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @IS_ERR(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %62 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @PTR_ERR(i32* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @EPROBE_DEFER, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %60
  br label %203

73:                                               ; preds = %50
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = call i32* @devm_regulator_get_optional(%struct.device* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %77 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %79 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @IS_ERR(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %73
  %84 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %85 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @PTR_ERR(i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %94 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  br label %104

95:                                               ; preds = %83
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @EPROBE_DEFER, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %203

101:                                              ; preds = %95
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %203

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %73
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load i32, i32* @GPIOD_IN, align 4
  %108 = call i32* @devm_gpiod_get_optional(%struct.device* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %110 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %109, i32 0, i32 0
  store i32* %108, i32** %110, align 8
  %111 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %112 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @IS_ERR(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %203

117:                                              ; preds = %105
  %118 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %119 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %145

122:                                              ; preds = %117
  %123 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %124 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @gpiod_to_irq(i32* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %203

130:                                              ; preds = %122
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @ohci_da8xx_oc_thread, align 4
  %134 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %135 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @IRQF_ONESHOT, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %140 = call i32 @devm_request_threaded_irq(%struct.device* %131, i32 %132, i32* null, i32 %133, i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), %struct.da8xx_ohci_hcd* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %130
  br label %203

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %144, %117
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load i32, i32* @IORESOURCE_MEM, align 4
  %148 = call %struct.resource* @platform_get_resource(%struct.platform_device* %146, i32 %147, i32 0)
  store %struct.resource* %148, %struct.resource** %10, align 8
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = load %struct.resource*, %struct.resource** %10, align 8
  %151 = call i32* @devm_ioremap_resource(%struct.device* %149, %struct.resource* %150)
  %152 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %153 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %152, i32 0, i32 3
  store i32* %151, i32** %153, align 8
  %154 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %155 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = call i64 @IS_ERR(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %145
  %160 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %161 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @PTR_ERR(i32* %162)
  store i32 %163, i32* %6, align 4
  br label %203

164:                                              ; preds = %145
  %165 = load %struct.resource*, %struct.resource** %10, align 8
  %166 = getelementptr inbounds %struct.resource, %struct.resource* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %169 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.resource*, %struct.resource** %10, align 8
  %171 = call i32 @resource_size(%struct.resource* %170)
  %172 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %173 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = call i32 @platform_get_irq(%struct.platform_device* %174, i32 0)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %164
  %179 = load i32, i32* @ENODEV, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %6, align 4
  br label %203

181:                                              ; preds = %164
  %182 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @usb_add_hcd(%struct.usb_hcd* %182, i32 %183, i32 0)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %203

188:                                              ; preds = %181
  %189 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %190 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @device_wakeup_enable(i32 %192)
  %194 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %195 = call i32 @ohci_da8xx_register_notify(%struct.usb_hcd* %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  br label %200

199:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %207

200:                                              ; preds = %198
  %201 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %202 = call i32 @usb_remove_hcd(%struct.usb_hcd* %201)
  br label %203

203:                                              ; preds = %200, %187, %178, %159, %143, %129, %116, %101, %100, %72, %49
  %204 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %205 = call i32 @usb_put_hcd(%struct.usb_hcd* %204)
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %203, %199, %19
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32* @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_to_irq(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.da8xx_ohci_hcd*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @ohci_da8xx_register_notify(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
