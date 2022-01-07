; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm63xx-hsspi.c_bcm63xx_hsspi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm63xx-hsspi.c_bcm63xx_hsspi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_hsspi = type { i32, i64 }

@HSSPI_INT_STATUS_MASKED_REG = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@HSSPI_INT_CLEAR_ALL = common dso_local global i32 0, align 4
@HSSPI_INT_STATUS_REG = common dso_local global i64 0, align 8
@HSSPI_INT_MASK_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm63xx_hsspi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_hsspi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bcm63xx_hsspi*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.bcm63xx_hsspi*
  store %struct.bcm63xx_hsspi* %8, %struct.bcm63xx_hsspi** %6, align 8
  %9 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %6, align 8
  %10 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HSSPI_INT_STATUS_MASKED_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @__raw_readl(i64 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* @HSSPI_INT_CLEAR_ALL, align 4
  %20 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %6, align 8
  %21 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HSSPI_INT_STATUS_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @__raw_writel(i32 %19, i64 %24)
  %26 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %6, align 8
  %27 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HSSPI_INT_MASK_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @__raw_writel(i32 0, i64 %30)
  %32 = load %struct.bcm63xx_hsspi*, %struct.bcm63xx_hsspi** %6, align 8
  %33 = getelementptr inbounds %struct.bcm63xx_hsspi, %struct.bcm63xx_hsspi* %32, i32 0, i32 0
  %34 = call i32 @complete(i32* %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %18, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
