; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device_id = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.platform_device*, %struct.orion_watchdog*)* }
%struct.platform_device = type { i32, i32 }
%struct.orion_watchdog = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@orion_wdt_of_match_table = common dso_local global %struct.of_device_id* null, align 8
@orion_wdt_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@orion_wdt_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot initialize clock\0A\00", align 1
@WDT_MAX_CYCLE_COUNT = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@orion_wdt_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@WDIOF_PRETIMEOUT = common dso_local global i32 0, align 4
@orion_wdt_pre_irq = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Initial timeout %d sec%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c", nowayout\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @orion_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.orion_watchdog*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.orion_watchdog* @devm_kzalloc(i32* %10, i32 56, i32 %11)
  store %struct.orion_watchdog* %12, %struct.orion_watchdog** %4, align 8
  %13 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %14 = icmp ne %struct.orion_watchdog* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %191

18:                                               ; preds = %1
  %19 = load %struct.of_device_id*, %struct.of_device_id** @orion_wdt_of_match_table, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.of_device_id* @of_match_device(%struct.of_device_id* %19, i32* %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %5, align 8
  %23 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %24 = icmp ne %struct.of_device_id* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.of_device_id*, %struct.of_device_id** @orion_wdt_of_match_table, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i64 0
  store %struct.of_device_id* %27, %struct.of_device_id** %5, align 8
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %30 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 6
  store %struct.TYPE_12__* @orion_wdt_info, %struct.TYPE_12__** %31, align 8
  %32 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %33 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  store i32* @orion_wdt_ops, i32** %34, align 8
  %35 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %36 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %42 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %41, i32 0, i32 3
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %45 = call i32 @orion_wdt_get_regs(%struct.platform_device* %43, %struct.orion_watchdog* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %28
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %191

50:                                               ; preds = %28
  %51 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %52 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32 (%struct.platform_device*, %struct.orion_watchdog*)*, i32 (%struct.platform_device*, %struct.orion_watchdog*)** %54, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %58 = call i32 %55(%struct.platform_device* %56, %struct.orion_watchdog* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %191

66:                                               ; preds = %50
  %67 = load i32, i32* @WDT_MAX_CYCLE_COUNT, align 4
  %68 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %69 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = udiv i32 %67, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %74 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %78 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %83 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  store i32* %81, i32** %84, align 8
  %85 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %86 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %85, i32 0, i32 2
  %87 = load i32, i32* @heartbeat, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @watchdog_init_timeout(%struct.TYPE_11__* %86, i32 %87, i32* %89)
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %93 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %92, i32 0, i32 2
  %94 = call i32 @platform_set_drvdata(%struct.platform_device* %91, %struct.TYPE_11__* %93)
  %95 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %96 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %95, i32 0, i32 2
  %97 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %98 = call i32 @watchdog_set_drvdata(%struct.TYPE_11__* %96, %struct.orion_watchdog* %97)
  %99 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %100 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %99, i32 0, i32 2
  %101 = call i32 @orion_wdt_enabled(%struct.TYPE_11__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %66
  %104 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %105 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %104, i32 0, i32 2
  %106 = call i32 @orion_wdt_stop(%struct.TYPE_11__* %105)
  br label %113

107:                                              ; preds = %66
  %108 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %109 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %110 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = call i32 @set_bit(i32 %108, i32* %111)
  br label %113

113:                                              ; preds = %107, %103
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = call i32 @platform_get_irq(%struct.platform_device* %114, i32 0)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %113
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @orion_wdt_irq, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %127 = call i32 @devm_request_irq(i32* %120, i32 %121, i32 %122, i32 0, i32 %125, %struct.orion_watchdog* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %118
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %181

134:                                              ; preds = %118
  br label %135

135:                                              ; preds = %134, %113
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = call i32 @platform_get_irq(%struct.platform_device* %136, i32 1)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %135
  %141 = load i32, i32* @WDIOF_PRETIMEOUT, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @orion_wdt_info, i32 0, i32 0), align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @orion_wdt_info, i32 0, i32 0), align 4
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @orion_wdt_pre_irq, align 4
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %152 = call i32 @devm_request_irq(i32* %145, i32 %146, i32 %147, i32 0, i32 %150, %struct.orion_watchdog* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %140
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %181

159:                                              ; preds = %140
  br label %160

160:                                              ; preds = %159, %135
  %161 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %162 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %161, i32 0, i32 2
  %163 = load i64, i64* @nowayout, align 8
  %164 = call i32 @watchdog_set_nowayout(%struct.TYPE_11__* %162, i64 %163)
  %165 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %166 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %165, i32 0, i32 2
  %167 = call i32 @watchdog_register_device(%struct.TYPE_11__* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %181

171:                                              ; preds = %160
  %172 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %173 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* @nowayout, align 8
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %180 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %175, i8* %179)
  store i32 0, i32* %2, align 4
  br label %191

181:                                              ; preds = %170, %155, %130
  %182 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %183 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @clk_disable_unprepare(i32 %184)
  %186 = load %struct.orion_watchdog*, %struct.orion_watchdog** %4, align 8
  %187 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @clk_put(i32 %188)
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %181, %171, %61, %48, %15
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.orion_watchdog* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(%struct.of_device_id*, i32*) #1

declare dso_local i32 @orion_wdt_get_regs(%struct.platform_device*, %struct.orion_watchdog*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_11__*, %struct.orion_watchdog*) #1

declare dso_local i32 @orion_wdt_enabled(%struct.TYPE_11__*) #1

declare dso_local i32 @orion_wdt_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.orion_watchdog*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_11__*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
