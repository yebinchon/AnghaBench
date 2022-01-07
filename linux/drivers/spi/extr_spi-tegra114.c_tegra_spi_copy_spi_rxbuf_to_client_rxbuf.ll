; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_copy_spi_rxbuf_to_client_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_copy_spi_rxbuf_to_client_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i32, i32, i32, i32*, i32, i32, i32, i32, i64 }
%struct.spi_transfer = type { i8*, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_spi_data*, %struct.spi_transfer*)* @tegra_spi_copy_spi_rxbuf_to_client_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_spi_copy_spi_rxbuf_to_client_rxbuf(%struct.tegra_spi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_spi_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %13 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %23 = call i32 @dma_sync_single_for_cpu(i32 %15, i32 %18, i32 %21, i32 %22)
  %24 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %2
  %29 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul i32 %31, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @memcpy(i8* %43, i32* %46, i32 %47)
  %49 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %50 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul i32 %51, %54
  %56 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %151

60:                                               ; preds = %2
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8* %68, i8** %8, align 8
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 1, %71
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %75 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul i32 %76, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %83 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = sub i32 %84, %87
  %89 = icmp ugt i32 %81, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %60
  %91 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %92 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %95 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = sub i32 %93, %96
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %90, %60
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %142, %98
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %100
  %107 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %136, %106
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %122 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ult i32 %120, %123
  br label %125

125:                                              ; preds = %119, %116
  %126 = phi i1 [ false, %116 ], [ %124, %119 ]
  br i1 %126, label %127, label %141

127:                                              ; preds = %125
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %6, align 4
  %130 = mul i32 %129, 8
  %131 = ashr i32 %128, %130
  %132 = and i32 %131, 255
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %8, align 8
  store i8 %133, i8* %134, align 1
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %6, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %10, align 4
  %140 = add i32 %139, -1
  store i32 %140, i32* %10, align 4
  br label %116

141:                                              ; preds = %125
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %100

145:                                              ; preds = %100
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %148 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %28
  %152 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %153 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %156 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %159 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %162 = call i32 @dma_sync_single_for_device(i32 %154, i32 %157, i32 %160, i32 %161)
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
