; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mtk_spi = type { i32, i64 }

@SPI_CMD_REG = common dso_local global i64 0, align 8
@SPI_CMD_PAUSE_EN = common dso_local global i32 0, align 4
@MTK_SPI_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @mtk_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mtk_spi* @spi_master_get_devdata(i32 %9)
  store %struct.mtk_spi* %10, %struct.mtk_spi** %6, align 8
  %11 = load %struct.mtk_spi*, %struct.mtk_spi** %6, align 8
  %12 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPI_CMD_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @SPI_CMD_PAUSE_EN, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mtk_spi*, %struct.mtk_spi** %6, align 8
  %25 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPI_CMD_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  br label %47

30:                                               ; preds = %2
  %31 = load i32, i32* @SPI_CMD_PAUSE_EN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.mtk_spi*, %struct.mtk_spi** %6, align 8
  %37 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPI_CMD_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* @MTK_SPI_IDLE, align 4
  %43 = load %struct.mtk_spi*, %struct.mtk_spi** %6, align 8
  %44 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mtk_spi*, %struct.mtk_spi** %6, align 8
  %46 = call i32 @mtk_spi_reset(%struct.mtk_spi* %45)
  br label %47

47:                                               ; preds = %30, %19
  ret void
}

declare dso_local %struct.mtk_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mtk_spi_reset(%struct.mtk_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
