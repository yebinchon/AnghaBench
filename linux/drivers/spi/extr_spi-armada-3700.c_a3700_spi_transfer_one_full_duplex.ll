; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_transfer_one_full_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_transfer_one_full_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.a3700_spi = type { i32, i32, i32*, i32 }

@A3700_SPI_DATA_OUT_REG = common dso_local global i32 0, align 4
@A3700_SPI_IF_CTRL_REG = common dso_local global i32 0, align 4
@A3700_SPI_XFER_DONE = common dso_local global i32 0, align 4
@A3700_SPI_DATA_IN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @a3700_spi_transfer_one_full_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3700_spi_transfer_one_full_duplex(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.a3700_spi*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.a3700_spi* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.a3700_spi* %10, %struct.a3700_spi** %7, align 8
  %11 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %12 = call i32 @a3700_spi_fifo_mode_set(%struct.a3700_spi* %11, i32 0)
  br label %13

13:                                               ; preds = %56, %3
  %14 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %15 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %89

18:                                               ; preds = %13
  %19 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %20 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %25 = call i32 @a3700_spi_bytelen_set(%struct.a3700_spi* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %28 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %33 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %38 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %43 = load i32, i32* @A3700_SPI_DATA_OUT_REG, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @spireg_write(%struct.a3700_spi* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %54, %41
  %47 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %48 = load i32, i32* @A3700_SPI_IF_CTRL_REG, align 4
  %49 = call i32 @spireg_read(%struct.a3700_spi* %47, i32 %48)
  %50 = load i32, i32* @A3700_SPI_XFER_DONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 (...) @cpu_relax()
  br label %46

56:                                               ; preds = %46
  %57 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %58 = load i32, i32* @A3700_SPI_DATA_IN_REG, align 4
  %59 = call i32 @spireg_read(%struct.a3700_spi* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %61 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %64 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %62, i32* %8, i32 %65)
  %67 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %68 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %71 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %75 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %78 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = sext i32 %76 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %78, align 8
  %82 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %83 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.a3700_spi*, %struct.a3700_spi** %7, align 8
  %86 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %13

89:                                               ; preds = %13
  %90 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %91 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %90)
  ret i32 0
}

declare dso_local %struct.a3700_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @a3700_spi_fifo_mode_set(%struct.a3700_spi*, i32) #1

declare dso_local i32 @a3700_spi_bytelen_set(%struct.a3700_spi*, i32) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
