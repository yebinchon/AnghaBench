; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_spi_priv = type { i32, i32, i32, i64, i32, i64 }

@XLP_SPI_STATUS = common dso_local global i32 0, align 4
@XLP_SPI_STAT_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@XLP_SPI_TX_INT = common dso_local global i32 0, align 4
@XLP_SPI_TX_UF = common dso_local global i32 0, align 4
@XLP_SPI_RX_INT = common dso_local global i32 0, align 4
@XLP_SPI_RX_OF = common dso_local global i32 0, align 4
@XLP_SPI_XFR_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xlp_spi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_spi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xlp_spi_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.xlp_spi_priv*
  store %struct.xlp_spi_priv* %9, %struct.xlp_spi_priv** %6, align 8
  %10 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %11 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %12 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @XLP_SPI_STATUS, align 4
  %15 = call i32 @xlp_spi_reg_read(%struct.xlp_spi_priv* %10, i32 %13, i32 %14)
  %16 = load i32, i32* @XLP_SPI_STAT_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %88

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @XLP_SPI_TX_INT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %29 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %34 = call i32 @xlp_spi_fill_txfifo(%struct.xlp_spi_priv* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @XLP_SPI_TX_UF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %42 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @XLP_SPI_RX_INT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %53 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %58 = call i32 @xlp_spi_read_rxfifo(%struct.xlp_spi_priv* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @XLP_SPI_RX_OF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %66 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %72 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %73 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XLP_SPI_STATUS, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @xlp_spi_reg_write(%struct.xlp_spi_priv* %71, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @XLP_SPI_XFR_DONE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %6, align 8
  %84 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %83, i32 0, i32 0
  %85 = call i32 @complete(i32* %84)
  br label %86

86:                                               ; preds = %82, %70
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %20
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @xlp_spi_reg_read(%struct.xlp_spi_priv*, i32, i32) #1

declare dso_local i32 @xlp_spi_fill_txfifo(%struct.xlp_spi_priv*) #1

declare dso_local i32 @xlp_spi_read_rxfifo(%struct.xlp_spi_priv*) #1

declare dso_local i32 @xlp_spi_reg_write(%struct.xlp_spi_priv*, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
