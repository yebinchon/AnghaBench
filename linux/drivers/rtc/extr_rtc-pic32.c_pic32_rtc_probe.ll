; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pic32.c_pic32_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pic32.c_pic32_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pic32_rtc_dev = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to find rtc clock source\0A\00", align 1
@pic32_rtcops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@pic32_rtc_alarmirq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"IRQ %d error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pic32_rtc_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pic32_rtc_dev* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.pic32_rtc_dev* %10, %struct.pic32_rtc_dev** %4, align 8
  %11 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %12 = icmp ne %struct.pic32_rtc_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %168

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.pic32_rtc_dev* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i64 @platform_get_irq(%struct.platform_device* %20, i32 0)
  %22 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %168

33:                                               ; preds = %16
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %5, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = call %struct.TYPE_10__* @devm_ioremap_resource(i32* %38, %struct.resource* %39)
  %41 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %41, i32 0, i32 4
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %43, i32 0, i32 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i64 @IS_ERR(%struct.TYPE_10__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %49, i32 0, i32 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.TYPE_10__* %51)
  store i32 %52, i32* %2, align 4
  br label %168

53:                                               ; preds = %33
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call %struct.TYPE_10__* @devm_clk_get(i32* %55, i32* null)
  %57 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %57, i32 0, i32 1
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %58, align 8
  %59 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = call i64 @IS_ERR(%struct.TYPE_10__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %53
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = call i32 @PTR_ERR(%struct.TYPE_10__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %72, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %73, align 8
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %168

75:                                               ; preds = %53
  %76 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %76, i32 0, i32 3
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @clk_prepare_enable(%struct.TYPE_10__* %81)
  %83 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %84 = call i32 @pic32_rtc_enable(%struct.pic32_rtc_dev* %83, i32 1)
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @device_init_wakeup(i32* %86, i32 1)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call %struct.TYPE_10__* @devm_rtc_allocate_device(i32* %89)
  %91 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %91, i32 0, i32 2
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %92, align 8
  %93 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %93, i32 0, i32 2
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = call i64 @IS_ERR(%struct.TYPE_10__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %75
  %99 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.TYPE_10__* %101)
  store i32 %102, i32* %2, align 4
  br label %168

103:                                              ; preds = %75
  %104 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  store i32* @pic32_rtcops, i32** %107, align 8
  %108 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %109 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %109, i32 0, i32 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  store i32 %108, i32* %112, align 8
  %113 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %114 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %115 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %118, i32 0, i32 2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = call i32 @rtc_register_device(%struct.TYPE_10__* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %103
  br label %160

125:                                              ; preds = %103
  %126 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %127 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %126, i32 0, i32 2
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32 128, i32* %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @pic32_rtc_setfreq(i32* %131, i32 1)
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %136 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @pic32_rtc_alarmirq, align 4
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_name(i32* %141)
  %143 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %144 = call i32 @devm_request_irq(i32* %134, i32 %138, i32 %139, i32 0, i32 %142, %struct.pic32_rtc_dev* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %125
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %151 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %152, i32 %153)
  br label %160

155:                                              ; preds = %125
  %156 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %157 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %156, i32 0, i32 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = call i32 @clk_disable(%struct.TYPE_10__* %158)
  store i32 0, i32* %2, align 4
  br label %168

160:                                              ; preds = %147, %124
  %161 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %162 = call i32 @pic32_rtc_enable(%struct.pic32_rtc_dev* %161, i32 0)
  %163 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %4, align 8
  %164 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %163, i32 0, i32 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = call i32 @clk_disable_unprepare(%struct.TYPE_10__* %165)
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %160, %155, %98, %64, %48, %28, %13
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.pic32_rtc_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pic32_rtc_dev*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @pic32_rtc_enable(%struct.pic32_rtc_dev*, i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_10__*) #1

declare dso_local i32 @pic32_rtc_setfreq(i32*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.pic32_rtc_dev*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @clk_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
