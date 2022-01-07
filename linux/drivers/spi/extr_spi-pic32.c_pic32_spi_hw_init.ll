; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_spi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CTRL_ENHBUF = common dso_local global i32 0, align 4
@CTRL_FRMEN = common dso_local global i32 0, align 4
@CTRL_MSTEN = common dso_local global i32 0, align 4
@CTRL_TX_INT_SHIFT = common dso_local global i32 0, align 4
@TX_FIFO_HALF_EMPTY = common dso_local global i32 0, align 4
@CTRL_RX_INT_SHIFT = common dso_local global i32 0, align 4
@RX_FIFO_NOT_EMPTY = common dso_local global i32 0, align 4
@CTRL_MCLKSEL = common dso_local global i32 0, align 4
@CTRL_MSSEN = common dso_local global i32 0, align 4
@CTRL2_TX_UR_EN = common dso_local global i32 0, align 4
@CTRL2_RX_OV_EN = common dso_local global i32 0, align 4
@CTRL2_FRM_ERR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic32_spi*)* @pic32_spi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_spi_hw_init(%struct.pic32_spi* %0) #0 {
  %2 = alloca %struct.pic32_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.pic32_spi* %0, %struct.pic32_spi** %2, align 8
  %4 = load %struct.pic32_spi*, %struct.pic32_spi** %2, align 8
  %5 = call i32 @pic32_spi_disable(%struct.pic32_spi* %4)
  %6 = load %struct.pic32_spi*, %struct.pic32_spi** %2, align 8
  %7 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32 @readl(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @CTRL_ENHBUF, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pic32_spi*, %struct.pic32_spi** %2, align 8
  %15 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %14, i32 0, i32 0
  store i32 16, i32* %15, align 8
  %16 = load i32, i32* @CTRL_FRMEN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @CTRL_MSTEN, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @CTRL_TX_INT_SHIFT, align 4
  %24 = shl i32 3, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @TX_FIFO_HALF_EMPTY, align 4
  %29 = load i32, i32* @CTRL_TX_INT_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @CTRL_RX_INT_SHIFT, align 4
  %34 = shl i32 3, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @RX_FIFO_NOT_EMPTY, align 4
  %39 = load i32, i32* @CTRL_RX_INT_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @CTRL_MCLKSEL, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @CTRL_MSSEN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.pic32_spi*, %struct.pic32_spi** %2, align 8
  %53 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @writel(i32 %51, i32* %55)
  %57 = load i32, i32* @CTRL2_TX_UR_EN, align 4
  %58 = load i32, i32* @CTRL2_RX_OV_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CTRL2_FRM_ERR_EN, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.pic32_spi*, %struct.pic32_spi** %2, align 8
  %64 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @writel(i32 %62, i32* %66)
  ret void
}

declare dso_local i32 @pic32_spi_disable(%struct.pic32_spi*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
