; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.altera_spi = type { i64, i64, i64, i32 }

@ALTERA_SPI_CONTROL_IRRDY_MSK = common dso_local global i32 0, align 4
@ALTERA_SPI_CONTROL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @altera_spi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_spi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.altera_spi*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.spi_master*
  store %struct.spi_master* %8, %struct.spi_master** %5, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %10 = call %struct.altera_spi* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.altera_spi* %10, %struct.altera_spi** %6, align 8
  %11 = load %struct.altera_spi*, %struct.altera_spi** %6, align 8
  %12 = call i32 @altera_spi_rx_word(%struct.altera_spi* %11)
  %13 = load %struct.altera_spi*, %struct.altera_spi** %6, align 8
  %14 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.altera_spi*, %struct.altera_spi** %6, align 8
  %17 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.altera_spi*, %struct.altera_spi** %6, align 8
  %22 = call i32 @altera_spi_tx_word(%struct.altera_spi* %21)
  br label %41

23:                                               ; preds = %2
  %24 = load i32, i32* @ALTERA_SPI_CONTROL_IRRDY_MSK, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.altera_spi*, %struct.altera_spi** %6, align 8
  %27 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.altera_spi*, %struct.altera_spi** %6, align 8
  %31 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.altera_spi*, %struct.altera_spi** %6, align 8
  %34 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ALTERA_SPI_CONTROL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %40 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %39)
  br label %41

41:                                               ; preds = %23, %20
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local %struct.altera_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @altera_spi_rx_word(%struct.altera_spi*) #1

declare dso_local i32 @altera_spi_tx_word(%struct.altera_spi*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
