; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rb4xx.c_do_spi_clk_two.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rb4xx.c_do_spi_clk_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb4xx_spi = type { i32 }

@AR71XX_SPI_IOC_DO = common dso_local global i32 0, align 4
@AR71XX_SPI_IOC_CS2 = common dso_local global i32 0, align 4
@AR71XX_SPI_REG_IOC = common dso_local global i32 0, align 4
@AR71XX_SPI_IOC_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb4xx_spi*, i32, i32)* @do_spi_clk_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_spi_clk_two(%struct.rb4xx_spi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rb4xx_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rb4xx_spi* %0, %struct.rb4xx_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @BIT(i32 1)
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @AR71XX_SPI_IOC_DO, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @BIT(i32 0)
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @AR71XX_SPI_IOC_CS2, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %4, align 8
  %28 = load i32, i32* @AR71XX_SPI_REG_IOC, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rb4xx_write(%struct.rb4xx_spi* %27, i32 %28, i32 %29)
  %31 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %4, align 8
  %32 = load i32, i32* @AR71XX_SPI_REG_IOC, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AR71XX_SPI_IOC_CLK, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @rb4xx_write(%struct.rb4xx_spi* %31, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rb4xx_write(%struct.rb4xx_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
