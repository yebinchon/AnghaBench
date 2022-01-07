; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_fill_tx_fifo_from_client_txbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_fill_tx_fifo_from_client_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i32, i32, i32, i32, i32, i64 }
%struct.spi_transfer = type { i32, i64 }

@SPI_FIFO_STATUS = common dso_local global i32 0, align 4
@SPI_TX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_spi_data*, %struct.spi_transfer*)* @tegra_spi_fill_tx_fifo_from_client_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_fill_tx_fifo_from_client_txbuf(%struct.tegra_spi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_spi_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %13, align 8
  %26 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %27 = load i32, i32* @SPI_FIFO_STATUS, align 4
  %28 = call i32 @tegra_spi_readl(%struct.tegra_spi_data* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @SPI_TX_FIFO_EMPTY_COUNT(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %98

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %36, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @min(i32 %41, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = mul i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @DIV_ROUND_UP(i32 %51, i32 4)
  store i32 %52, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %85, %35
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %75, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp ult i32 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %80

66:                                               ; preds = %64
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %13, align 8
  %69 = load i32, i32* %67, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul i32 %70, 8
  %72 = shl i32 %69, %71
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %58

80:                                               ; preds = %64
  %81 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @SPI_TX_FIFO, align 4
  %84 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %53

88:                                               ; preds = %53
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %91 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = mul i32 %89, %92
  %94 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %95 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %173

98:                                               ; preds = %2
  %99 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %100 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @min(i32 %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %107 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = mul i32 %105, %108
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %112 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %115 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = sub i32 %113, %116
  %118 = icmp ugt i32 %110, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %98
  %120 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %121 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %124 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = sub i32 %122, %125
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %119, %98
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %164, %127
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %154, %133
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %140 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp ult i32 %138, %141
  br label %143

143:                                              ; preds = %137, %134
  %144 = phi i1 [ false, %134 ], [ %142, %137 ]
  br i1 %144, label %145, label %159

145:                                              ; preds = %143
  %146 = load i32*, i32** %13, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %13, align 8
  %148 = load i32, i32* %146, align 4
  %149 = load i32, i32* %9, align 4
  %150 = mul i32 %149, 8
  %151 = shl i32 %148, %150
  %152 = load i32, i32* %16, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %9, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %5, align 4
  %158 = add i32 %157, -1
  store i32 %158, i32* %5, align 4
  br label %134

159:                                              ; preds = %143
  %160 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* @SPI_TX_FIFO, align 4
  %163 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %129

167:                                              ; preds = %129
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %170 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %167, %88
  %174 = load i32, i32* %11, align 4
  ret i32 %174
}

declare dso_local i32 @tegra_spi_readl(%struct.tegra_spi_data*, i32) #1

declare dso_local i32 @SPI_TX_FIFO_EMPTY_COUNT(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @tegra_spi_writel(%struct.tegra_spi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
