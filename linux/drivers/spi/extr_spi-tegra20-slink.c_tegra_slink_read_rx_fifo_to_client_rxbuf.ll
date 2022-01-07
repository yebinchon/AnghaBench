; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_read_rx_fifo_to_client_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_read_rx_fifo_to_client_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_slink_data = type { i32, i32, i32, i64 }
%struct.spi_transfer = type { i64 }

@SLINK_STATUS2 = common dso_local global i32 0, align 4
@SLINK_RX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_slink_data*, %struct.spi_transfer*)* @tegra_slink_read_rx_fifo_to_client_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_slink_read_rx_fifo_to_client_rxbuf(%struct.tegra_slink_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_slink_data*, align 8
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
  store %struct.tegra_slink_data* %0, %struct.tegra_slink_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %11, align 8
  %23 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %24 = load i32, i32* @SLINK_STATUS2, align 4
  %25 = call i32 @tegra_slink_readl(%struct.tegra_slink_data* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @SLINK_RX_FIFO_FULL_COUNT(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %2
  %33 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = mul i32 %35, %38
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %70, %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %46 = load i32, i32* @SLINK_RX_FIFO, align 4
  %47 = call i32 @tegra_slink_readl(%struct.tegra_slink_data* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %64, %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp ult i32 %52, 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  br i1 %55, label %56, label %69

56:                                               ; preds = %54
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul i32 %58, 8
  %60 = lshr i32 %57, %59
  %61 = and i32 %60, 255
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %10, align 4
  br label %48

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %40

73:                                               ; preds = %40
  %74 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %75 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = mul i32 %76, %79
  %81 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %82 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %133

90:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %117, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %97 = load i32, i32* @SLINK_RX_FIFO, align 4
  %98 = call i32 @tegra_slink_readl(%struct.tegra_slink_data* %96, i32 %97)
  store i32 %98, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %113, %95
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %102 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul i32 %107, 8
  %109 = lshr i32 %106, %108
  %110 = and i32 %109, 255
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %99

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %91

120:                                              ; preds = %91
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %123 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul i32 %121, %124
  %126 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %127 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %120, %73
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @tegra_slink_readl(%struct.tegra_slink_data*, i32) #1

declare dso_local i32 @SLINK_RX_FIFO_FULL_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
