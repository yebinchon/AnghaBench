; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_prepare_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_prepare_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.mtk_spi = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@SPI_CFG0_SCK_HIGH_OFFSET = common dso_local global i32 0, align 4
@SPI_ADJUST_CFG0_SCK_LOW_OFFSET = common dso_local global i32 0, align 4
@SPI_CFG2_REG = common dso_local global i64 0, align 8
@SPI_ADJUST_CFG0_CS_HOLD_OFFSET = common dso_local global i32 0, align 4
@SPI_ADJUST_CFG0_CS_SETUP_OFFSET = common dso_local global i32 0, align 4
@SPI_CFG0_REG = common dso_local global i64 0, align 8
@SPI_CFG0_SCK_LOW_OFFSET = common dso_local global i32 0, align 4
@SPI_CFG0_CS_HOLD_OFFSET = common dso_local global i32 0, align 4
@SPI_CFG0_CS_SETUP_OFFSET = common dso_local global i32 0, align 4
@SPI_CFG1_REG = common dso_local global i64 0, align 8
@SPI_CFG1_CS_IDLE_MASK = common dso_local global i32 0, align 4
@SPI_CFG1_CS_IDLE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.spi_transfer*)* @mtk_spi_prepare_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_spi_prepare_transfer(%struct.spi_master* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %12 = call %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.mtk_spi* %12, %struct.mtk_spi** %10, align 8
  %13 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %14 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_get_rate(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 2
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DIV_ROUND_UP(i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %30

29:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 2
  store i32 %35, i32* %8, align 4
  %36 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %37 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %44, 65535
  %46 = load i32, i32* @SPI_CFG0_SCK_HIGH_OFFSET, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %51, 65535
  %53 = load i32, i32* @SPI_ADJUST_CFG0_SCK_LOW_OFFSET, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %59 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPI_CFG2_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %65, 65535
  %67 = load i32, i32* @SPI_ADJUST_CFG0_CS_HOLD_OFFSET, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %72, 65535
  %74 = load i32, i32* @SPI_ADJUST_CFG0_CS_SETUP_OFFSET, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %80 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SPI_CFG0_REG, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  br label %121

85:                                               ; preds = %30
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %87, 255
  %89 = load i32, i32* @SPI_CFG0_SCK_HIGH_OFFSET, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %94, 255
  %96 = load i32, i32* @SPI_CFG0_SCK_LOW_OFFSET, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %100, 1
  %102 = and i32 %101, 255
  %103 = load i32, i32* @SPI_CFG0_CS_HOLD_OFFSET, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  %109 = and i32 %108, 255
  %110 = load i32, i32* @SPI_CFG0_CS_SETUP_OFFSET, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %116 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SPI_CFG0_REG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  br label %121

121:                                              ; preds = %85, %42
  %122 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %123 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SPI_CFG1_REG, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @readl(i64 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @SPI_CFG1_CS_IDLE_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %132, 1
  %134 = and i32 %133, 255
  %135 = load i32, i32* @SPI_CFG1_CS_IDLE_OFFSET, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %141 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SPI_CFG1_REG, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  ret void
}

declare dso_local %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
