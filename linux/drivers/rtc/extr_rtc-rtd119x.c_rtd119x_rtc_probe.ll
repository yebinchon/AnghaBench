; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rtd119x.c_rtd119x_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rtd119x.c_rtd119x_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rtd119x_rtc = type { i32, i64, i64, i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@RTD_RTCACR = common dso_local global i64 0, align 8
@RTD_RTCACR_RTCPWR = common dso_local global i32 0, align 4
@RTD_RTCMIN = common dso_local global i64 0, align 8
@RTD_RTCHR = common dso_local global i64 0, align 8
@RTD_RTCDATE1 = common dso_local global i64 0, align 8
@RTD_RTCDATE2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@rtd119x_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register rtc device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtd119x_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd119x_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtd119x_rtc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rtd119x_rtc* @devm_kzalloc(%struct.TYPE_7__* %9, i32 32, i32 %10)
  store %struct.rtd119x_rtc* %11, %struct.rtd119x_rtc** %4, align 8
  %12 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %13 = icmp ne %struct.rtd119x_rtc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %151

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.rtd119x_rtc* %19)
  %21 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %22 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %21, i32 0, i32 0
  store i32 2014, i32* %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %5, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = call i64 @devm_ioremap_resource(%struct.TYPE_7__* %27, %struct.resource* %28)
  %30 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %31 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %33 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @IS_ERR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %17
  %38 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %39 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @PTR_ERR(i64 %40)
  store i32 %41, i32* %2, align 4
  br label %151

42:                                               ; preds = %17
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @of_clk_get(i32 %46, i32 0)
  %48 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %49 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %51 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @IS_ERR(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %57 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @PTR_ERR(i64 %58)
  store i32 %59, i32* %2, align 4
  br label %151

60:                                               ; preds = %42
  %61 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %62 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @clk_prepare_enable(i64 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %69 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @clk_put(i64 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %151

73:                                               ; preds = %60
  %74 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %75 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RTD_RTCACR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl_relaxed(i64 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @RTD_RTCACR_RTCPWR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %119, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @RTD_RTCACR_RTCPWR, align 4
  %86 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %87 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RTD_RTCACR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel_relaxed(i32 %85, i64 %90)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @rtd119x_rtc_reset(%struct.TYPE_7__* %93)
  %95 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %96 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RTD_RTCMIN, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel_relaxed(i32 0, i64 %99)
  %101 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %102 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RTD_RTCHR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel_relaxed(i32 0, i64 %105)
  %107 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %108 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RTD_RTCDATE1, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 0, i64 %111)
  %113 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %114 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @RTD_RTCDATE2, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel_relaxed(i32 0, i64 %117)
  br label %119

119:                                              ; preds = %84, %73
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @rtd119x_rtc_set_enabled(%struct.TYPE_7__* %121, i32 1)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* @THIS_MODULE, align 4
  %126 = call i64 @devm_rtc_device_register(%struct.TYPE_7__* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* @rtd119x_rtc_ops, i32 %125)
  %127 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %128 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %130 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @IS_ERR(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %119
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @dev_err(%struct.TYPE_7__* %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %138 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %139 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @clk_disable_unprepare(i64 %140)
  %142 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %143 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @clk_put(i64 %144)
  %146 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %4, align 8
  %147 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @PTR_ERR(i64 %148)
  store i32 %149, i32* %2, align 4
  br label %151

150:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %134, %67, %55, %37, %14
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.rtd119x_rtc* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtd119x_rtc*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @of_clk_get(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @rtd119x_rtc_reset(%struct.TYPE_7__*) #1

declare dso_local i32 @rtd119x_rtc_set_enabled(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @devm_rtc_device_register(%struct.TYPE_7__*, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
