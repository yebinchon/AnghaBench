; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_fill_tx_fifo_from_client_txbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_fill_tx_fifo_from_client_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_slink_data = type { i32, i32, i32, i32, i64 }
%struct.spi_transfer = type { i64 }

@SLINK_STATUS2 = common dso_local global i32 0, align 4
@SLINK_TX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_slink_data*, %struct.spi_transfer*)* @tegra_slink_fill_tx_fifo_from_client_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_slink_fill_tx_fifo_from_client_txbuf(%struct.tegra_slink_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_slink_data*, align 8
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
  store %struct.tegra_slink_data* %0, %struct.tegra_slink_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32* %24, i32** %13, align 8
  %25 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %26 = load i32, i32* @SLINK_STATUS2, align 4
  %27 = call i32 @tegra_slink_readl(%struct.tegra_slink_data* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @SLINK_TX_FIFO_EMPTY_COUNT(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %35, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @min(i32 %40, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = mul i32 %45, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @DIV_ROUND_UP(i32 %50, i32 4)
  store i32 %51, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %84, %34
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %65, label %79

65:                                               ; preds = %63
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %13, align 8
  %68 = load i32, i32* %66, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul i32 %69, 8
  %71 = shl i32 %68, %70
  %72 = load i32, i32* %14, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %5, align 4
  br label %57

79:                                               ; preds = %63
  %80 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @SLINK_TX_FIFO, align 4
  %83 = call i32 @tegra_slink_writel(%struct.tegra_slink_data* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %52

87:                                               ; preds = %52
  br label %139

88:                                               ; preds = %2
  %89 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %90 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @min(i32 %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %97 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = mul i32 %95, %98
  store i32 %99, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %135, %88
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %125, %104
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %111 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp ult i32 %109, %112
  br label %114

114:                                              ; preds = %108, %105
  %115 = phi i1 [ false, %105 ], [ %113, %108 ]
  br i1 %115, label %116, label %130

116:                                              ; preds = %114
  %117 = load i32*, i32** %13, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %13, align 8
  %119 = load i32, i32* %117, align 4
  %120 = load i32, i32* %9, align 4
  %121 = mul i32 %120, 8
  %122 = shl i32 %119, %121
  %123 = load i32, i32* %15, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %9, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, -1
  store i32 %129, i32* %5, align 4
  br label %105

130:                                              ; preds = %114
  %131 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @SLINK_TX_FIFO, align 4
  %134 = call i32 @tegra_slink_writel(%struct.tegra_slink_data* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %100

138:                                              ; preds = %100
  br label %139

139:                                              ; preds = %138, %87
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %142 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = mul i32 %140, %143
  %145 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %146 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare dso_local i32 @tegra_slink_readl(%struct.tegra_slink_data*, i32) #1

declare dso_local i32 @SLINK_TX_FIFO_EMPTY_COUNT(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @tegra_slink_writel(%struct.tegra_slink_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
