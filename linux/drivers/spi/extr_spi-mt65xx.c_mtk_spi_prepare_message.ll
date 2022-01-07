; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32, i64, %struct.mtk_chip_config* }
%struct.mtk_chip_config = type { i64, i64 }
%struct.mtk_spi = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CMD_REG = common dso_local global i64 0, align 8
@SPI_CMD_CPHA = common dso_local global i32 0, align 4
@SPI_CMD_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_CMD_TXMSBF = common dso_local global i32 0, align 4
@SPI_CMD_RXMSBF = common dso_local global i32 0, align 4
@SPI_CMD_TX_ENDIAN = common dso_local global i32 0, align 4
@SPI_CMD_RX_ENDIAN = common dso_local global i32 0, align 4
@SPI_CMD_CS_POL = common dso_local global i32 0, align 4
@SPI_CMD_SAMPLE_SEL = common dso_local global i32 0, align 4
@SPI_CMD_FINISH_IE = common dso_local global i32 0, align 4
@SPI_CMD_PAUSE_IE = common dso_local global i32 0, align 4
@SPI_CMD_TX_DMA = common dso_local global i32 0, align 4
@SPI_CMD_RX_DMA = common dso_local global i32 0, align 4
@SPI_CMD_DEASSERT = common dso_local global i32 0, align 4
@SPI_PAD_SEL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @mtk_spi_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.mtk_chip_config*, align 8
  %10 = alloca %struct.mtk_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %11 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %12 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 0
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %8, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 2
  %16 = load %struct.mtk_chip_config*, %struct.mtk_chip_config** %15, align 8
  store %struct.mtk_chip_config* %16, %struct.mtk_chip_config** %9, align 8
  %17 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %18 = call %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master* %17)
  store %struct.mtk_spi* %18, %struct.mtk_spi** %10, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SPI_CPHA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %5, align 4
  %27 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SPI_CPOL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %36 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPI_CMD_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* @SPI_CMD_CPHA, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %2
  %48 = load i32, i32* @SPI_CMD_CPHA, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @SPI_CMD_CPOL, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @SPI_CMD_CPOL, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SPI_LSB_FIRST, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load i32, i32* @SPI_CMD_TXMSBF, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @SPI_CMD_RXMSBF, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %87

80:                                               ; preds = %64
  %81 = load i32, i32* @SPI_CMD_TXMSBF, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @SPI_CMD_RXMSBF, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %80, %71
  %88 = load i32, i32* @SPI_CMD_TX_ENDIAN, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @SPI_CMD_RX_ENDIAN, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %95 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %87
  %101 = load %struct.mtk_chip_config*, %struct.mtk_chip_config** %9, align 8
  %102 = getelementptr inbounds %struct.mtk_chip_config, %struct.mtk_chip_config* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @SPI_CMD_CS_POL, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %114

109:                                              ; preds = %100
  %110 = load i32, i32* @SPI_CMD_CS_POL, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %109, %105
  %115 = load %struct.mtk_chip_config*, %struct.mtk_chip_config** %9, align 8
  %116 = getelementptr inbounds %struct.mtk_chip_config, %struct.mtk_chip_config* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @SPI_CMD_SAMPLE_SEL, align 4
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  br label %128

123:                                              ; preds = %114
  %124 = load i32, i32* @SPI_CMD_SAMPLE_SEL, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %123, %119
  br label %129

129:                                              ; preds = %128, %87
  %130 = load i32, i32* @SPI_CMD_FINISH_IE, align 4
  %131 = load i32, i32* @SPI_CMD_PAUSE_IE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* @SPI_CMD_TX_DMA, align 4
  %136 = load i32, i32* @SPI_CMD_RX_DMA, align 4
  %137 = or i32 %135, %136
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* @SPI_CMD_DEASSERT, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %147 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SPI_CMD_REG, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i32 %145, i64 %150)
  %152 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %153 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %129
  %159 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %160 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %163 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %168 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SPI_PAD_SEL_REG, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %166, i64 %171)
  br label %173

173:                                              ; preds = %158, %129
  ret i32 0
}

declare dso_local %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
