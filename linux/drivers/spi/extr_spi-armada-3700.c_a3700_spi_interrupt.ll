; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.a3700_spi = type { i32, i32 }

@A3700_SPI_INT_STAT_REG = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@A3700_SPI_INT_MASK_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @a3700_spi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3700_spi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.a3700_spi*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.spi_master*
  store %struct.spi_master* %10, %struct.spi_master** %6, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %12 = call %struct.a3700_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.a3700_spi* %12, %struct.a3700_spi** %7, align 8
  %13 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %14 = load i32, i32* @A3700_SPI_INT_STAT_REG, align 4
  %15 = call i32 @spireg_read(%struct.a3700_spi* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %20 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %18
  %28 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %29 = load i32, i32* @A3700_SPI_INT_MASK_REG, align 4
  %30 = call i32 @spireg_write(%struct.a3700_spi* %28, i32 %29, i32 0)
  %31 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %32 = load i32, i32* @A3700_SPI_INT_STAT_REG, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @spireg_write(%struct.a3700_spi* %31, i32 %32, i32 %33)
  %35 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %36 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %35, i32 0, i32 1
  %37 = call i32 @complete(i32* %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %27, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.a3700_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
