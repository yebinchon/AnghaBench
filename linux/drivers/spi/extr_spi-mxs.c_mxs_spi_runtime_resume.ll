; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_spi_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_spi_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_master = type { i32 }
%struct.mxs_spi = type { %struct.mxs_ssp }
%struct.mxs_ssp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mxs_spi_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_spi_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.mxs_spi*, align 8
  %6 = alloca %struct.mxs_ssp*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.spi_master* @dev_get_drvdata(%struct.device* %8)
  store %struct.spi_master* %9, %struct.spi_master** %4, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %11 = call %struct.mxs_spi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.mxs_spi* %11, %struct.mxs_spi** %5, align 8
  %12 = load %struct.mxs_spi*, %struct.mxs_spi** %5, align 8
  %13 = getelementptr inbounds %struct.mxs_spi, %struct.mxs_spi* %12, i32 0, i32 0
  store %struct.mxs_ssp* %13, %struct.mxs_ssp** %6, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @pinctrl_pm_select_default_state(%struct.device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %22 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @pinctrl_pm_select_idle_state(%struct.device* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.spi_master* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.mxs_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pinctrl_pm_select_idle_state(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
