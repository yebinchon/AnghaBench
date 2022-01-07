; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i64, i32, i32 }
%struct.bcm2835aux_spi = type { i64*, i64, i64, i64, i32, i32, i32 }

@BCM2835_AUX_SPI_CNTL0_SPEED_MAX = common dso_local global i64 0, align 8
@BCM2835_AUX_SPI_CNTL0_SPEED = common dso_local global i64 0, align 8
@BCM2835_AUX_SPI_CNTL0_SPEED_SHIFT = common dso_local global i64 0, align 8
@polling_limit_us = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @bcm2835aux_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835aux_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.bcm2835aux_spi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %15 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %16 = call %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master* %15)
  store %struct.bcm2835aux_spi* %16, %struct.bcm2835aux_spi** %8, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %21 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @clk_get_rate(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = udiv i64 %25, 2
  %27 = icmp uge i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %49

29:                                               ; preds = %3
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = mul i64 2, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @DIV_ROUND_UP(i64 %33, i32 %36)
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @BCM2835_AUX_SPI_CNTL0_SPEED_MAX, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i64, i64* @BCM2835_AUX_SPI_CNTL0_SPEED_MAX, align 8
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %43, %32
  br label %48

46:                                               ; preds = %29
  %47 = load i64, i64* @BCM2835_AUX_SPI_CNTL0_SPEED_MAX, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %46, %45
  br label %49

49:                                               ; preds = %48, %28
  %50 = load i64, i64* @BCM2835_AUX_SPI_CNTL0_SPEED, align 8
  %51 = xor i64 %50, -1
  %52 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %53 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, %51
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @BCM2835_AUX_SPI_CNTL0_SPEED_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %62 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %60
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  %70 = mul i64 2, %69
  %71 = udiv i64 %67, %70
  store i64 %71, i64* %12, align 8
  %72 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %73 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %76 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %81 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %83 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %86 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %88 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %91 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %8, align 8
  %93 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @polling_limit_us, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %49
  %97 = load i32, i32* @polling_limit_us, align 4
  %98 = sdiv i32 9000000, %97
  br label %100

99:                                               ; preds = %49
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i32 [ %98, %96 ], [ 0, %99 ]
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* %13, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = udiv i64 %106, %107
  br label %110

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i64 [ %108, %105 ], [ 1, %109 ]
  store i64 %111, i64* %14, align 8
  %112 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %113 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %14, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %119 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %120 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %121 = call i32 @bcm2835aux_spi_transfer_one_poll(%struct.spi_master* %118, %struct.spi_device* %119, %struct.spi_transfer* %120)
  store i32 %121, i32* %4, align 4
  br label %127

122:                                              ; preds = %110
  %123 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %124 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %125 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %126 = call i32 @bcm2835aux_spi_transfer_one_irq(%struct.spi_master* %123, %struct.spi_device* %124, %struct.spi_transfer* %125)
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %122, %117
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @bcm2835aux_spi_transfer_one_poll(%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @bcm2835aux_spi_transfer_one_irq(%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
