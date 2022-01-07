; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_copy_spi_rxbuf_to_client_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_copy_spi_rxbuf_to_client_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_slink_data = type { i32, i32, i32, i32*, i32, i32, i32, i64 }
%struct.spi_transfer = type { i8*, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_slink_data*, %struct.spi_transfer*)* @tegra_slink_copy_spi_rxbuf_to_client_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_slink_copy_spi_rxbuf_to_client_rxbuf(%struct.tegra_slink_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_slink_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_slink_data* %0, %struct.tegra_slink_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %11 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %21 = call i32 @dma_sync_single_for_cpu(i32 %13, i32 %16, i32 %19, i32 %20)
  %22 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %22, i32 0, i32 7
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
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @memcpy(i8* %41, i32* %44, i32 %45)
  br label %100

47:                                               ; preds = %2
  %48 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8* %55, i8** %8, align 8
  %56 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %57 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %96, %47
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %61
  %68 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %69 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %92, %67
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %6, align 4
  %86 = mul i32 %85, 8
  %87 = ashr i32 %84, %86
  %88 = and i32 %87, 255
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  store i8 %89, i8* %90, align 1
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %77

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %61

99:                                               ; preds = %61
  br label %100

100:                                              ; preds = %99, %26
  %101 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %102 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %105 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul i32 %103, %106
  %108 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %109 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %113 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %116 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %122 = call i32 @dma_sync_single_for_device(i32 %114, i32 %117, i32 %120, i32 %121)
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
