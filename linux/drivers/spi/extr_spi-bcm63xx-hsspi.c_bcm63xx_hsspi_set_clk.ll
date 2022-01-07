; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm63xx-hsspi.c_bcm63xx_hsspi_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm63xx-hsspi.c_bcm63xx_hsspi_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_hsspi = type { i32, i32, i64 }
%struct.spi_device = type { i32, i32 }

@CLK_CTRL_ACCUM_RST_ON_LOOP = common dso_local global i32 0, align 4
@HSSPI_MAX_SYNC_CLOCK = common dso_local global i32 0, align 4
@SIGNAL_CTRL_ASYNC_INPUT_PATH = common dso_local global i32 0, align 4
@HSSPI_GLOBAL_CTRL_REG = common dso_local global i64 0, align 8
@GLOBAL_CTRL_CLK_POLARITY = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_hsspi*, %struct.spi_device*, i32)* @bcm63xx_hsspi_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_hsspi_set_clk(%struct.bcm63xx_hsspi* %0, %struct.spi_device* %1, i32 %2) #0 {
  %4 = alloca %struct.bcm63xx_hsspi*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcm63xx_hsspi* %0, %struct.bcm63xx_hsspi** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %4, align 8
  %13 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @DIV_ROUND_UP(i32 %14, i32 %15)
  %17 = call i32 @DIV_ROUND_UP(i32 2048, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @CLK_CTRL_ACCUM_RST_ON_LOOP, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %4, align 8
  %22 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @HSSPI_PROFILE_CLK_CTRL_REG(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @__raw_writel(i32 %20, i64 %26)
  %28 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %4, align 8
  %29 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @HSSPI_PROFILE_SIGNAL_CTRL_REG(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @__raw_readl(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @HSSPI_MAX_SYNC_CLOCK, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32, i32* @SIGNAL_CTRL_ASYNC_INPUT_PATH, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %3
  %43 = load i32, i32* @SIGNAL_CTRL_ASYNC_INPUT_PATH, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %4, align 8
  %50 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @HSSPI_PROFILE_SIGNAL_CTRL_REG(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @__raw_writel(i32 %48, i64 %54)
  %56 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %4, align 8
  %57 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %4, align 8
  %60 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HSSPI_GLOBAL_CTRL_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @__raw_readl(i64 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @GLOBAL_CTRL_CLK_POLARITY, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SPI_CPOL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %47
  %76 = load i32, i32* @GLOBAL_CTRL_CLK_POLARITY, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %47
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %4, align 8
  %82 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HSSPI_GLOBAL_CTRL_REG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @__raw_writel(i32 %80, i64 %85)
  %87 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %4, align 8
  %88 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @HSSPI_PROFILE_CLK_CTRL_REG(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @HSSPI_PROFILE_SIGNAL_CTRL_REG(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
