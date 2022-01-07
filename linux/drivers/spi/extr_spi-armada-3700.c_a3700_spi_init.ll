; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a3700_spi = type { %struct.spi_master* }
%struct.spi_master = type { i32, i32 }

@A3700_SPI_IF_CFG_REG = common dso_local global i32 0, align 4
@A3700_SPI_SRST = common dso_local global i32 0, align 4
@A3700_SPI_TIMEOUT = common dso_local global i32 0, align 4
@A3700_SPI_IF_HDR_CNT_REG = common dso_local global i32 0, align 4
@A3700_SPI_IF_DIN_CNT_REG = common dso_local global i32 0, align 4
@A3700_SPI_INT_MASK_REG = common dso_local global i32 0, align 4
@A3700_SPI_INT_STAT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a3700_spi*)* @a3700_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3700_spi_init(%struct.a3700_spi* %0) #0 {
  %2 = alloca %struct.a3700_spi*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.a3700_spi* %0, %struct.a3700_spi** %2, align 8
  %7 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %8 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %7, i32 0, i32 0
  %9 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  store %struct.spi_master* %9, %struct.spi_master** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %11 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %12 = call i32 @spireg_read(%struct.a3700_spi* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @A3700_SPI_SRST, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %17 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @spireg_write(%struct.a3700_spi* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @A3700_SPI_TIMEOUT, align 4
  %21 = call i32 @udelay(i32 %20)
  %22 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %23 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %24 = call i32 @spireg_read(%struct.a3700_spi* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @A3700_SPI_SRST, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %30 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @spireg_write(%struct.a3700_spi* %29, i32 %30, i32 %31)
  %33 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %34 = call i32 @a3700_spi_auto_cs_unset(%struct.a3700_spi* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %45, %1
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %38 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @a3700_spi_deactivate_cs(%struct.a3700_spi* %42, i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %50 = call i32 @a3700_spi_fifo_mode_set(%struct.a3700_spi* %49, i32 1)
  %51 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %52 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %53 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @a3700_spi_mode_set(%struct.a3700_spi* %51, i32 %54)
  %56 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %57 = load i32, i32* @A3700_SPI_IF_HDR_CNT_REG, align 4
  %58 = call i32 @spireg_write(%struct.a3700_spi* %56, i32 %57, i32 0)
  %59 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %60 = load i32, i32* @A3700_SPI_IF_DIN_CNT_REG, align 4
  %61 = call i32 @spireg_write(%struct.a3700_spi* %59, i32 %60, i32 0)
  %62 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %63 = load i32, i32* @A3700_SPI_INT_MASK_REG, align 4
  %64 = call i32 @spireg_write(%struct.a3700_spi* %62, i32 %63, i32 0)
  %65 = load %struct.a3700_spi*, %struct.a3700_spi** %2, align 8
  %66 = load i32, i32* @A3700_SPI_INT_STAT_REG, align 4
  %67 = call i32 @spireg_write(%struct.a3700_spi* %65, i32 %66, i32 -1)
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @a3700_spi_auto_cs_unset(%struct.a3700_spi*) #1

declare dso_local i32 @a3700_spi_deactivate_cs(%struct.a3700_spi*, i32) #1

declare dso_local i32 @a3700_spi_fifo_mode_set(%struct.a3700_spi*, i32) #1

declare dso_local i32 @a3700_spi_mode_set(%struct.a3700_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
