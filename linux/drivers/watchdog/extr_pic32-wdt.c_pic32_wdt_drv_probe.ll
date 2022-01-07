; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pic32-wdt.c_pic32_wdt_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pic32-wdt.c_pic32_wdt_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pic32_wdt = type { i32, i32, i32 }

@pic32_wdd = common dso_local global %struct.watchdog_device zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIC32_BASE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"clk not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clk enable failed\0A\00", align 1
@pic32_clk_disable_unprepare = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"windowed-clear mode is not supported.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to read watchdog register timeout\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"timeout %d\0A\00", align 1
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@WATCHDOG_NOWAYOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32_wdt_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_wdt_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca %struct.pic32_wdt*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  store %struct.watchdog_device* @pic32_wdd, %struct.watchdog_device** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pic32_wdt* @devm_kzalloc(%struct.device* %10, i32 12, i32 %11)
  store %struct.pic32_wdt* %12, %struct.pic32_wdt** %7, align 8
  %13 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %14 = icmp ne %struct.pic32_wdt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %22 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %24 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %30 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %142

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* @PIC32_BASE_RESET, align 4
  %36 = call i32 @devm_ioremap(%struct.device* %34, i32 %35, i32 16)
  %37 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %38 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %40 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %142

46:                                               ; preds = %33
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @devm_clk_get(%struct.device* %47, i32* null)
  %49 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %50 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %52 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %60 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %142

63:                                               ; preds = %46
  %64 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %65 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_prepare_enable(i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %142

74:                                               ; preds = %63
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* @pic32_clk_disable_unprepare, align 4
  %77 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %78 = getelementptr inbounds %struct.pic32_wdt, %struct.pic32_wdt* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @devm_add_action_or_reset(%struct.device* %75, i32 %76, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %142

85:                                               ; preds = %74
  %86 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %87 = call i64 @pic32_wdt_is_win_enabled(%struct.pic32_wdt* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %142

94:                                               ; preds = %85
  %95 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 @pic32_wdt_get_timeout_secs(%struct.pic32_wdt* %95, %struct.device* %96)
  %98 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %99 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %101 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %94
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %142

109:                                              ; preds = %94
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %112 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_info(%struct.device* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %116 = call i64 @pic32_wdt_bootstatus(%struct.pic32_wdt* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* @WDIOF_CARDRESET, align 4
  br label %121

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  %123 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %124 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %126 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  %127 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %125, i32 %126)
  %128 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %129 = load %struct.pic32_wdt*, %struct.pic32_wdt** %7, align 8
  %130 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %128, %struct.pic32_wdt* %129)
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %133 = call i32 @devm_watchdog_register_device(%struct.device* %131, %struct.watchdog_device* %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %121
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %142

138:                                              ; preds = %121
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %141 = call i32 @platform_set_drvdata(%struct.platform_device* %139, %struct.watchdog_device* %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %136, %104, %89, %83, %70, %56, %43, %28, %15
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.pic32_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32) #1

declare dso_local i64 @pic32_wdt_is_win_enabled(%struct.pic32_wdt*) #1

declare dso_local i32 @pic32_wdt_get_timeout_secs(%struct.pic32_wdt*, %struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i64 @pic32_wdt_bootstatus(%struct.pic32_wdt*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.pic32_wdt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
