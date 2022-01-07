; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_qspi = type { i32, i32, i64 }

@QSPI_SR = common dso_local global i64 0, align 8
@QSPI_IMR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@QSPI_SR_CMD_COMPLETED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_qspi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_qspi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atmel_qspi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.atmel_qspi*
  store %struct.atmel_qspi* %11, %struct.atmel_qspi** %6, align 8
  %12 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %13 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QSPI_SR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %19 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QSPI_IMR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %38 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @QSPI_SR_CMD_COMPLETED, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @QSPI_SR_CMD_COMPLETED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %46 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %45, i32 0, i32 1
  %47 = call i32 @complete(i32* %46)
  br label %48

48:                                               ; preds = %44, %31
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %29
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
