; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32 }
%struct.altera_spi = type { i32, i32, i32, i64, i64, i32, i32, i32 }

@ALTERA_SPI_CONTROL_IRRDY_MSK = common dso_local global i32 0, align 4
@ALTERA_SPI_CONTROL = common dso_local global i64 0, align 8
@ALTERA_SPI_STATUS = common dso_local global i64 0, align 8
@ALTERA_SPI_STATUS_RRDY_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @altera_spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_spi_txrx(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.altera_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %9 = call %struct.altera_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.altera_spi* %9, %struct.altera_spi** %7, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %14 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %19 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %21 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DIV_ROUND_UP(i32 %24, i32 8)
  %26 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %27 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %32 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %30, %33
  %35 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %36 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %38 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %3
  %42 = load i32, i32* @ALTERA_SPI_CONTROL_IRRDY_MSK, align 4
  %43 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %44 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %48 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %51 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ALTERA_SPI_CONTROL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %57 = call i32 @altera_spi_tx_word(%struct.altera_spi* %56)
  br label %89

58:                                               ; preds = %3
  br label %59

59:                                               ; preds = %83, %58
  %60 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %61 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %64 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %59
  %68 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %69 = call i32 @altera_spi_tx_word(%struct.altera_spi* %68)
  br label %70

70:                                               ; preds = %81, %67
  %71 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %72 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ALTERA_SPI_STATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  %77 = load i32, i32* @ALTERA_SPI_STATUS_RRDY_MSK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = call i32 (...) @cpu_relax()
  br label %70

83:                                               ; preds = %70
  %84 = load %struct.altera_spi*, %struct.altera_spi** %7, align 8
  %85 = call i32 @altera_spi_rx_word(%struct.altera_spi* %84)
  br label %59

86:                                               ; preds = %59
  %87 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %88 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %87)
  br label %89

89:                                               ; preds = %86, %41
  %90 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %91 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  ret i32 %92
}

declare dso_local %struct.altera_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @altera_spi_tx_word(%struct.altera_spi*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @altera_spi_rx_word(%struct.altera_spi*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
