; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bd70528_wdt.c_bd70528_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bd70528_wdt.c_bd70528_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.rohm_regmap_dev = type { i32 }
%struct.wdtbd70528 = type { %struct.TYPE_9__, %struct.rohm_regmap_dev*, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [20 x i8] c"No MFD driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bd70528_wdt_info = common dso_local global i32 0, align 4
@bd70528_wdt_ops = common dso_local global i32 0, align 4
@WDT_MIN_MS = common dso_local global i32 0, align 4
@WDT_MAX_MS = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set the watchdog timeout\0A\00", align 1
@BD70528_REG_WDT_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to get the watchdog state\0A\00", align 1
@BD70528_MASK_WDT_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"watchdog was running during probe\0A\00", align 1
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"watchdog registration failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bd70528_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rohm_regmap_dev*, align 8
  %5 = alloca %struct.wdtbd70528*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rohm_regmap_dev* @dev_get_drvdata(i32 %11)
  store %struct.rohm_regmap_dev* %12, %struct.rohm_regmap_dev** %4, align 8
  %13 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %4, align 8
  %14 = icmp ne %struct.rohm_regmap_dev* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %144

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.wdtbd70528* @devm_kzalloc(%struct.TYPE_10__* %23, i32 64, i32 %24)
  store %struct.wdtbd70528* %25, %struct.wdtbd70528** %5, align 8
  %26 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %27 = icmp ne %struct.wdtbd70528* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %144

31:                                               ; preds = %21
  %32 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %4, align 8
  %33 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %36 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %4, align 8
  %38 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %39 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %38, i32 0, i32 1
  store %struct.rohm_regmap_dev* %37, %struct.rohm_regmap_dev** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %43 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %42, i32 0, i32 3
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %43, align 8
  %44 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %45 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  store i32* @bd70528_wdt_info, i32** %46, align 8
  %47 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %48 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  store i32* @bd70528_wdt_ops, i32** %49, align 8
  %50 = load i32, i32* @WDT_MIN_MS, align 4
  %51 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %52 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @WDT_MAX_MS, align 4
  %55 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %56 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %63 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %66 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %67 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %70 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %69, i32 0, i32 0
  %71 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %72 = call i32 @watchdog_set_drvdata(%struct.TYPE_9__* %70, %struct.wdtbd70528* %71)
  %73 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %74 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %73, i32 0, i32 0
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @watchdog_init_timeout(%struct.TYPE_9__* %74, i32 0, i32 %78)
  %80 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %81 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %80, i32 0, i32 0
  %82 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %83 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bd70528_wdt_set_timeout(%struct.TYPE_9__* %81, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %31
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %144

94:                                               ; preds = %31
  %95 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %96 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %95, i32 0, i32 1
  %97 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %96, align 8
  %98 = call i32 @bd70528_wdt_lock(%struct.rohm_regmap_dev* %97)
  %99 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %100 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BD70528_REG_WDT_CTRL, align 4
  %103 = call i32 @regmap_read(i32 %101, i32 %102, i32* %7)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %105 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %104, i32 0, i32 1
  %106 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %105, align 8
  %107 = call i32 @bd70528_wdt_unlock(%struct.rohm_regmap_dev* %106)
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %94
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %144

115:                                              ; preds = %94
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @BD70528_MASK_WDT_EN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_dbg(%struct.TYPE_10__* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %125 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %126 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = call i32 @set_bit(i32 %124, i32* %127)
  br label %129

129:                                              ; preds = %120, %115
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.wdtbd70528*, %struct.wdtbd70528** %5, align 8
  %133 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %132, i32 0, i32 0
  %134 = call i32 @devm_watchdog_register_device(%struct.TYPE_10__* %131, %struct.TYPE_9__* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %129
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %110, %89, %28, %15
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.rohm_regmap_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.wdtbd70528* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_9__*, %struct.wdtbd70528*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @bd70528_wdt_set_timeout(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bd70528_wdt_lock(%struct.rohm_regmap_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @bd70528_wdt_unlock(%struct.rohm_regmap_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
