; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_copy_client_txbuf_to_spi_txbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_copy_client_txbuf_to_spi_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i32, i32, i32*, i32, i32, i32, i32, i32, i64 }
%struct.spi_transfer = type { i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_spi_data*, %struct.spi_transfer*)* @tegra_spi_copy_client_txbuf_to_spi_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_spi_copy_client_txbuf_to_spi_txbuf(%struct.tegra_spi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_spi_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %12 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = call i32 @dma_sync_single_for_cpu(i32 %14, i32 %17, i32 %20, i32 %21)
  %23 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %2
  %28 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 %30, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @memcpy(i32* %37, i64 %45, i32 %46)
  %48 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %49 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %50, %53
  %55 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %56 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %144

59:                                               ; preds = %2
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32* %68, i32** %8, align 8
  %69 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 %71, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = sub i32 %79, %82
  %84 = icmp ugt i32 %76, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %59
  %86 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %87 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %90 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = sub i32 %88, %91
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %85, %59
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %135, %93
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %98 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %138

101:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %122, %101
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %106, %109
  br label %111

111:                                              ; preds = %105, %102
  %112 = phi i1 [ false, %102 ], [ %110, %105 ]
  br i1 %112, label %113, label %127

113:                                              ; preds = %111
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %8, align 8
  %116 = load i32, i32* %114, align 4
  %117 = load i32, i32* %6, align 4
  %118 = mul i32 %117, 8
  %119 = shl i32 %116, %118
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, -1
  store i32 %126, i32* %9, align 4
  br label %102

127:                                              ; preds = %111
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %130 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %7, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %95

138:                                              ; preds = %95
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %141 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %27
  %145 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %146 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %149 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %152 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @DMA_TO_DEVICE, align 4
  %155 = call i32 @dma_sync_single_for_device(i32 %147, i32 %150, i32 %153, i32 %154)
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
