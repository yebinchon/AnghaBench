; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_rxirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_rxirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efm32_spi_ddata = type { i64, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@REG_STATUS_RXDATAV = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@REG_IEN = common dso_local global i32 0, align 4
@REG_IF_RXDATAV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @efm32_spi_rxirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_spi_rxirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.efm32_spi_ddata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.efm32_spi_ddata*
  store %struct.efm32_spi_ddata* %9, %struct.efm32_spi_ddata** %5, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %12 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  br label %14

14:                                               ; preds = %28, %2
  %15 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %16 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %21 = load i32, i32* @REG_STATUS, align 4
  %22 = call i32 @efm32_spi_read32(%struct.efm32_spi_ddata* %20, i32 %21)
  %23 = load i32, i32* @REG_STATUS_RXDATAV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %19, %14
  %27 = phi i1 [ false, %14 ], [ %25, %19 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %30 = call i32 @efm32_spi_rx_u8(%struct.efm32_spi_ddata* %29)
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %6, align 4
  br label %14

32:                                               ; preds = %26
  %33 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %34 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %39 = load i32, i32* @REG_IEN, align 4
  %40 = call i32 @efm32_spi_read32(%struct.efm32_spi_ddata* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @REG_IF_RXDATAV, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @REG_IEN, align 4
  %48 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %45, i32 %46, i32 %47)
  %49 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %50 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %49, i32 0, i32 2
  %51 = call i32 @complete(i32* %50)
  br label %52

52:                                               ; preds = %37, %32
  %53 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %54 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @efm32_spi_read32(%struct.efm32_spi_ddata*, i32) #1

declare dso_local i32 @efm32_spi_rx_u8(%struct.efm32_spi_ddata*) #1

declare dso_local i32 @efm32_spi_write32(%struct.efm32_spi_ddata*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
