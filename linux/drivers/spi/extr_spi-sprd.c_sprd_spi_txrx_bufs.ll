; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_txrx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_txrx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.sprd_spi = type { i64, i32, i32, i64 (%struct.sprd_spi*, i64)*, i64 (%struct.sprd_spi*, i64)* }

@SPRD_SPI_FIFO_SIZE = common dso_local global i64 0, align 8
@SPRD_SPI_TX_MODE = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPRD_SPI_RX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @sprd_spi_txrx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_txrx_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.sprd_spi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sprd_spi* @spi_controller_get_devdata(i32 %13)
  store %struct.sprd_spi* %14, %struct.sprd_spi** %5, align 8
  %15 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %16 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %128, %2
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %132

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @SPRD_SPI_FIFO_SIZE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @SPRD_SPI_FIFO_SIZE, align 8
  br label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %26, %25 ], [ %28, %27 ]
  store i64 %30, i64* %7, align 8
  %31 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %32 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SPRD_SPI_TX_MODE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %29
  %38 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @sprd_spi_set_tx_length(%struct.sprd_spi* %38, i64 %39)
  %41 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %42 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %41, i32 0, i32 4
  %43 = load i64 (%struct.sprd_spi*, i64)*, i64 (%struct.sprd_spi*, i64)** %42, align 8
  %44 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 %43(%struct.sprd_spi* %44, i64 %45)
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %52 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SPI_3WIRE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %37
  %58 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %59 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SPI_TX_DUAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57, %37
  %65 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %66 = call i32 @sprd_spi_tx_req(%struct.sprd_spi* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %70 = call i32 @sprd_spi_wait_for_tx_end(%struct.sprd_spi* %68, %struct.spi_transfer* %69)
  store i32 %70, i32* %8, align 4
  br label %106

71:                                               ; preds = %29
  %72 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @sprd_spi_set_rx_length(%struct.sprd_spi* %72, i64 %73)
  %75 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %76 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SPI_3WIRE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %71
  %82 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %83 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SPI_TX_DUAL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81, %71
  %89 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %90 = call i32 @sprd_spi_rx_req(%struct.sprd_spi* %89)
  br label %102

91:                                               ; preds = %81
  %92 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %93 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %92, i32 0, i32 4
  %94 = load i64 (%struct.sprd_spi*, i64)*, i64 (%struct.sprd_spi*, i64)** %93, align 8
  %95 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i64 %94(%struct.sprd_spi* %95, i64 %96)
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %91, %88
  %103 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %104 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %105 = call i32 @sprd_spi_wait_for_rx_end(%struct.sprd_spi* %103, %struct.spi_transfer* %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %102, %67
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %144

110:                                              ; preds = %106
  %111 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %112 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SPRD_SPI_RX_MODE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %119 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %118, i32 0, i32 3
  %120 = load i64 (%struct.sprd_spi*, i64)*, i64 (%struct.sprd_spi*, i64)** %119, align 8
  %121 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %122 = load i64, i64* %7, align 8
  %123 = call i64 %120(%struct.sprd_spi* %121, i64 %122)
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %117, %110
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %6, align 8
  %131 = sub nsw i64 %130, %129
  store i64 %131, i64* %6, align 8
  br label %18

132:                                              ; preds = %18
  %133 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %134 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SPRD_SPI_TX_MODE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %8, align 4
  br label %143

141:                                              ; preds = %132
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %141, %139
  br label %144

144:                                              ; preds = %143, %109
  %145 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %146 = call i32 @sprd_spi_enter_idle(%struct.sprd_spi* %145)
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local %struct.sprd_spi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @sprd_spi_set_tx_length(%struct.sprd_spi*, i64) #1

declare dso_local i32 @sprd_spi_tx_req(%struct.sprd_spi*) #1

declare dso_local i32 @sprd_spi_wait_for_tx_end(%struct.sprd_spi*, %struct.spi_transfer*) #1

declare dso_local i32 @sprd_spi_set_rx_length(%struct.sprd_spi*, i64) #1

declare dso_local i32 @sprd_spi_rx_req(%struct.sprd_spi*) #1

declare dso_local i32 @sprd_spi_wait_for_rx_end(%struct.sprd_spi*, %struct.spi_transfer*) #1

declare dso_local i32 @sprd_spi_enter_idle(%struct.sprd_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
