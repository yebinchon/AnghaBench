; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ftrtc010.c_ftrtc010_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ftrtc010.c_ftrtc010_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ftrtc010_rtc = type { %struct.TYPE_6__*, i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PCLK\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"could not get PCLK\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to enable PCLK\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"EXTCLK\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"could not get EXTCLK\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to enable EXTCLK\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ftrtc010_rtc_ops = common dso_local global i32 0, align 4
@FTRTC010_RTC_SECOND = common dso_local global i64 0, align 8
@FTRTC010_RTC_MINUTE = common dso_local global i64 0, align 8
@FTRTC010_RTC_HOUR = common dso_local global i64 0, align 8
@FTRTC010_RTC_DAYS = common dso_local global i64 0, align 8
@U32_MAX = common dso_local global i32 0, align 4
@ftrtc010_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftrtc010_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrtc010_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ftrtc010_rtc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ftrtc010_rtc* @devm_kzalloc(%struct.device* %15, i32 40, i32 %16)
  store %struct.ftrtc010_rtc* %17, %struct.ftrtc010_rtc** %8, align 8
  %18 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %19 = icmp ne %struct.ftrtc010_rtc* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %212

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.ftrtc010_rtc* %29)
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = call i8* @devm_clk_get(%struct.device* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = bitcast i8* %32 to %struct.TYPE_6__*
  %34 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %35 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %34, i32 0, i32 4
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %35, align 8
  %36 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %37 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i64 @IS_ERR(%struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %56

44:                                               ; preds = %27
  %45 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %46 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @clk_prepare_enable(%struct.TYPE_6__* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %9, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %2, align 4
  br label %212

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.device*, %struct.device** %9, align 8
  %58 = call i8* @devm_clk_get(%struct.device* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %59 = bitcast i8* %58 to %struct.TYPE_6__*
  %60 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %61 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %60, i32 0, i32 3
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %63 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i64 @IS_ERR(%struct.TYPE_6__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.device*, %struct.device** %9, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %82

70:                                               ; preds = %56
  %71 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %72 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @clk_prepare_enable(%struct.TYPE_6__* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.device*, %struct.device** %9, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %2, align 4
  br label %212

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load i32, i32* @IORESOURCE_IRQ, align 4
  %85 = call %struct.resource* @platform_get_resource(%struct.platform_device* %83, i32 %84, i32 0)
  store %struct.resource* %85, %struct.resource** %10, align 8
  %86 = load %struct.resource*, %struct.resource** %10, align 8
  %87 = icmp ne %struct.resource* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %212

91:                                               ; preds = %82
  %92 = load %struct.resource*, %struct.resource** %10, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %96 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load i32, i32* @IORESOURCE_MEM, align 4
  %99 = call %struct.resource* @platform_get_resource(%struct.platform_device* %97, i32 %98, i32 0)
  store %struct.resource* %99, %struct.resource** %10, align 8
  %100 = load %struct.resource*, %struct.resource** %10, align 8
  %101 = icmp ne %struct.resource* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %212

105:                                              ; preds = %91
  %106 = load %struct.device*, %struct.device** %9, align 8
  %107 = load %struct.resource*, %struct.resource** %10, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.resource*, %struct.resource** %10, align 8
  %111 = call i32 @resource_size(%struct.resource* %110)
  %112 = call i64 @devm_ioremap(%struct.device* %106, i32 %109, i32 %111)
  %113 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %114 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %116 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %105
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %212

122:                                              ; preds = %105
  %123 = load %struct.device*, %struct.device** %9, align 8
  %124 = call %struct.TYPE_6__* @devm_rtc_allocate_device(%struct.device* %123)
  %125 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %126 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %125, i32 0, i32 0
  store %struct.TYPE_6__* %124, %struct.TYPE_6__** %126, align 8
  %127 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %128 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = call i64 @IS_ERR(%struct.TYPE_6__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %122
  %133 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %134 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = call i32 @PTR_ERR(%struct.TYPE_6__* %135)
  store i32 %136, i32* %2, align 4
  br label %212

137:                                              ; preds = %122
  %138 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %139 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store i32* @ftrtc010_rtc_ops, i32** %141, align 8
  %142 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %143 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @FTRTC010_RTC_SECOND, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @readl(i64 %146)
  store i32 %147, i32* %7, align 4
  %148 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %149 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @FTRTC010_RTC_MINUTE, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @readl(i64 %152)
  store i32 %153, i32* %6, align 4
  %154 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %155 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @FTRTC010_RTC_HOUR, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @readl(i64 %158)
  store i32 %159, i32* %5, align 4
  %160 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %161 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @FTRTC010_RTC_DAYS, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @readl(i64 %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = mul nsw i32 %166, 86400
  %168 = load i32, i32* %5, align 4
  %169 = mul nsw i32 %168, 3600
  %170 = add nsw i32 %167, %169
  %171 = load i32, i32* %6, align 4
  %172 = mul nsw i32 %171, 60
  %173 = add nsw i32 %170, %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %173, %174
  %176 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %177 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %176, i32 0, i32 0
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load i32, i32* @U32_MAX, align 4
  %181 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %182 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %180, %185
  %187 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %188 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %187, i32 0, i32 0
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i32 %186, i32* %190, align 4
  %191 = load %struct.device*, %struct.device** %9, align 8
  %192 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %193 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ftrtc010_rtc_interrupt, align 4
  %196 = load i32, i32* @IRQF_SHARED, align 4
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.device*, %struct.device** %9, align 8
  %201 = call i32 @devm_request_irq(%struct.device* %191, i32 %194, i32 %195, i32 %196, i32 %199, %struct.device* %200)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i64 @unlikely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %137
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %2, align 4
  br label %212

207:                                              ; preds = %137
  %208 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %8, align 8
  %209 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %208, i32 0, i32 0
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = call i32 @rtc_register_device(%struct.TYPE_6__* %210)
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %207, %205, %132, %119, %102, %88, %77, %51, %24
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.ftrtc010_rtc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ftrtc010_rtc*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_6__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.device*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
