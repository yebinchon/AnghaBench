; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-exynos.c_exynos_ehci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-exynos.c_exynos_ehci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.exynos_ehci_hcd = type { i32, i32*, i64 }
%struct.usb_hcd = type { %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ehci_hcd = type { i32 }
%struct.resource = type { i32 }

@exynos_ehci_hc_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to create HCD\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"usbhost\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to get usbhost clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Failed to get IRQ\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to enable USB phy\0A\00", align 1
@EHCI_INSNREG00_ENABLE_DMA_BURST = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to add USB HCD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_ehci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ehci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_ehci_hcd*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.ehci_hcd*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @DMA_BIT_MASK(i32 32)
  %13 = call i32 @dma_coerce_mask_and_coherent(%struct.TYPE_13__* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %2, align 4
  br label %190

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @exynos_setup_vbus_gpio(%struct.TYPE_13__* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_name(%struct.TYPE_13__* %25)
  %27 = call %struct.usb_hcd* @usb_create_hcd(i32* @exynos_ehci_hc_driver, %struct.TYPE_13__* %23, i32 %26)
  store %struct.usb_hcd* %27, %struct.usb_hcd** %5, align 8
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %29 = icmp ne %struct.usb_hcd* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_13__* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %190

36:                                               ; preds = %18
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %38 = call %struct.exynos_ehci_hcd* @to_exynos_ehci(%struct.usb_hcd* %37)
  store %struct.exynos_ehci_hcd* %38, %struct.exynos_ehci_hcd** %4, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %42 = call i32 @exynos_ehci_get_phy(%struct.TYPE_13__* %40, %struct.exynos_ehci_hcd* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %186

46:                                               ; preds = %36
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @devm_clk_get(%struct.TYPE_13__* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %51 = getelementptr inbounds %struct.exynos_ehci_hcd, %struct.exynos_ehci_hcd* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %53 = getelementptr inbounds %struct.exynos_ehci_hcd, %struct.exynos_ehci_hcd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(%struct.TYPE_13__* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %62 = getelementptr inbounds %struct.exynos_ehci_hcd, %struct.exynos_ehci_hcd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %9, align 4
  br label %186

65:                                               ; preds = %46
  %66 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %67 = getelementptr inbounds %struct.exynos_ehci_hcd, %struct.exynos_ehci_hcd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @clk_prepare_enable(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %186

73:                                               ; preds = %65
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load i32, i32* @IORESOURCE_MEM, align 4
  %76 = call %struct.resource* @platform_get_resource(%struct.platform_device* %74, i32 %75, i32 0)
  store %struct.resource* %76, %struct.resource** %7, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.resource*, %struct.resource** %7, align 8
  %80 = call i32 @devm_ioremap_resource(%struct.TYPE_13__* %78, %struct.resource* %79)
  %81 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %82 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %84 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %90 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %9, align 4
  br label %181

93:                                               ; preds = %73
  %94 = load %struct.resource*, %struct.resource** %7, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %98 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.resource*, %struct.resource** %7, align 8
  %100 = call i32 @resource_size(%struct.resource* %99)
  %101 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %102 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = call i32 @platform_get_irq(%struct.platform_device* %103, i32 0)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %93
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @dev_err(%struct.TYPE_13__* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %181

113:                                              ; preds = %93
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @exynos_ehci_phy_enable(%struct.TYPE_13__* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @dev_err(%struct.TYPE_13__* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %181

123:                                              ; preds = %113
  %124 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %125 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %124)
  store %struct.ehci_hcd* %125, %struct.ehci_hcd** %6, align 8
  %126 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %127 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %130 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %136 = getelementptr inbounds %struct.exynos_ehci_hcd, %struct.exynos_ehci_hcd* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  %137 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %138 = getelementptr inbounds %struct.exynos_ehci_hcd, %struct.exynos_ehci_hcd* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %123
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %141, %123
  %146 = load i32, i32* @EHCI_INSNREG00_ENABLE_DMA_BURST, align 4
  %147 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %148 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @EHCI_INSNREG00(i32 %149)
  %151 = call i32 @writel(i32 %146, i32 %150)
  %152 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @IRQF_SHARED, align 4
  %155 = call i32 @usb_add_hcd(%struct.usb_hcd* %152, i32 %153, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %145
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = call i32 @dev_err(%struct.TYPE_13__* %160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %171

162:                                              ; preds = %145
  %163 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %164 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @device_wakeup_enable(i32 %166)
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %170 = call i32 @platform_set_drvdata(%struct.platform_device* %168, %struct.usb_hcd* %169)
  store i32 0, i32* %2, align 4
  br label %190

171:                                              ; preds = %158
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = call i32 @exynos_ehci_phy_disable(%struct.TYPE_13__* %173)
  %175 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %176 = getelementptr inbounds %struct.exynos_ehci_hcd, %struct.exynos_ehci_hcd* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  store i32* %177, i32** %180, align 8
  br label %181

181:                                              ; preds = %171, %119, %107, %88
  %182 = load %struct.exynos_ehci_hcd*, %struct.exynos_ehci_hcd** %4, align 8
  %183 = getelementptr inbounds %struct.exynos_ehci_hcd, %struct.exynos_ehci_hcd* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @clk_disable_unprepare(i32 %184)
  br label %186

186:                                              ; preds = %181, %72, %57, %45
  %187 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %188 = call i32 @usb_put_hcd(%struct.usb_hcd* %187)
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %186, %162, %30, %16
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @exynos_setup_vbus_gpio(%struct.TYPE_13__*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.exynos_ehci_hcd* @to_exynos_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @exynos_ehci_get_phy(%struct.TYPE_13__*, %struct.exynos_ehci_hcd*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @exynos_ehci_phy_enable(%struct.TYPE_13__*) #1

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @EHCI_INSNREG00(i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb_hcd*) #1

declare dso_local i32 @exynos_ehci_phy_disable(%struct.TYPE_13__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
