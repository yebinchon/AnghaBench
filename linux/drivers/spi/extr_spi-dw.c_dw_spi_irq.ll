; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.dw_spi = type { i32 (%struct.dw_spi*)* }

@DW_SPI_ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SPI_INT_TXEI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_spi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_spi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca %struct.dw_spi*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.spi_controller*
  store %struct.spi_controller* %10, %struct.spi_controller** %6, align 8
  %11 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %12 = call %struct.dw_spi* @spi_controller_get_devdata(%struct.spi_controller* %11)
  store %struct.dw_spi* %12, %struct.dw_spi** %7, align 8
  %13 = load %struct.dw_spi*, %struct.dw_spi** %7, align 8
  %14 = load i32, i32* @DW_SPI_ISR, align 4
  %15 = call i32 @dw_readl(%struct.dw_spi* %13, i32 %14)
  %16 = and i32 %15, 63
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %23 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.dw_spi*, %struct.dw_spi** %7, align 8
  %28 = load i32, i32* @SPI_INT_TXEI, align 4
  %29 = call i32 @spi_mask_intr(%struct.dw_spi* %27, i32 %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load %struct.dw_spi*, %struct.dw_spi** %7, align 8
  %33 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %32, i32 0, i32 0
  %34 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %33, align 8
  %35 = load %struct.dw_spi*, %struct.dw_spi** %7, align 8
  %36 = call i32 %34(%struct.dw_spi* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %26, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.dw_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @dw_readl(%struct.dw_spi*, i32) #1

declare dso_local i32 @spi_mask_intr(%struct.dw_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
