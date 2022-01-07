; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_spi = type { i32 }

@SIFIVE_SPI_REG_IP = common dso_local global i32 0, align 4
@SIFIVE_SPI_IP_TXWM = common dso_local global i32 0, align 4
@SIFIVE_SPI_IP_RXWM = common dso_local global i32 0, align 4
@SIFIVE_SPI_REG_IE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sifive_spi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sifive_spi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sifive_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sifive_spi*
  store %struct.sifive_spi* %9, %struct.sifive_spi** %6, align 8
  %10 = load %struct.sifive_spi*, %struct.sifive_spi** %6, align 8
  %11 = load i32, i32* @SIFIVE_SPI_REG_IP, align 4
  %12 = call i32 @sifive_spi_read(%struct.sifive_spi* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SIFIVE_SPI_IP_TXWM, align 4
  %15 = load i32, i32* @SIFIVE_SPI_IP_RXWM, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.sifive_spi*, %struct.sifive_spi** %6, align 8
  %21 = load i32, i32* @SIFIVE_SPI_REG_IE, align 4
  %22 = call i32 @sifive_spi_write(%struct.sifive_spi* %20, i32 %21, i32 0)
  %23 = load %struct.sifive_spi*, %struct.sifive_spi** %6, align 8
  %24 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %23, i32 0, i32 0
  %25 = call i32 @complete(i32* %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @sifive_spi_read(%struct.sifive_spi*, i32) #1

declare dso_local i32 @sifive_spi_write(%struct.sifive_spi*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
