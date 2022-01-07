; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_armada_37xx_wdt.c_armada_37xx_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_armada_37xx_wdt.c_armada_37xx_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.armada_37xx_watchdog = type { %struct.TYPE_15__, i32, %struct.regmap*, i32, %struct.regmap* }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32*, i32* }
%struct.regmap = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@armada_37xx_wdt_info = common dso_local global i32 0, align 4
@armada_37xx_wdt_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"marvell,system-controller\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@armada_clk_disable_unprepare = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Initial timeout %d sec%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", nowayout\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_37xx_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.armada_37xx_watchdog*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.armada_37xx_watchdog* @devm_kzalloc(%struct.TYPE_16__* %9, i32 80, i32 %10)
  store %struct.armada_37xx_watchdog* %11, %struct.armada_37xx_watchdog** %4, align 8
  %12 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %13 = icmp ne %struct.armada_37xx_watchdog* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %184

17:                                               ; preds = %1
  %18 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %19 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  store i32* @armada_37xx_wdt_info, i32** %20, align 8
  %21 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %22 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 5
  store i32* @armada_37xx_wdt_ops, i32** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %28, %struct.regmap** %6, align 8
  %29 = load %struct.regmap*, %struct.regmap** %6, align 8
  %30 = call i64 @IS_ERR(%struct.regmap* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load %struct.regmap*, %struct.regmap** %6, align 8
  %34 = call i32 @PTR_ERR(%struct.regmap* %33)
  store i32 %34, i32* %2, align 4
  br label %184

35:                                               ; preds = %17
  %36 = load %struct.regmap*, %struct.regmap** %6, align 8
  %37 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %38 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %37, i32 0, i32 4
  store %struct.regmap* %36, %struct.regmap** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %5, align 8
  %42 = load %struct.resource*, %struct.resource** %5, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %184

47:                                               ; preds = %35
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %5, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = call i32 @devm_ioremap(%struct.TYPE_16__* %49, i32 %52, i32 %54)
  %56 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %57 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call %struct.regmap* @devm_clk_get(%struct.TYPE_16__* %59, i32* null)
  %61 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %62 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %61, i32 0, i32 2
  store %struct.regmap* %60, %struct.regmap** %62, align 8
  %63 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %64 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %63, i32 0, i32 2
  %65 = load %struct.regmap*, %struct.regmap** %64, align 8
  %66 = call i64 @IS_ERR(%struct.regmap* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %47
  %69 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %70 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %69, i32 0, i32 2
  %71 = load %struct.regmap*, %struct.regmap** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.regmap* %71)
  store i32 %72, i32* %2, align 4
  br label %184

73:                                               ; preds = %47
  %74 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %75 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %74, i32 0, i32 2
  %76 = load %struct.regmap*, %struct.regmap** %75, align 8
  %77 = call i32 @clk_prepare_enable(%struct.regmap* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %184

82:                                               ; preds = %73
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* @armada_clk_disable_unprepare, align 4
  %86 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %87 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %86, i32 0, i32 2
  %88 = load %struct.regmap*, %struct.regmap** %87, align 8
  %89 = call i32 @devm_add_action_or_reset(%struct.TYPE_16__* %84, i32 %85, %struct.regmap* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %184

94:                                               ; preds = %82
  %95 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %96 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %95, i32 0, i32 2
  %97 = load %struct.regmap*, %struct.regmap** %96, align 8
  %98 = call i32 @clk_get_rate(%struct.regmap* %97)
  %99 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %100 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %102 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %184

108:                                              ; preds = %94
  %109 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %110 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* @UINT_MAX, align 4
  %113 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %114 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 8
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %119 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %120, align 8
  %121 = load i32, i32* @WATCHDOG_TIMEOUT, align 4
  %122 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %123 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %126 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %125, i32 0, i32 0
  %127 = load i32, i32* @timeout, align 4
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @watchdog_init_timeout(%struct.TYPE_15__* %126, i32 %127, %struct.TYPE_16__* %129)
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %133 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %132, i32 0, i32 0
  %134 = call i32 @platform_set_drvdata(%struct.platform_device* %131, %struct.TYPE_15__* %133)
  %135 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %136 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %135, i32 0, i32 0
  %137 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %138 = call i32 @watchdog_set_drvdata(%struct.TYPE_15__* %136, %struct.armada_37xx_watchdog* %137)
  %139 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %140 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %139, i32 0, i32 0
  %141 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %142 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @armada_37xx_wdt_set_timeout(%struct.TYPE_15__* %140, i32 %144)
  %146 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %147 = call i64 @armada_37xx_wdt_is_running(%struct.armada_37xx_watchdog* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %108
  %150 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %151 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %152 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = call i32 @set_bit(i32 %150, i32* %153)
  br label %155

155:                                              ; preds = %149, %108
  %156 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %157 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %156, i32 0, i32 0
  %158 = load i64, i64* @nowayout, align 8
  %159 = call i32 @watchdog_set_nowayout(%struct.TYPE_15__* %157, i64 %158)
  %160 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %161 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %160, i32 0, i32 0
  %162 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_15__* %161)
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %166 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %165, i32 0, i32 0
  %167 = call i32 @devm_watchdog_register_device(%struct.TYPE_16__* %164, %struct.TYPE_15__* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %155
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %184

172:                                              ; preds = %155
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %4, align 8
  %176 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* @nowayout, align 8
  %180 = icmp ne i64 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %183 = call i32 @dev_info(%struct.TYPE_16__* %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %178, i8* %182)
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %172, %170, %105, %92, %80, %68, %44, %32, %14
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.armada_37xx_watchdog* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.regmap*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_16__*, i32, %struct.regmap*) #1

declare dso_local i32 @clk_get_rate(%struct.regmap*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_15__*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_15__*, %struct.armada_37xx_watchdog*) #1

declare dso_local i32 @armada_37xx_wdt_set_timeout(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @armada_37xx_wdt_is_running(%struct.armada_37xx_watchdog*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_15__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_16__*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
