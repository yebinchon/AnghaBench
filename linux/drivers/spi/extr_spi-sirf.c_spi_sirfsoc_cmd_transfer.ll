; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_cmd_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_cmd_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.spi_transfer = type { i32 }
%struct.sirfsoc_spi = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@SIRFSOC_SPI_FIFO_RESET = common dso_local global i32 0, align 4
@SIRFSOC_SPI_FIFO_START = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SIRFSOC_MAX_CMD_BYTES = common dso_local global i32 0, align 4
@SIRFSOC_SPI_FRM_END_INT_EN = common dso_local global i32 0, align 4
@SIRFSOC_SPI_CMD_TX_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cmd transfer timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @spi_sirfsoc_cmd_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_sirfsoc_cmd_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.sirfsoc_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %8 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sirfsoc_spi* @spi_master_get_devdata(i32 %14)
  store %struct.sirfsoc_spi* %15, %struct.sirfsoc_spi** %5, align 8
  %16 = load i32, i32* @SIRFSOC_SPI_FIFO_RESET, align 4
  %17 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %18 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %19, %24
  %26 = call i32 @writel(i32 %16, i64 %25)
  %27 = load i32, i32* @SIRFSOC_SPI_FIFO_START, align 4
  %28 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %29 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %32 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %30, %35
  %37 = call i32 @writel(i32 %27, i64 %36)
  %38 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %39 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32* %7, i32 %40, i32 %43)
  %45 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %46 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %66

49:                                               ; preds = %2
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SPI_LSB_FIRST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @cpu_to_be32(i32 %57)
  %59 = load i32, i32* @SIRFSOC_MAX_CMD_BYTES, align 4
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = mul nsw i32 %63, 8
  %65 = ashr i32 %58, %64
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %56, %49, %2
  %67 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %68 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %73 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SPI_LSB_FIRST, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 65535
  %86 = shl i32 %85, 16
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 16
  %89 = or i32 %86, %88
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %83, %76, %71, %66
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %93 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %96 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %94, %99
  %101 = call i32 @writel(i32 %91, i64 %100)
  %102 = load i32, i32* @SIRFSOC_SPI_FRM_END_INT_EN, align 4
  %103 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %104 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %107 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %105, %110
  %112 = call i32 @writel(i32 %102, i64 %111)
  %113 = load i32, i32* @SIRFSOC_SPI_CMD_TX_EN, align 4
  %114 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %115 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %118 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %116, %121
  %123 = call i32 @writel(i32 %113, i64 %122)
  %124 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %125 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %124, i32 0, i32 2
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @wait_for_completion_timeout(i32* %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %90
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 1
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %141

133:                                              ; preds = %90
  %134 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %135 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %138 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %133, %129
  ret void
}

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
