; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.ac100_dev = type { i32 }
%struct.ac100_rtc_dev = type { i64, %struct.TYPE_10__*, i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ac100_rtc_ops = common dso_local global i32 0, align 4
@ac100_rtc_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@AC100_RTC_CTRL = common dso_local global i32 0, align 4
@AC100_RTC_CTRL_24HOUR = common dso_local global i32 0, align 4
@AC100_ALM_INT_ENA = common dso_local global i32 0, align 4
@AC100_ALM_INT_STA = common dso_local global i32 0, align 4
@AC100_ALM_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ac100_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac100_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ac100_dev*, align 8
  %5 = alloca %struct.ac100_rtc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ac100_dev* @dev_get_drvdata(i32 %10)
  store %struct.ac100_dev* %11, %struct.ac100_dev** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ac100_rtc_dev* @devm_kzalloc(%struct.TYPE_11__* %13, i32 32, i32 %14)
  store %struct.ac100_rtc_dev* %15, %struct.ac100_rtc_dev** %5, align 8
  %16 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %17 = icmp ne %struct.ac100_rtc_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %120

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.ac100_rtc_dev* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %28 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %27, i32 0, i32 3
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %30 = getelementptr inbounds %struct.ac100_dev, %struct.ac100_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %33 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i64 @platform_get_irq(%struct.platform_device* %34, i32 0)
  %36 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %37 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %39 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %44 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %120

47:                                               ; preds = %21
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call %struct.TYPE_10__* @devm_rtc_allocate_device(%struct.TYPE_11__* %49)
  %51 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %52 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %51, i32 0, i32 1
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %52, align 8
  %53 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %54 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = call i64 @IS_ERR(%struct.TYPE_10__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %60 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = call i32 @PTR_ERR(%struct.TYPE_10__* %61)
  store i32 %62, i32* %2, align 4
  br label %120

63:                                               ; preds = %47
  %64 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %65 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32* @ac100_rtc_ops, i32** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %71 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @ac100_rtc_irq, align 4
  %75 = load i32, i32* @IRQF_SHARED, align 4
  %76 = load i32, i32* @IRQF_ONESHOT, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_name(%struct.TYPE_11__* %79)
  %81 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %82 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %69, i32 %73, i32* null, i32 %74, i32 %77, i32 %80, %struct.ac100_rtc_dev* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %63
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_err(%struct.TYPE_11__* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %120

90:                                               ; preds = %63
  %91 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %92 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AC100_RTC_CTRL, align 4
  %95 = load i32, i32* @AC100_RTC_CTRL_24HOUR, align 4
  %96 = load i32, i32* @AC100_RTC_CTRL_24HOUR, align 4
  %97 = call i32 @regmap_write_bits(i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %99 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @AC100_ALM_INT_ENA, align 4
  %102 = call i32 @regmap_write(i32 %100, i32 %101, i32 0)
  %103 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %104 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AC100_ALM_INT_STA, align 4
  %107 = load i32, i32* @AC100_ALM_INT_ENABLE, align 4
  %108 = call i32 @regmap_write(i32 %105, i32 %106, i32 %107)
  %109 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %110 = call i32 @ac100_rtc_register_clks(%struct.ac100_rtc_dev* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %90
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %120

115:                                              ; preds = %90
  %116 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %117 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = call i32 @rtc_register_device(%struct.TYPE_10__* %118)
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %113, %85, %58, %42, %18
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.ac100_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.ac100_rtc_dev* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ac100_rtc_dev*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.TYPE_10__* @devm_rtc_allocate_device(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i32, i32*, i32, i32, i32, %struct.ac100_rtc_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ac100_rtc_register_clks(%struct.ac100_rtc_dev*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
