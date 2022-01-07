; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_irq_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_irq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.stm32_spi = type { i64, i64, i64, i32, i64, i64, i32, i32 }

@STM32F4_SPI_SR = common dso_local global i64 0, align 8
@STM32F4_SPI_SR_BSY = common dso_local global i32 0, align 4
@SPI_SIMPLEX_TX = common dso_local global i64 0, align 8
@SPI_3WIRE_TX = common dso_local global i64 0, align 8
@STM32F4_SPI_SR_OVR = common dso_local global i32 0, align 4
@STM32F4_SPI_SR_RXNE = common dso_local global i32 0, align 4
@STM32F4_SPI_SR_TXE = common dso_local global i32 0, align 4
@SPI_FULL_DUPLEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"spurious IT (sr=0x%08x)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Overrun: received value discarded\0A\00", align 1
@STM32F4_SPI_DR = common dso_local global i64 0, align 8
@STM32F4_SPI_CR2 = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2_TXEIE = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2_RXNEIE = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2_ERRIE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32f4_spi_irq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_spi_irq_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.stm32_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.spi_master*
  store %struct.spi_master* %13, %struct.spi_master** %6, align 8
  %14 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %15 = call %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master* %14)
  store %struct.stm32_spi* %15, %struct.stm32_spi** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %17 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %16, i32 0, i32 3
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %21 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STM32F4_SPI_SR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @STM32F4_SPI_SR_BSY, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %31 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %2
  %35 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %36 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPI_SIMPLEX_TX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %42 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPI_3WIRE_TX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @STM32F4_SPI_SR_OVR, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @STM32F4_SPI_SR_RXNE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @STM32F4_SPI_SR_TXE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %46, %40, %2
  %57 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %58 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %56
  %62 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %63 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SPI_FULL_DUPLEX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i32, i32* @STM32F4_SPI_SR_TXE, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @STM32F4_SPI_SR_RXNE, align 4
  %73 = load i32, i32* @STM32F4_SPI_SR_OVR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %67, %61, %56
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %84 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %89 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %88, i32 0, i32 3
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* @IRQ_NONE, align 4
  store i32 %92, i32* %3, align 4
  br label %176

93:                                               ; preds = %77
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @STM32F4_SPI_SR_OVR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %100 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %104 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @STM32F4_SPI_DR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @readl_relaxed(i64 %107)
  %109 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %110 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @STM32F4_SPI_SR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @readl_relaxed(i64 %113)
  store i32 1, i32* %11, align 4
  br label %153

115:                                              ; preds = %93
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @STM32F4_SPI_SR_TXE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %122 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %127 = call i32 @stm32f4_spi_write_tx(%struct.stm32_spi* %126)
  br label %128

128:                                              ; preds = %125, %120
  %129 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %130 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 1, i32* %11, align 4
  br label %134

134:                                              ; preds = %133, %128
  br label %135

135:                                              ; preds = %134, %115
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @STM32F4_SPI_SR_RXNE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %142 = call i32 @stm32f4_spi_read_rx(%struct.stm32_spi* %141)
  %143 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %144 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 1, i32* %11, align 4
  br label %151

148:                                              ; preds = %140
  %149 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %150 = call i32 @stm32f4_spi_write_tx(%struct.stm32_spi* %149)
  br label %151

151:                                              ; preds = %148, %147
  br label %152

152:                                              ; preds = %151, %135
  br label %153

153:                                              ; preds = %152, %98
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %158 = load i32, i32* @STM32F4_SPI_CR2, align 4
  %159 = load i32, i32* @STM32F4_SPI_CR2_TXEIE, align 4
  %160 = load i32, i32* @STM32F4_SPI_CR2_RXNEIE, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @STM32F4_SPI_CR2_ERRIE, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %157, i32 %158, i32 %163)
  %165 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %166 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %165, i32 0, i32 3
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  %169 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %169, i32* %3, align 4
  br label %176

170:                                              ; preds = %153
  %171 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %172 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %171, i32 0, i32 3
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  %175 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %170, %156, %82
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @stm32f4_spi_write_tx(%struct.stm32_spi*) #1

declare dso_local i32 @stm32f4_spi_read_rx(%struct.stm32_spi*) #1

declare dso_local i32 @stm32_spi_clr_bits(%struct.stm32_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
