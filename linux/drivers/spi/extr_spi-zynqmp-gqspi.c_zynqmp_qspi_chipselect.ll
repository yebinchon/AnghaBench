; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.zynqmp_qspi = type { i32, i32, i32 }

@GQSPI_GENFIFO_MODE_SPI = common dso_local global i32 0, align 4
@GQSPI_GENFIFO_CS_SETUP = common dso_local global i32 0, align 4
@GQSPI_GENFIFO_CS_HOLD = common dso_local global i32 0, align 4
@GQSPI_GEN_FIFO_OFST = common dso_local global i32 0, align 4
@GQSPI_CONFIG_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_START_GEN_FIFO_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@GQSPI_ISR_OFST = common dso_local global i32 0, align 4
@GQSPI_ISR_GENFIFOEMPTY_MASK = common dso_local global i32 0, align 4
@GQSPI_ISR_TXEMPTY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Chip select timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @zynqmp_qspi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_qspi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zynqmp_qspi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.zynqmp_qspi* @spi_master_get_devdata(i32 %11)
  store %struct.zynqmp_qspi* %12, %struct.zynqmp_qspi** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @GQSPI_GENFIFO_MODE_SPI, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %17 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %25 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @GQSPI_GENFIFO_CS_SETUP, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @GQSPI_GENFIFO_CS_HOLD, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %38 = load i32, i32* @GQSPI_GEN_FIFO_OFST, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %37, i32 %38, i32 %39)
  %41 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %42 = load i32, i32* @GQSPI_GEN_FIFO_OFST, align 4
  %43 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %41, i32 %42, i32 0)
  %44 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %45 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %46 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %47 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %48 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %46, i32 %47)
  %49 = load i32, i32* @GQSPI_CFG_START_GEN_FIFO_MASK, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %44, i32 %45, i32 %50)
  %52 = load i64, i64* @jiffies, align 8
  %53 = call i64 @msecs_to_jiffies(i32 1000)
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %72, %36
  %56 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %57 = load i32, i32* @GQSPI_ISR_OFST, align 4
  %58 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @GQSPI_ISR_GENFIFOEMPTY_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @GQSPI_ISR_TXEMPTY_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %78

69:                                               ; preds = %63, %55
  %70 = call i32 (...) @cpu_relax()
  br label %71

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @time_after_eq(i64 %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %55, label %78

78:                                               ; preds = %72, %68
  %79 = load i64, i64* @jiffies, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @time_after_eq(i64 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %5, align 8
  %85 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %78
  ret void
}

declare dso_local %struct.zynqmp_qspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi*, i32, i32) #1

declare dso_local i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
