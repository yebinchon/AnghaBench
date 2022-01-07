; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.lpc24xx_rtc = type { i8*, i8*, i8*, i8* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't get interrupt resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error getting rtc clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"error getting reg clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unable to enable rtc clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"unable to enable reg clock\0A\00", align 1
@LPC24XX_ILR = common dso_local global i32 0, align 4
@LPC24XX_RTCCIF = common dso_local global i32 0, align 4
@LPC24XX_RTCALF = common dso_local global i32 0, align 4
@LPC24XX_CCR = common dso_local global i32 0, align 4
@LPC24XX_CLKEN = common dso_local global i32 0, align 4
@LPC178X_CCALEN = common dso_local global i32 0, align 4
@lpc24xx_rtc_interrupt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"can't request interrupt\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"lpc24xx-rtc\00", align 1
@lpc24xx_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"can't register rtc device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc24xx_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc24xx_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc24xx_rtc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lpc24xx_rtc* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.lpc24xx_rtc* %11, %struct.lpc24xx_rtc** %4, align 8
  %12 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %13 = icmp ne %struct.lpc24xx_rtc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %171

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i8* @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %26 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %28 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %34 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  store i32 %36, i32* %2, align 4
  br label %171

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @platform_get_irq(%struct.platform_device* %38, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %171

47:                                               ; preds = %37
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i8* @devm_clk_get(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %52 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %54 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %63 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %171

66:                                               ; preds = %47
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i8* @devm_clk_get(i32* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %71 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %73 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %82 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %171

85:                                               ; preds = %66
  %86 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %87 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @clk_prepare_enable(i8* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %171

97:                                               ; preds = %85
  %98 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %99 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @clk_prepare_enable(i8* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %165

108:                                              ; preds = %97
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %111 = call i32 @platform_set_drvdata(%struct.platform_device* %109, %struct.lpc24xx_rtc* %110)
  %112 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %113 = load i32, i32* @LPC24XX_ILR, align 4
  %114 = load i32, i32* @LPC24XX_RTCCIF, align 4
  %115 = load i32, i32* @LPC24XX_RTCALF, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %112, i32 %113, i32 %116)
  %118 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %119 = load i32, i32* @LPC24XX_CCR, align 4
  %120 = load i32, i32* @LPC24XX_CLKEN, align 4
  %121 = load i32, i32* @LPC178X_CCALEN, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %118, i32 %119, i32 %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @lpc24xx_rtc_interrupt, align 4
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %132 = call i32 @devm_request_irq(i32* %125, i32 %126, i32 %127, i32 0, i32 %130, %struct.lpc24xx_rtc* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %108
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_warn(i32* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %160

139:                                              ; preds = %108
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* @THIS_MODULE, align 4
  %143 = call i8* @devm_rtc_device_register(i32* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* @lpc24xx_rtc_ops, i32 %142)
  %144 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %145 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %147 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @IS_ERR(i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %139
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = call i32 @dev_err(i32* %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %155 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %156 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @PTR_ERR(i8* %157)
  store i32 %158, i32* %7, align 4
  br label %160

159:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %171

160:                                              ; preds = %151, %135
  %161 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %162 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @clk_disable_unprepare(i8* %163)
  br label %165

165:                                              ; preds = %160, %104
  %166 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %4, align 8
  %167 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @clk_disable_unprepare(i8* %168)
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %165, %159, %92, %77, %58, %42, %32, %14
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.lpc24xx_rtc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc24xx_rtc*) #1

declare dso_local i32 @rtc_writel(%struct.lpc24xx_rtc*, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.lpc24xx_rtc*) #1

declare dso_local i8* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
