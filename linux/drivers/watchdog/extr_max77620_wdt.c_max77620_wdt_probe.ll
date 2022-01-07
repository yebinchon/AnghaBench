; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_max77620_wdt.c_max77620_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_max77620_wdt.c_max77620_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.max77620_wdt = type { %struct.device*, i32, %struct.watchdog_device }
%struct.watchdog_device = type { i32, i32, i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get parent regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@max77620_wdt_info = common dso_local global i32 0, align 4
@max77620_wdt_ops = common dso_local global i32 0, align 4
@MAX77620_REG_ONOFFCNFG2 = common dso_local global i32 0, align 4
@MAX77620_ONOFFCNFG2_WD_RST_WK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to set WD_RST_WK: %d\0A\00", align 1
@MAX77620_REG_CNFGGLBL2 = common dso_local global i32 0, align 4
@MAX77620_WDTOFFC = common dso_local global i32 0, align 4
@MAX77620_WDTSLPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to set WDT OFF mode: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to read WDT CFG register: %d\0A\00", align 1
@MAX77620_TWD_MASK = common dso_local global i32 0, align 4
@MAX77620_WDTEN = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77620_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max77620_wdt*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.max77620_wdt* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.max77620_wdt* %13, %struct.max77620_wdt** %5, align 8
  %14 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %15 = icmp ne %struct.max77620_wdt* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %146

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %22 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %21, i32 0, i32 0
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_get_regmap(i32 %25, i32* null)
  %27 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %28 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %30 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %19
  %34 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %35 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %34, i32 0, i32 0
  %36 = load %struct.device*, %struct.device** %35, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %146

40:                                               ; preds = %19
  %41 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %42 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %41, i32 0, i32 2
  store %struct.watchdog_device* %42, %struct.watchdog_device** %6, align 8
  %43 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %44 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %43, i32 0, i32 6
  store i32* @max77620_wdt_info, i32** %44, align 8
  %45 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %46 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %45, i32 0, i32 5
  store i32* @max77620_wdt_ops, i32** %46, align 8
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %48 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %47, i32 0, i32 0
  store i32 2, i32* %48, align 8
  %49 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %50 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %49, i32 0, i32 1
  store i32 128, i32* %50, align 4
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 2
  store i32 128000, i32* %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %55 = call i32 @platform_set_drvdata(%struct.platform_device* %53, %struct.max77620_wdt* %54)
  %56 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %57 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX77620_REG_ONOFFCNFG2, align 4
  %60 = load i32, i32* @MAX77620_ONOFFCNFG2_WD_RST_WK, align 4
  %61 = load i32, i32* @MAX77620_ONOFFCNFG2_WD_RST_WK, align 4
  %62 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %40
  %66 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %67 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %66, i32 0, i32 0
  %68 = load %struct.device*, %struct.device** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %146

72:                                               ; preds = %40
  %73 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %74 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MAX77620_REG_CNFGGLBL2, align 4
  %77 = load i32, i32* @MAX77620_WDTOFFC, align 4
  %78 = load i32, i32* @MAX77620_WDTSLPC, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @MAX77620_WDTOFFC, align 4
  %81 = load i32, i32* @MAX77620_WDTSLPC, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 %79, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %88 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %87, i32 0, i32 0
  %89 = load %struct.device*, %struct.device** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %146

93:                                               ; preds = %72
  %94 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %95 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MAX77620_REG_CNFGGLBL2, align 4
  %98 = call i32 @regmap_read(i32 %96, i32 %97, i32* %7)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %103 = getelementptr inbounds %struct.max77620_wdt, %struct.max77620_wdt* %102, i32 0, i32 0
  %104 = load %struct.device*, %struct.device** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %146

108:                                              ; preds = %93
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @MAX77620_TWD_MASK, align 4
  %111 = and i32 %109, %110
  switch i32 %111, label %121 [
    i32 129, label %112
    i32 130, label %115
    i32 128, label %118
  ]

112:                                              ; preds = %108
  %113 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %114 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %113, i32 0, i32 3
  store i32 2, i32* %114, align 4
  br label %124

115:                                              ; preds = %108
  %116 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %117 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %116, i32 0, i32 3
  store i32 16, i32* %117, align 4
  br label %124

118:                                              ; preds = %108
  %119 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %120 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %119, i32 0, i32 3
  store i32 64, i32* %120, align 4
  br label %124

121:                                              ; preds = %108
  %122 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %123 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %122, i32 0, i32 3
  store i32 128, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %118, %115, %112
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @MAX77620_WDTEN, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %131 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %132 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %131, i32 0, i32 4
  %133 = call i32 @set_bit(i32 %130, i32* %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %136 = load i32, i32* @nowayout, align 4
  %137 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %135, i32 %136)
  %138 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %139 = load %struct.max77620_wdt*, %struct.max77620_wdt** %5, align 8
  %140 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %138, %struct.max77620_wdt* %139)
  %141 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %142 = call i32 @watchdog_stop_on_unregister(%struct.watchdog_device* %141)
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %145 = call i32 @devm_watchdog_register_device(%struct.device* %143, %struct.watchdog_device* %144)
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %134, %101, %86, %65, %33, %16
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.max77620_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77620_wdt*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.max77620_wdt*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
