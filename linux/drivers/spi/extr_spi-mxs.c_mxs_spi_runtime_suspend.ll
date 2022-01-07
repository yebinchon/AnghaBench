; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_spi_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_spi_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_master = type { i32 }
%struct.mxs_spi = type { %struct.mxs_ssp }
%struct.mxs_ssp = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"Failed to reenable clock after failing pinctrl request (pinctrl: %d, clk: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mxs_spi_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_spi_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.mxs_spi*, align 8
  %5 = alloca %struct.mxs_ssp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.spi_master* @dev_get_drvdata(%struct.device* %8)
  store %struct.spi_master* %9, %struct.spi_master** %3, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %11 = call %struct.mxs_spi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.mxs_spi* %11, %struct.mxs_spi** %4, align 8
  %12 = load %struct.mxs_spi*, %struct.mxs_spi** %4, align 8
  %13 = getelementptr inbounds %struct.mxs_spi, %struct.mxs_spi* %12, i32 0, i32 0
  store %struct.mxs_ssp* %13, %struct.mxs_ssp** %5, align 8
  %14 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %15 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_disable_unprepare(i32 %16)
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = call i32 @pinctrl_pm_select_idle_state(%struct.device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %24 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_prepare_enable(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.spi_master* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.mxs_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pinctrl_pm_select_idle_state(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
