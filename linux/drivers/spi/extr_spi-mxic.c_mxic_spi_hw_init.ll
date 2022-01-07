; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxic_spi = type { i64 }

@DATA_STROB = common dso_local global i64 0, align 8
@INT_STS_ALL = common dso_local global i32 0, align 4
@INT_STS_EN = common dso_local global i64 0, align 8
@HC_EN = common dso_local global i64 0, align 8
@LRD_CFG = common dso_local global i64 0, align 8
@LRD_CTRL = common dso_local global i64 0, align 8
@HC_CFG_TYPE_SPI_NAND = common dso_local global i32 0, align 4
@HC_CFG_MAN_CS_EN = common dso_local global i32 0, align 4
@HC_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxic_spi*)* @mxic_spi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxic_spi_hw_init(%struct.mxic_spi* %0) #0 {
  %2 = alloca %struct.mxic_spi*, align 8
  store %struct.mxic_spi* %0, %struct.mxic_spi** %2, align 8
  %3 = load %struct.mxic_spi*, %struct.mxic_spi** %2, align 8
  %4 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DATA_STROB, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writel(i32 0, i64 %7)
  %9 = load i32, i32* @INT_STS_ALL, align 4
  %10 = load %struct.mxic_spi*, %struct.mxic_spi** %2, align 8
  %11 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INT_STS_EN, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  %16 = load %struct.mxic_spi*, %struct.mxic_spi** %2, align 8
  %17 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HC_EN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 0, i64 %20)
  %22 = load %struct.mxic_spi*, %struct.mxic_spi** %2, align 8
  %23 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LRD_CFG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 0, i64 %26)
  %28 = load %struct.mxic_spi*, %struct.mxic_spi** %2, align 8
  %29 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LRD_CTRL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 0, i64 %32)
  %34 = call i32 @HC_CFG_NIO(i32 1)
  %35 = load i32, i32* @HC_CFG_TYPE_SPI_NAND, align 4
  %36 = call i32 @HC_CFG_TYPE(i32 0, i32 %35)
  %37 = or i32 %34, %36
  %38 = call i32 @HC_CFG_SLV_ACT(i32 0)
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HC_CFG_MAN_CS_EN, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @HC_CFG_IDLE_SIO_LVL(i32 1)
  %43 = or i32 %41, %42
  %44 = load %struct.mxic_spi*, %struct.mxic_spi** %2, align 8
  %45 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HC_CFG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @HC_CFG_NIO(i32) #1

declare dso_local i32 @HC_CFG_TYPE(i32, i32) #1

declare dso_local i32 @HC_CFG_SLV_ACT(i32) #1

declare dso_local i32 @HC_CFG_IDLE_SIO_LVL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
