; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sflash_data = type { i32, i32, i32, i32 }

@SPI_STATUS = common dso_local global i32 0, align 4
@DATA_DIR_TX = common dso_local global i32 0, align 4
@SPI_TX_OVF = common dso_local global i32 0, align 4
@DATA_DIR_RX = common dso_local global i32 0, align 4
@SPI_RX_UNF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_sflash_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sflash_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_sflash_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.tegra_sflash_data*
  store %struct.tegra_sflash_data* %7, %struct.tegra_sflash_data** %5, align 8
  %8 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %9 = load i32, i32* @SPI_STATUS, align 4
  %10 = call i32 @tegra_sflash_readl(%struct.tegra_sflash_data* %8, i32 %9)
  %11 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DATA_DIR_TX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SPI_TX_OVF, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DATA_DIR_RX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %36 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SPI_RX_UNF, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %44 = call i32 @tegra_sflash_clear_status(%struct.tegra_sflash_data* %43)
  %45 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %46 = call i32 @handle_cpu_based_xfer(%struct.tegra_sflash_data* %45)
  ret i32 %46
}

declare dso_local i32 @tegra_sflash_readl(%struct.tegra_sflash_data*, i32) #1

declare dso_local i32 @tegra_sflash_clear_status(%struct.tegra_sflash_data*) #1

declare dso_local i32 @handle_cpu_based_xfer(%struct.tegra_sflash_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
