; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pic32-dmt.c_pic32_dmt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pic32-dmt.c_pic32_dmt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pic32_dmt = type { i32, i32 }

@pic32_dmt_wdd = common dso_local global %struct.watchdog_device zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"clk not found\0A\00", align 1
@pic32_clk_disable_unprepare = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to read watchdog register timeout\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"timeout %d\0A\00", align 1
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@WATCHDOG_NOWAYOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32_dmt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_dmt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pic32_dmt*, align 8
  %7 = alloca %struct.watchdog_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  store %struct.watchdog_device* @pic32_dmt_wdd, %struct.watchdog_device** %7, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pic32_dmt* @devm_kzalloc(%struct.device* %10, i32 8, i32 %11)
  store %struct.pic32_dmt* %12, %struct.pic32_dmt** %6, align 8
  %13 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %14 = icmp ne %struct.pic32_dmt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %117

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %22 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %24 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %30 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %117

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @devm_clk_get(%struct.device* %34, i32* null)
  %36 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %37 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %39 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %47 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %117

50:                                               ; preds = %33
  %51 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %52 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_prepare_enable(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %117

59:                                               ; preds = %50
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* @pic32_clk_disable_unprepare, align 4
  %62 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %63 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @devm_add_action_or_reset(%struct.device* %60, i32 %61, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %117

70:                                               ; preds = %59
  %71 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %72 = call i32 @pic32_dmt_get_timeout_secs(%struct.pic32_dmt* %71)
  %73 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %74 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %76 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %70
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %117

84:                                               ; preds = %70
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %87 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_info(%struct.device* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %91 = call i64 @pic32_dmt_bootstatus(%struct.pic32_dmt* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @WDIOF_CARDRESET, align 4
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %99 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %101 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  %102 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %100, i32 %101)
  %103 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %104 = load %struct.pic32_dmt*, %struct.pic32_dmt** %6, align 8
  %105 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %103, %struct.pic32_dmt* %104)
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %108 = call i32 @devm_watchdog_register_device(%struct.device* %106, %struct.watchdog_device* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %96
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %117

113:                                              ; preds = %96
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %116 = call i32 @platform_set_drvdata(%struct.platform_device* %114, %struct.watchdog_device* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %111, %79, %68, %57, %43, %28, %15
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.pic32_dmt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32) #1

declare dso_local i32 @pic32_dmt_get_timeout_secs(%struct.pic32_dmt*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i64 @pic32_dmt_bootstatus(%struct.pic32_dmt*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.pic32_dmt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
