; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.mt7621_spi = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"speed:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rate-1:%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MT7621_SPI_MASTER = common dso_local global i32 0, align 4
@MASTER_RS_CLK_SEL = common dso_local global i32 0, align 4
@MASTER_RS_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@MT7621_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@MT7621_CPHA = common dso_local global i32 0, align 4
@MT7621_CPOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32)* @mt7621_spi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_spi_prepare(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7621_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %10 = call %struct.mt7621_spi* @spidev_to_mt7621_spi(%struct.spi_device* %9)
  store %struct.mt7621_spi* %10, %struct.mt7621_spi** %6, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.mt7621_spi*, %struct.mt7621_spi** %6, align 8
  %16 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DIV_ROUND_UP(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 4097
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %75

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 2, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.mt7621_spi*, %struct.mt7621_spi** %6, align 8
  %35 = load i32, i32* @MT7621_SPI_MASTER, align 4
  %36 = call i32 @mt7621_spi_read(%struct.mt7621_spi* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @MASTER_RS_CLK_SEL, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 2
  %43 = load i32, i32* @MASTER_RS_CLK_SEL_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.mt7621_spi*, %struct.mt7621_spi** %6, align 8
  %49 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @MT7621_LSB_FIRST, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SPI_LSB_FIRST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %33
  %61 = load i32, i32* @MT7621_LSB_FIRST, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %33
  %65 = load i32, i32* @MT7621_CPHA, align 4
  %66 = load i32, i32* @MT7621_CPOL, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load %struct.mt7621_spi*, %struct.mt7621_spi** %6, align 8
  %72 = load i32, i32* @MT7621_SPI_MASTER, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @mt7621_spi_write(%struct.mt7621_spi* %71, i32 %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.mt7621_spi* @spidev_to_mt7621_spi(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mt7621_spi_read(%struct.mt7621_spi*, i32) #1

declare dso_local i32 @mt7621_spi_write(%struct.mt7621_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
