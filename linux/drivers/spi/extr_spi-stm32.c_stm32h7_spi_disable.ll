; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i64, i32, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"disable controller\0A\00", align 1
@STM32H7_SPI_CR1 = common dso_local global i64 0, align 8
@STM32H7_SPI_CR1_SPE = common dso_local global i32 0, align 4
@STM32H7_SPI_SR = common dso_local global i64 0, align 8
@STM32H7_SPI_SR_EOT = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1_CSTART = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1_CSUSP = common dso_local global i32 0, align 4
@STM32H7_SPI_SR_SUSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Suspend request timeout\0A\00", align 1
@STM32H7_SPI_CFG1 = common dso_local global i64 0, align 8
@STM32H7_SPI_CFG1_TXDMAEN = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG1_RXDMAEN = common dso_local global i32 0, align 4
@STM32H7_SPI_IER = common dso_local global i64 0, align 8
@STM32H7_SPI_IFCR_ALL = common dso_local global i32 0, align 4
@STM32H7_SPI_IFCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spi*)* @stm32h7_spi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32h7_spi_disable(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  %6 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %7 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %11 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %10, i32 0, i32 1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %15 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STM32H7_SPI_CR1, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @STM32H7_SPI_CR1_SPE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %26 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %25, i32 0, i32 1
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %156

29:                                               ; preds = %1
  %30 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %31 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STM32H7_SPI_SR, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @STM32H7_SPI_SR_EOT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @readl_relaxed_poll_timeout_atomic(i64 %34, i32 %35, i32 %41, i32 10, i32 100000)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %29
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @STM32H7_SPI_CR1_CSTART, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @STM32H7_SPI_CR1_CSUSP, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %54 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @STM32H7_SPI_CR1, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  %59 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %60 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @STM32H7_SPI_SR, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @STM32H7_SPI_SR_SUSP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @readl_relaxed_poll_timeout_atomic(i64 %63, i32 %64, i32 %70, i32 10, i32 100000)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %49
  %74 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %75 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %49
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %29
  %81 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %82 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  %86 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %87 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %92 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %97 = call i32 @stm32h7_spi_read_rxfifo(%struct.stm32_spi* %96, i32 1)
  br label %98

98:                                               ; preds = %95, %90, %85, %80
  %99 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %100 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %105 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %110 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @dmaengine_terminate_all(i64 %111)
  br label %113

113:                                              ; preds = %108, %103, %98
  %114 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %115 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %120 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %125 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @dmaengine_terminate_all(i64 %126)
  br label %128

128:                                              ; preds = %123, %118, %113
  %129 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %130 = load i64, i64* @STM32H7_SPI_CR1, align 8
  %131 = load i32, i32* @STM32H7_SPI_CR1_SPE, align 4
  %132 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %129, i64 %130, i32 %131)
  %133 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %134 = load i64, i64* @STM32H7_SPI_CFG1, align 8
  %135 = load i32, i32* @STM32H7_SPI_CFG1_TXDMAEN, align 4
  %136 = load i32, i32* @STM32H7_SPI_CFG1_RXDMAEN, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %133, i64 %134, i32 %137)
  %139 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %140 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @STM32H7_SPI_IER, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel_relaxed(i32 0, i64 %143)
  %145 = load i32, i32* @STM32H7_SPI_IFCR_ALL, align 4
  %146 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %147 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @STM32H7_SPI_IFCR, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel_relaxed(i32 %145, i64 %150)
  %152 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %153 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %152, i32 0, i32 1
  %154 = load i64, i64* %3, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  br label %156

156:                                              ; preds = %128, %24
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @readl_relaxed_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @stm32h7_spi_read_rxfifo(%struct.stm32_spi*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i64) #1

declare dso_local i32 @stm32_spi_clr_bits(%struct.stm32_spi*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
