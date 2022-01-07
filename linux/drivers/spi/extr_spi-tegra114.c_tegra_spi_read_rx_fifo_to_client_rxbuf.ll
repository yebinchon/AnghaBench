; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_read_rx_fifo_to_client_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_read_rx_fifo_to_client_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i32, i32, i32, i32, i64 }
%struct.spi_transfer = type { i32, i32, i64 }

@SPI_FIFO_STATUS = common dso_local global i32 0, align 4
@SPI_RX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_spi_data*, %struct.spi_transfer*)* @tegra_spi_read_rx_fifo_to_client_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_read_rx_fifo_to_client_rxbuf(%struct.tegra_spi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_spi_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %11, align 8
  %26 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %27 = load i32, i32* @SPI_FIFO_STATUS, align 4
  %28 = call i32 @tegra_spi_readl(%struct.tegra_spi_data* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SPI_RX_FIFO_FULL_COUNT(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %93

35:                                               ; preds = %2
  %36 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = mul i32 %38, %41
  store i32 %42, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %73, %35
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %49 = load i32, i32* @SPI_RX_FIFO, align 4
  %50 = call i32 @tegra_spi_readl(%struct.tegra_spi_data* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %67, %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %55, 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br i1 %58, label %59, label %72

59:                                               ; preds = %57
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = mul i32 %61, 8
  %63 = lshr i32 %60, %62
  %64 = and i32 %63, 255
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %10, align 4
  br label %51

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %43

76:                                               ; preds = %43
  %77 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %83 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = mul i32 %84, %87
  %89 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %90 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %169

93:                                               ; preds = %2
  %94 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %95 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 1, %96
  %98 = sub i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %100 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul i32 %102, %103
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %107 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %110 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sub i32 %108, %111
  %113 = icmp ugt i32 %105, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %93
  %115 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %116 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sub i32 %117, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %114, %93
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %157, %122
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %160

128:                                              ; preds = %124
  %129 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %130 = load i32, i32* @SPI_RX_FIFO, align 4
  %131 = call i32 @tegra_spi_readl(%struct.tegra_spi_data* %129, i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %151, %128
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ult i32 %138, %139
  br label %141

141:                                              ; preds = %137, %134
  %142 = phi i1 [ false, %134 ], [ %140, %137 ]
  br i1 %142, label %143, label %156

143:                                              ; preds = %141
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %7, align 4
  %146 = mul i32 %145, 8
  %147 = lshr i32 %144, %146
  %148 = and i32 %147, 255
  %149 = load i32*, i32** %11, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %7, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %10, align 4
  %155 = add i32 %154, -1
  store i32 %155, i32* %10, align 4
  br label %134

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %8, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %124

160:                                              ; preds = %124
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %9, align 4
  %163 = add i32 %162, %161
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %166 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %160, %76
  %170 = load i32, i32* %9, align 4
  ret i32 %170
}

declare dso_local i32 @tegra_spi_readl(%struct.tegra_spi_data*, i32) #1

declare dso_local i32 @SPI_RX_FIFO_FULL_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
