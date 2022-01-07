; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun4i.c_sun4i_spi_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun4i.c_sun4i_spi_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_master = type { i32 }
%struct.sun4i_spi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sun4i_spi_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_spi_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.sun4i_spi*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.spi_master* @dev_get_drvdata(%struct.device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.sun4i_spi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.sun4i_spi* %8, %struct.sun4i_spi** %4, align 8
  %9 = load %struct.sun4i_spi*, %struct.sun4i_spi** %4, align 8
  %10 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_disable_unprepare(i32 %11)
  %13 = load %struct.sun4i_spi*, %struct.sun4i_spi** %4, align 8
  %14 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  ret i32 0
}

declare dso_local %struct.spi_master* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sun4i_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
