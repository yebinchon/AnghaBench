; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_transfer_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_transfer_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, i32 }
%struct.tegra_spi_data = type { i32, i32, i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_CS_SW_VAL = common dso_local global i32 0, align 4
@SPI_COMMAND1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @tegra_spi_transfer_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_spi_transfer_end(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.tegra_spi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.tegra_spi_data* @spi_master_get_devdata(i32 %7)
  store %struct.tegra_spi_data* %8, %struct.tegra_spi_data** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SPI_CS_HIGH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  store i32 %16, i32* %4, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @gpiod_set_value(i64 %24, i32 0)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @SPI_CS_SW_VAL, align 4
  %36 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %47

40:                                               ; preds = %31
  %41 = load i32, i32* @SPI_CS_SW_VAL, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %44 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %49 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %50 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SPI_COMMAND1, align 4
  %53 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %26
  %55 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %56 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SPI_COMMAND1, align 4
  %60 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %55, i32 %58, i32 %59)
  ret void
}

declare dso_local %struct.tegra_spi_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @tegra_spi_writel(%struct.tegra_spi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
