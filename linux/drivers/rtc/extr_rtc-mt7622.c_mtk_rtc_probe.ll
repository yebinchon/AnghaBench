; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.mtk_rtc = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"No clock\0A\00", align 1
@mtk_rtc_alarmirq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Can't request IRQ\0A\00", align 1
@mtk_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_rtc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mtk_rtc* @devm_kzalloc(i32* %8, i32 16, i32 %9)
  store %struct.mtk_rtc* %10, %struct.mtk_rtc** %4, align 8
  %11 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %12 = icmp ne %struct.mtk_rtc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %133

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.mtk_rtc* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i32 @devm_ioremap_resource(i32* %24, %struct.resource* %25)
  %27 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %36 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %133

39:                                               ; preds = %16
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @devm_clk_get(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %55 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %133

58:                                               ; preds = %39
  %59 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clk_prepare_enable(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %133

67:                                               ; preds = %58
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = call i32 @platform_get_irq(%struct.platform_device* %68, i32 0)
  %70 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %71 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %73 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %78 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %6, align 4
  br label %127

80:                                               ; preds = %67
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %84 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @mtk_rtc_alarmirq, align 4
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_name(i32* %88)
  %90 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %91 = call i32 @devm_request_irq(i32* %82, i32 %85, i32 %86, i32 0, i32 %89, %struct.mtk_rtc* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %127

98:                                               ; preds = %80
  %99 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %100 = call i32 @mtk_rtc_hw_init(%struct.mtk_rtc* %99)
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @device_init_wakeup(i32* %102, i32 1)
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @THIS_MODULE, align 4
  %110 = call i32 @devm_rtc_device_register(i32* %105, i32 %108, i32* @mtk_rtc_ops, i32 %109)
  %111 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %112 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %114 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @IS_ERR(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %98
  %119 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %120 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @PTR_ERR(i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %127

126:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %133

127:                                              ; preds = %118, %94, %76
  %128 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %129 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @clk_disable_unprepare(i32 %130)
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %127, %126, %65, %50, %34, %13
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.mtk_rtc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_rtc*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.mtk_rtc*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mtk_rtc_hw_init(%struct.mtk_rtc*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
