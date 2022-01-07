; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_clr_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_clr_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spi*, i32, i32)* @stm32_spi_clr_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_spi_clr_bits(%struct.stm32_spi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stm32_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %8 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %9, %10
  %12 = call i32 @readl_relaxed(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %17 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @writel_relaxed(i32 %15, i32 %20)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
