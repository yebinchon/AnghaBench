; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lp8841-rtc.c_spi_lp8841_rtc_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lp8841-rtc.c_spi_lp8841_rtc_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }
%struct.spi_lp8841_rtc = type { i32, i32 }

@SPI_LP8841_RTC_nWE = common dso_local global i32 0, align 4
@SPI_MASTER_NO_RX = common dso_local global i32 0, align 4
@SPI_MASTER_NO_TX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @spi_lp8841_rtc_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_lp8841_rtc_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.spi_lp8841_rtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %14 = call %struct.spi_lp8841_rtc* @spi_master_get_devdata(%struct.spi_master* %13)
  store %struct.spi_lp8841_rtc* %14, %struct.spi_lp8841_rtc** %7, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %3
  %27 = load i32, i32* @SPI_LP8841_RTC_nWE, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %7, align 8
  %30 = getelementptr inbounds %struct.spi_lp8841_rtc, %struct.spi_lp8841_rtc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %7, align 8
  %34 = getelementptr inbounds %struct.spi_lp8841_rtc, %struct.spi_lp8841_rtc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %7, align 8
  %37 = getelementptr inbounds %struct.spi_lp8841_rtc, %struct.spi_lp8841_rtc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writeb(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %46, %26
  %41 = load i32, i32* %8, align 4
  %42 = icmp ugt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  %49 = load i32, i32* %47, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %7, align 8
  %51 = load i32, i32* @SPI_MASTER_NO_RX, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @bitbang_txrx_be_cpha0_lsb(%struct.spi_lp8841_rtc* %50, i32 1, i32 0, i32 %51, i32 %52, i32 8)
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %8, align 4
  br label %40

56:                                               ; preds = %40
  br label %94

57:                                               ; preds = %3
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = load i32, i32* @SPI_LP8841_RTC_nWE, align 4
  %62 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %7, align 8
  %63 = getelementptr inbounds %struct.spi_lp8841_rtc, %struct.spi_lp8841_rtc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %7, align 8
  %67 = getelementptr inbounds %struct.spi_lp8841_rtc, %struct.spi_lp8841_rtc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %7, align 8
  %70 = getelementptr inbounds %struct.spi_lp8841_rtc, %struct.spi_lp8841_rtc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @writeb(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %79, %60
  %74 = load i32, i32* %8, align 4
  %75 = icmp ugt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @likely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %7, align 8
  %81 = load i32, i32* @SPI_MASTER_NO_TX, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @bitbang_txrx_be_cpha0_lsb(%struct.spi_lp8841_rtc* %80, i32 1, i32 0, i32 %81, i32 %82, i32 8)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %8, align 4
  br label %73

89:                                               ; preds = %73
  br label %93

90:                                               ; preds = %57
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %90, %89
  br label %94

94:                                               ; preds = %93, %56
  %95 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %96 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %95)
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local %struct.spi_lp8841_rtc* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bitbang_txrx_be_cpha0_lsb(%struct.spi_lp8841_rtc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
