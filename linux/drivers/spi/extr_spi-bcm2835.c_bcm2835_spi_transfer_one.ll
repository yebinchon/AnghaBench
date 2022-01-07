; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i64 }
%struct.spi_device = type { i64, i32 }
%struct.spi_transfer = type { i64, i64, i64, i32 }
%struct.bcm2835_spi = type { i64, i64, i64, i32, i32, i32* }

@BCM2835_SPI_CLK = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_REN = common dso_local global i32 0, align 4
@polling_limit_us = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @bcm2835_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.bcm2835_spi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %16 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %17 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %16)
  store %struct.bcm2835_spi* %17, %struct.bcm2835_spi** %8, align 8
  %18 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %8, align 8
  %19 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %8, align 8
  %30 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @clk_get_rate(i32 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = udiv i64 %34, 2
  %36 = icmp uge i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i64 2, i64* %11, align 8
  br label %55

38:                                               ; preds = %3
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @DIV_ROUND_UP(i64 %42, i64 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = urem i64 %45, 2
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp uge i64 %49, 65536
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %51, %41
  br label %54

53:                                               ; preds = %38
  store i64 0, i64* %11, align 8
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = udiv i64 %59, %60
  br label %65

62:                                               ; preds = %55
  %63 = load i64, i64* %10, align 8
  %64 = udiv i64 %63, 65536
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i64 [ %61, %58 ], [ %64, %62 ]
  store i64 %66, i64* %12, align 8
  %67 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %8, align 8
  %68 = load i32, i32* @BCM2835_SPI_CLK, align 4
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %67, i32 %68, i64 %69)
  %71 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SPI_3WIRE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %79 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @BCM2835_SPI_CS_REN, align 4
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %82, %77, %65
  %87 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %88 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %8, align 8
  %91 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %93 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %8, align 8
  %96 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %98 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %8, align 8
  %101 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %103 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %8, align 8
  %106 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @polling_limit_us, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %86
  %110 = load i32, i32* @polling_limit_us, align 4
  %111 = sdiv i32 9000000, %110
  br label %113

112:                                              ; preds = %86
  br label %113

113:                                              ; preds = %112, %109
  %114 = phi i32 [ %111, %109 ], [ 0, %112 ]
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %13, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %13, align 8
  %121 = udiv i64 %119, %120
  br label %123

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i64 [ %121, %118 ], [ 1, %122 ]
  store i64 %124, i64* %14, align 8
  %125 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %126 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %132 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %133 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @bcm2835_spi_transfer_one_poll(%struct.spi_controller* %131, %struct.spi_device* %132, %struct.spi_transfer* %133, i32 %134)
  store i32 %135, i32* %4, align 4
  br label %159

136:                                              ; preds = %123
  %137 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %138 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %143 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %144 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %145 = call i64 @bcm2835_spi_can_dma(%struct.spi_controller* %142, %struct.spi_device* %143, %struct.spi_transfer* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %149 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %150 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @bcm2835_spi_transfer_one_dma(%struct.spi_controller* %148, %struct.spi_device* %149, %struct.spi_transfer* %150, i32 %151)
  store i32 %152, i32* %4, align 4
  br label %159

153:                                              ; preds = %141, %136
  %154 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %155 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %156 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @bcm2835_spi_transfer_one_irq(%struct.spi_controller* %154, %struct.spi_device* %155, %struct.spi_transfer* %156, i32 %157, i32 1)
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %153, %147, %130
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i64) #1

declare dso_local i32 @bcm2835_spi_transfer_one_poll(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, i32) #1

declare dso_local i64 @bcm2835_spi_can_dma(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @bcm2835_spi_transfer_one_dma(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @bcm2835_spi_transfer_one_irq(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
