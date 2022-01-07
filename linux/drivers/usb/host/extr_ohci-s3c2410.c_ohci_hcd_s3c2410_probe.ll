; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_ohci_hcd_s3c2410_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-s3c2410.c_ohci_hcd_s3c2410_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.s3c2410_hcd_info = type { i32 }

@ohci_s3c2410_hc_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"s3c24xx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"usb-host\00", align 1
@clk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot get usb-host clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"usb-bus-host\00", align 1
@usb_clk = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot get usb-bus-host clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_hcd_s3c2410_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_s3c2410_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.s3c2410_hcd_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = call %struct.s3c2410_hcd_info* @dev_get_platdata(i32* %8)
  store %struct.s3c2410_hcd_info* %9, %struct.s3c2410_hcd_info** %5, align 8
  %10 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %11 = call i32 @s3c2410_usb_set_power(%struct.s3c2410_hcd_info* %10, i32 1, i32 1)
  %12 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %13 = call i32 @s3c2410_usb_set_power(%struct.s3c2410_hcd_info* %12, i32 2, i32 1)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = call %struct.usb_hcd* @usb_create_hcd(i32* @ohci_s3c2410_hc_driver, i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_hcd* %16, %struct.usb_hcd** %4, align 8
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = icmp eq %struct.usb_hcd* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %111

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = call i32 @resource_size(%struct.TYPE_5__* %34)
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %37 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 1
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = call i32 @devm_ioremap_resource(i32* %39, %struct.TYPE_5__* %43)
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %22
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %6, align 4
  br label %107

57:                                               ; preds = %22
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = call i32 @devm_clk_get(i32* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %60, i32* @clk, align 4
  %61 = load i32, i32* @clk, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 1
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @clk, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %6, align 4
  br label %107

70:                                               ; preds = %57
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 1
  %73 = call i32 @devm_clk_get(i32* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %73, i32* @usb_clk, align 4
  %74 = load i32, i32* @usb_clk, align 4
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @usb_clk, align 4
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %6, align 4
  br label %107

83:                                               ; preds = %70
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %86 = call i32 @s3c2410_start_hc(%struct.platform_device* %84, %struct.usb_hcd* %85)
  %87 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @usb_add_hcd(%struct.usb_hcd* %87, i32 %93, i32 0)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  br label %104

98:                                               ; preds = %83
  %99 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %100 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @device_wakeup_enable(i32 %102)
  store i32 0, i32* %2, align 4
  br label %111

104:                                              ; preds = %97
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = call i32 @s3c2410_stop_hc(%struct.platform_device* %105)
  br label %107

107:                                              ; preds = %104, %77, %64, %52
  %108 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %109 = call i32 @usb_put_hcd(%struct.usb_hcd* %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %98, %19
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.s3c2410_hcd_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @s3c2410_usb_set_power(%struct.s3c2410_hcd_info*, i32, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, i32*, i8*) #1

declare dso_local i32 @resource_size(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @s3c2410_start_hc(%struct.platform_device*, %struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @s3c2410_stop_hc(%struct.platform_device*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
