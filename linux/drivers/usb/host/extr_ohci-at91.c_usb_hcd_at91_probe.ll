; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-at91.c_usb_hcd_at91_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-at91.c_usb_hcd_at91_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.at91_usbh_data = type { i32 }
%struct.ohci_hcd = type { i32, i32 }
%struct.usb_hcd = type { %struct.TYPE_3__, i32, i32, i8* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.at91_usbh_data* }
%struct.ohci_at91_priv = type { i32, i8*, i8*, i8* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"hcd probe: missing irq resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"at91\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ohci_clk\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to get ohci_clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"uhpck\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to get uhpck\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"failed to get hclk\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to find sfr node\0A\00", align 1
@OHCI_CTRL_RWC = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hc_driver*, %struct.platform_device*)* @usb_hcd_at91_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hcd_at91_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.at91_usbh_data*, align 8
  %7 = alloca %struct.ohci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_hcd*, align 8
  %10 = alloca %struct.ohci_at91_priv*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %11, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = call i32 @platform_get_irq(%struct.platform_device* %16, i32 0)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %11, align 8
  %22 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %3, align 4
  br label %164

24:                                               ; preds = %2
  %25 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %26 = load %struct.device*, %struct.device** %11, align 8
  %27 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %25, %struct.device* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.usb_hcd* %27, %struct.usb_hcd** %9, align 8
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %29 = icmp ne %struct.usb_hcd* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %164

33:                                               ; preds = %24
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %35 = call %struct.ohci_at91_priv* @hcd_to_ohci_at91_priv(%struct.usb_hcd* %34)
  store %struct.ohci_at91_priv* %35, %struct.ohci_at91_priv** %10, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %12, align 8
  %39 = load %struct.device*, %struct.device** %11, align 8
  %40 = load %struct.resource*, %struct.resource** %12, align 8
  %41 = call i8* @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %43 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %8, align 4
  br label %160

54:                                               ; preds = %33
  %55 = load %struct.resource*, %struct.resource** %12, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.resource*, %struct.resource** %12, align 8
  %61 = call i32 @resource_size(%struct.resource* %60)
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %63 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.device*, %struct.device** %11, align 8
  %65 = call i8* @devm_clk_get(%struct.device* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %67 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %69 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %54
  %74 = load %struct.device*, %struct.device** %11, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %77 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %8, align 4
  br label %160

80:                                               ; preds = %54
  %81 = load %struct.device*, %struct.device** %11, align 8
  %82 = call i8* @devm_clk_get(%struct.device* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %84 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %86 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load %struct.device*, %struct.device** %11, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %94 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %8, align 4
  br label %160

97:                                               ; preds = %80
  %98 = load %struct.device*, %struct.device** %11, align 8
  %99 = call i8* @devm_clk_get(%struct.device* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %100 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %101 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %103 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = load %struct.device*, %struct.device** %11, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %111 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %8, align 4
  br label %160

114:                                              ; preds = %97
  %115 = call i32 (...) @at91_dt_syscon_sfr()
  %116 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %117 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ohci_at91_priv*, %struct.ohci_at91_priv** %10, align 8
  %119 = getelementptr inbounds %struct.ohci_at91_priv, %struct.ohci_at91_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = load %struct.device*, %struct.device** %11, align 8
  %124 = call i32 @dev_dbg(%struct.device* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %127 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %130, align 8
  store %struct.at91_usbh_data* %131, %struct.at91_usbh_data** %6, align 8
  %132 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %133 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %132)
  store %struct.ohci_hcd* %133, %struct.ohci_hcd** %7, align 8
  %134 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %6, align 8
  %135 = getelementptr inbounds %struct.at91_usbh_data, %struct.at91_usbh_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ohci_hcd*, %struct.ohci_hcd** %7, align 8
  %138 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %140 = call i32 @at91_start_hc(%struct.platform_device* %139)
  %141 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %142 = load %struct.ohci_hcd*, %struct.ohci_hcd** %7, align 8
  %143 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @IRQF_SHARED, align 4
  %147 = call i32 @usb_add_hcd(%struct.usb_hcd* %144, i32 %145, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %125
  %151 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %152 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = call i32 @device_wakeup_enable(%struct.TYPE_4__* %154)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %3, align 4
  br label %164

157:                                              ; preds = %125
  %158 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %159 = call i32 @at91_stop_hc(%struct.platform_device* %158)
  br label %160

160:                                              ; preds = %157, %107, %90, %73, %49
  %161 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %162 = call i32 @usb_put_hcd(%struct.usb_hcd* %161)
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %150, %30, %20
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.device*, i8*) #1

declare dso_local %struct.ohci_at91_priv* @hcd_to_ohci_at91_priv(%struct.usb_hcd*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @at91_dt_syscon_sfr(...) #1

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @at91_start_hc(%struct.platform_device*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(%struct.TYPE_4__*) #1

declare dso_local i32 @at91_stop_hc(%struct.platform_device*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
