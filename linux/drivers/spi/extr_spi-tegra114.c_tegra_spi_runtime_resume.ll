; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_master = type { i32 }
%struct.tegra_spi_data = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"clk_prepare failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_spi_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.tegra_spi_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.spi_master* @dev_get_drvdata(%struct.device* %7)
  store %struct.spi_master* %8, %struct.spi_master** %4, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.tegra_spi_data* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.tegra_spi_data* %10, %struct.tegra_spi_data** %5, align 8
  %11 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.spi_master* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.tegra_spi_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
