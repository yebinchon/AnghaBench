; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_copy_client_txbuf_to_spi_txbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_copy_client_txbuf_to_spi_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_slink_data = type { i32, i32, i32*, i32, i32, i32, i32, i32, i64 }
%struct.spi_transfer = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_slink_data*, %struct.spi_transfer*)* @tegra_slink_copy_client_txbuf_to_spi_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_slink_copy_client_txbuf_to_spi_txbuf(%struct.tegra_slink_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_slink_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_slink_data* %0, %struct.tegra_slink_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %11 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DMA_TO_DEVICE, align 4
  %21 = call i32 @dma_sync_single_for_cpu(i32 %13, i32 %16, i32 %19, i32 %20)
  %22 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %2
  %27 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul i32 %29, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @memcpy(i32* %36, i64 %44, i32 %45)
  br label %108

47:                                               ; preds = %2
  %48 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32* %56, i32** %8, align 8
  %57 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul i32 %59, %62
  store i32 %63, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %104, %47
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %77 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %75, %78
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i1 [ false, %71 ], [ %79, %74 ]
  br i1 %81, label %82, label %96

82:                                               ; preds = %80
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %8, align 8
  %85 = load i32, i32* %83, align 4
  %86 = load i32, i32* %6, align 4
  %87 = mul i32 %86, 8
  %88 = shl i32 %85, %87
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add i32 %94, -1
  store i32 %95, i32* %9, align 4
  br label %71

96:                                               ; preds = %80
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %99 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %64

107:                                              ; preds = %64
  br label %108

108:                                              ; preds = %107, %26
  %109 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %110 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %113 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul i32 %111, %114
  %116 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %117 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %121 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %124 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %127 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @DMA_TO_DEVICE, align 4
  %130 = call i32 @dma_sync_single_for_device(i32 %122, i32 %125, i32 %128, i32 %129)
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
