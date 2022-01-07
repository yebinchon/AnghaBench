; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_qspi = type { i32, i64 }

@QSPI_SR = common dso_local global i64 0, align 8
@SR_TEF = common dso_local global i32 0, align 4
@SR_TCF = common dso_local global i32 0, align 4
@QSPI_CR = common dso_local global i64 0, align 8
@CR_TCIE = common dso_local global i32 0, align 4
@CR_TEIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_qspi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_qspi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm32_qspi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.stm32_qspi*
  store %struct.stm32_qspi* %9, %struct.stm32_qspi** %5, align 8
  %10 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %11 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QSPI_SR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl_relaxed(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SR_TEF, align 4
  %18 = load i32, i32* @SR_TCF, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %24 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QSPI_CR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @CR_TCIE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* @CR_TEIE, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QSPI_CR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %36, i64 %41)
  %43 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %44 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %43, i32 0, i32 0
  %45 = call i32 @complete(i32* %44)
  br label %46

46:                                               ; preds = %22, %2
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
