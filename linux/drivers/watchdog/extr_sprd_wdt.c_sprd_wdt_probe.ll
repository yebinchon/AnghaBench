; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sprd_wdt = type { i64, %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"can't get the enable clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"rtc_enable\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"can't get the rtc enable clock\0A\00", align 1
@sprd_wdt_isr = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"sprd-wdt\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to register irq\0A\00", align 1
@sprd_wdt_info = common dso_local global i32 0, align 4
@sprd_wdt_ops = common dso_local global i32 0, align 4
@SPRD_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@SPRD_WDT_MAX_TIMEOUT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to enable wdt\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to add wdt disable action\0A\00", align 1
@WATCHDOG_NOWAYOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sprd_wdt*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sprd_wdt* @devm_kzalloc(%struct.device* %9, i32 80, i32 %10)
  store %struct.sprd_wdt* %11, %struct.sprd_wdt** %5, align 8
  %12 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %13 = icmp ne %struct.sprd_wdt* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %161

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %21 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %23 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %29 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %2, align 4
  br label %161

32:                                               ; preds = %17
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i8* @devm_clk_get(%struct.device* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %36 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %38 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %46 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %161

49:                                               ; preds = %32
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i8* @devm_clk_get(%struct.device* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %53 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %55 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %63 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %161

66:                                               ; preds = %49
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i64 @platform_get_irq(%struct.platform_device* %67, i32 0)
  %69 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %70 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %72 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %77 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %2, align 4
  br label %161

80:                                               ; preds = %66
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %83 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @sprd_wdt_isr, align 4
  %87 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %88 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %89 = bitcast %struct.sprd_wdt* %88 to i8*
  %90 = call i32 @devm_request_irq(%struct.device* %81, i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %161

97:                                               ; preds = %80
  %98 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %99 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  store i32* @sprd_wdt_info, i32** %100, align 8
  %101 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %102 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  store i32* @sprd_wdt_ops, i32** %103, align 8
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %106 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  store %struct.device* %104, %struct.device** %107, align 8
  %108 = load i32, i32* @SPRD_WDT_MIN_TIMEOUT, align 4
  %109 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %110 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load i8*, i8** @SPRD_WDT_MAX_TIMEOUT, align 8
  %113 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %114 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @SPRD_WDT_MAX_TIMEOUT, align 8
  %117 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %118 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  %120 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %121 = call i32 @sprd_wdt_enable(%struct.sprd_wdt* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %97
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %161

128:                                              ; preds = %97
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %131 = call i32 @devm_add_action_or_reset(%struct.device* %129, i32 (%struct.sprd_wdt*)* @sprd_wdt_disable, %struct.sprd_wdt* %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %161

138:                                              ; preds = %128
  %139 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %140 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %139, i32 0, i32 1
  %141 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  %142 = call i32 @watchdog_set_nowayout(%struct.TYPE_4__* %140, i32 %141)
  %143 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %144 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %143, i32 0, i32 1
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = call i32 @watchdog_init_timeout(%struct.TYPE_4__* %144, i32 0, %struct.device* %145)
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %149 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %148, i32 0, i32 1
  %150 = call i32 @devm_watchdog_register_device(%struct.device* %147, %struct.TYPE_4__* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %138
  %154 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %155 = call i32 @sprd_wdt_disable(%struct.sprd_wdt* %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %161

157:                                              ; preds = %138
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %160 = call i32 @platform_set_drvdata(%struct.platform_device* %158, %struct.sprd_wdt* %159)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %153, %134, %124, %93, %75, %59, %42, %27, %14
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.sprd_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @sprd_wdt_enable(%struct.sprd_wdt*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32 (%struct.sprd_wdt*)*, %struct.sprd_wdt*) #1

declare dso_local i32 @sprd_wdt_disable(%struct.sprd_wdt*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_4__*, i32, %struct.device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_wdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
