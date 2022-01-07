; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_qspi_read_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_qspi_read_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_qspi = type { i32, i64, i32, i32 }
%struct.spi_transfer = type { i32, i32, i32* }

@QSPI_RD_DUAL = common dso_local global i32 0, align 4
@QSPI_RD_QUAD = common dso_local global i32 0, align 4
@QSPI_RD_SNGL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"rx cmd %08x dc %08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@QSPI_SPI_CMD_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"read timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@QSPI_SPI_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_qspi*, %struct.spi_transfer*, i32)* @qspi_read_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_read_msg(%struct.ti_qspi* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_qspi*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ti_qspi* %0, %struct.ti_qspi** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %15 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @QSPI_RD_DUAL, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* @QSPI_RD_QUAD, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @QSPI_RD_SNGL, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %24, %20
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 3
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %96, %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %104

40:                                               ; preds = %37
  %41 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %42 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %46 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %50 = call i64 @qspi_is_busy(%struct.ti_qspi* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %105

55:                                               ; preds = %40
  %56 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @QSPI_SPI_CMD_REG, align 4
  %59 = call i32 @ti_qspi_write(%struct.ti_qspi* %56, i32 %57, i32 %58)
  %60 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %61 = call i64 @ti_qspi_poll_wc(%struct.ti_qspi* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %65 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %105

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %96 [
    i32 1, label %72
    i32 2, label %80
    i32 4, label %88
  ]

72:                                               ; preds = %70
  %73 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %74 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @QSPI_SPI_DATA_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readb(i64 %77)
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %96

80:                                               ; preds = %70
  %81 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %82 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @QSPI_SPI_DATA_REG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readw(i64 %85)
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %96

88:                                               ; preds = %70
  %89 = load %struct.ti_qspi*, %struct.ti_qspi** %5, align 8
  %90 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @QSPI_SPI_DATA_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @readl(i64 %93)
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %70, %88, %80, %72
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %10, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %37

104:                                              ; preds = %37
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %63, %52
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @qspi_is_busy(%struct.ti_qspi*) #1

declare dso_local i32 @ti_qspi_write(%struct.ti_qspi*, i32, i32) #1

declare dso_local i64 @ti_qspi_poll_wc(%struct.ti_qspi*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
