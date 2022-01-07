; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cadence_wdt.c_cdns_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cadence_wdt.c_cdns_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.cdns_wdt = type { i32, i32, i32, i32, i32, i32, %struct.watchdog_device }
%struct.watchdog_device = type { i32, %struct.device*, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cdns_wdt_info = common dso_local global i32 0, align 4
@cdns_wdt_ops = common dso_local global i32 0, align 4
@CDNS_WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@CDNS_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@CDNS_WDT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"reset-on-timeout\00", align 1
@cdns_wdt_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cannot register interrupt handler err=%d\0A\00", align 1
@wdt_timeout = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"input clock not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unable to enable clock\0A\00", align 1
@cdns_clk_disable_unprepare = common dso_local global i32 0, align 4
@CDNS_WDT_CLK_75MHZ = common dso_local global i64 0, align 8
@CDNS_WDT_PRESCALE_512 = common dso_local global i32 0, align 4
@CDNS_WDT_PRESCALE_SELECT_512 = common dso_local global i32 0, align 4
@CDNS_WDT_PRESCALE_4096 = common dso_local global i32 0, align 4
@CDNS_WDT_PRESCALE_SELECT_4096 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Xilinx Watchdog Timer at %p with timeout %ds%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c", nowayout\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cdns_wdt*, align 8
  %9 = alloca %struct.watchdog_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cdns_wdt* @devm_kzalloc(%struct.device* %12, i32 64, i32 %13)
  store %struct.cdns_wdt* %14, %struct.cdns_wdt** %8, align 8
  %15 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %16 = icmp ne %struct.cdns_wdt* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %190

20:                                               ; preds = %1
  %21 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %22 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %21, i32 0, i32 6
  store %struct.watchdog_device* %22, %struct.watchdog_device** %9, align 8
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %24 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %23, i32 0, i32 5
  store i32* @cdns_wdt_info, i32** %24, align 8
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %26 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %25, i32 0, i32 4
  store i32* @cdns_wdt_ops, i32** %26, align 8
  %27 = load i32, i32* @CDNS_WDT_DEFAULT_TIMEOUT, align 4
  %28 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %29 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @CDNS_WDT_MIN_TIMEOUT, align 4
  %31 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %32 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @CDNS_WDT_MAX_TIMEOUT, align 4
  %34 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %35 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %36, i32 0)
  %38 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %39 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %41 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %20
  %46 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %47 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %190

50:                                               ; preds = %20
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @of_property_read_bool(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %56 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call i32 @platform_get_irq(%struct.platform_device* %57, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %60 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @cdns_wdt_irq_handler, align 4
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = call i32 @devm_request_irq(%struct.device* %67, i32 %68, i32 %69, i32 0, i32 %72, %struct.platform_device* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %190

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %63, %50
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %86 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %85, i32 0, i32 1
  store %struct.device* %84, %struct.device** %86, align 8
  %87 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %88 = load i32, i32* @wdt_timeout, align 4
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %87, i32 %88, %struct.device* %89)
  %91 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %92 = load i64, i64* @nowayout, align 8
  %93 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %91, i64 %92)
  %94 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %95 = call i32 @watchdog_stop_on_reboot(%struct.watchdog_device* %94)
  %96 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %97 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %98 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %96, %struct.cdns_wdt* %97)
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 @devm_clk_get(%struct.device* %99, i32* null)
  %101 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %102 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %104 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @IS_ERR(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %83
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %112 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @PTR_ERR(i32 %113)
  store i32 %114, i32* %2, align 4
  br label %190

115:                                              ; preds = %83
  %116 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %117 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @clk_prepare_enable(i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %190

126:                                              ; preds = %115
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load i32, i32* @cdns_clk_disable_unprepare, align 4
  %129 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %130 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @devm_add_action_or_reset(%struct.device* %127, i32 %128, i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %2, align 4
  br label %190

137:                                              ; preds = %126
  %138 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %139 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @clk_get_rate(i32 %140)
  store i64 %141, i64* %7, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* @CDNS_WDT_CLK_75MHZ, align 8
  %144 = icmp ule i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %137
  %146 = load i32, i32* @CDNS_WDT_PRESCALE_512, align 4
  %147 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %148 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @CDNS_WDT_PRESCALE_SELECT_512, align 4
  %150 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %151 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  br label %159

152:                                              ; preds = %137
  %153 = load i32, i32* @CDNS_WDT_PRESCALE_4096, align 4
  %154 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %155 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @CDNS_WDT_PRESCALE_SELECT_4096, align 4
  %157 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %158 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %152, %145
  %160 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %161 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %160, i32 0, i32 1
  %162 = call i32 @spin_lock_init(i32* %161)
  %163 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %164 = call i32 @watchdog_stop_on_reboot(%struct.watchdog_device* %163)
  %165 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %166 = call i32 @watchdog_stop_on_unregister(%struct.watchdog_device* %165)
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %169 = call i32 @devm_watchdog_register_device(%struct.device* %167, %struct.watchdog_device* %168)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %159
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %190

174:                                              ; preds = %159
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %177 = call i32 @platform_set_drvdata(%struct.platform_device* %175, %struct.cdns_wdt* %176)
  %178 = load %struct.device*, %struct.device** %4, align 8
  %179 = load %struct.cdns_wdt*, %struct.cdns_wdt** %8, align 8
  %180 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %183 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i64, i64* @nowayout, align 8
  %186 = icmp ne i64 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %189 = call i32 @dev_info(%struct.device* %178, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %181, i32 %184, i8* %188)
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %174, %172, %135, %122, %108, %77, %45, %17
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.cdns_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i64) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.cdns_wdt*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cdns_wdt*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
