; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_dw_wdt.c_dw_wdt_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_dw_wdt.c_dw_wdt_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.watchdog_device = type { i32, i32, i32, i32, %struct.device*, i32*, i32* }
%struct.dw_wdt = type { i64, i32, %struct.watchdog_device, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dw_wdt_ident = common dso_local global i32 0, align 4
@dw_wdt_ops = common dso_local global i32 0, align 4
@DW_WDT_MAX_TOP = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@DW_WDT_DEFAULT_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_wdt_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_wdt_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.dw_wdt*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dw_wdt* @devm_kzalloc(%struct.device* %10, i32 64, i32 %11)
  store %struct.dw_wdt* %12, %struct.dw_wdt** %6, align 8
  %13 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %14 = icmp ne %struct.dw_wdt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %155

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %22 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %24 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %30 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %155

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @devm_clk_get(%struct.device* %34, i32* null)
  %36 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %37 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %39 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %45 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %155

48:                                               ; preds = %33
  %49 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %50 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_prepare_enable(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %155

57:                                               ; preds = %48
  %58 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %59 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @clk_get_rate(i32 %60)
  %62 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %63 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %65 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %149

71:                                               ; preds = %57
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @devm_reset_control_get_optional_shared(%struct.device* %73, i32* null)
  %75 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %76 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %78 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %84 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %7, align 4
  br label %149

87:                                               ; preds = %71
  %88 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %89 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @reset_control_deassert(i32 %90)
  %92 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %93 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %92, i32 0, i32 2
  store %struct.watchdog_device* %93, %struct.watchdog_device** %5, align 8
  %94 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %95 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %94, i32 0, i32 6
  store i32* @dw_wdt_ident, i32** %95, align 8
  %96 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %97 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %96, i32 0, i32 5
  store i32* @dw_wdt_ops, i32** %97, align 8
  %98 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %99 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %101 = load i32, i32* @DW_WDT_MAX_TOP, align 4
  %102 = call i32 @dw_wdt_top_in_seconds(%struct.dw_wdt* %100, i32 %101)
  %103 = mul nsw i32 %102, 1000
  %104 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %105 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %108 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %107, i32 0, i32 4
  store %struct.device* %106, %struct.device** %108, align 8
  %109 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %110 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %111 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %109, %struct.dw_wdt* %110)
  %112 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %113 = load i32, i32* @nowayout, align 4
  %114 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %112, i32 %113)
  %115 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %115, i32 0, %struct.device* %116)
  %118 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %119 = call i64 @dw_wdt_is_enabled(%struct.dw_wdt* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %87
  %122 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %123 = call i32 @dw_wdt_get_top(%struct.dw_wdt* %122)
  %124 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %125 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %127 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %128 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %127, i32 0, i32 3
  %129 = call i32 @set_bit(i32 %126, i32* %128)
  br label %137

130:                                              ; preds = %87
  %131 = load i32, i32* @DW_WDT_DEFAULT_SECONDS, align 4
  %132 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %133 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %134, i32 0, %struct.device* %135)
  br label %137

137:                                              ; preds = %130, %121
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %140 = call i32 @platform_set_drvdata(%struct.platform_device* %138, %struct.dw_wdt* %139)
  %141 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %142 = call i32 @watchdog_set_restart_priority(%struct.watchdog_device* %141, i32 128)
  %143 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %144 = call i32 @watchdog_register_device(%struct.watchdog_device* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %149

148:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %155

149:                                              ; preds = %147, %82, %68
  %150 = load %struct.dw_wdt*, %struct.dw_wdt** %6, align 8
  %151 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @clk_disable_unprepare(i32 %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %149, %148, %55, %43, %28, %15
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.dw_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @devm_reset_control_get_optional_shared(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @dw_wdt_top_in_seconds(%struct.dw_wdt*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.dw_wdt*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i64 @dw_wdt_is_enabled(%struct.dw_wdt*) #1

declare dso_local i32 @dw_wdt_get_top(%struct.dw_wdt*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dw_wdt*) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_register_device(%struct.watchdog_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
