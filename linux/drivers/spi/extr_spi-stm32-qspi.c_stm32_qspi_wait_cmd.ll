; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_wait_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_wait_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_qspi = type { i64, i32 }
%struct.spi_mem_op = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QSPI_SR = common dso_local global i64 0, align 8
@SR_TCF = common dso_local global i32 0, align 4
@QSPI_CR = common dso_local global i64 0, align 8
@CR_TCIE = common dso_local global i32 0, align 4
@CR_TEIE = common dso_local global i32 0, align 4
@STM32_COMP_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SR_TEF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FCR_CTCF = common dso_local global i32 0, align 4
@FCR_CTEF = common dso_local global i32 0, align 4
@QSPI_FCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_qspi*, %struct.spi_mem_op*)* @stm32_qspi_wait_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_qspi_wait_cmd(%struct.stm32_qspi* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_qspi*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_qspi* %0, %struct.stm32_qspi** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %10 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %16 = call i32 @stm32_qspi_wait_nobusy(%struct.stm32_qspi* %15)
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %19 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QSPI_SR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  %24 = load i32, i32* @SR_TCF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %74

28:                                               ; preds = %17
  %29 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %30 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %29, i32 0, i32 1
  %31 = call i32 @reinit_completion(i32* %30)
  %32 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @QSPI_CR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CR_TCIE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CR_TEIE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QSPI_CR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 %42, i64 %47)
  %49 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %50 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %49, i32 0, i32 1
  %51 = load i32, i32* @STM32_COMP_TIMEOUT_MS, align 4
  %52 = call i32 @msecs_to_jiffies(i32 %51)
  %53 = call i32 @wait_for_completion_timeout(i32* %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %28
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %73

58:                                               ; preds = %28
  %59 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %60 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @QSPI_SR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl_relaxed(i64 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SR_TEF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %58
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %27
  %75 = load i32, i32* @FCR_CTCF, align 4
  %76 = load i32, i32* @FCR_CTEF, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %79 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @QSPI_FCR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel_relaxed(i32 %77, i64 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %74, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @stm32_qspi_wait_nobusy(%struct.stm32_qspi*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
