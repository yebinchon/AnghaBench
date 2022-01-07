; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.mtk_spi_slave = type { i32, %struct.spi_transfer*, i64, i32 }
%struct.spi_transfer = type { i32, i64, i32, i32, i64 }

@SPIS_IRQ_ST_REG = common dso_local global i64 0, align 8
@SPIS_IRQ_CLR_REG = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@DMA_DONE_ST = common dso_local global i32 0, align 4
@DATA_DONE_ST = common dso_local global i32 0, align 4
@RSTA_DONE_ST = common dso_local global i32 0, align 4
@SPIS_SOFT_RST = common dso_local global i32 0, align 4
@SPIS_SOFT_RST_REG = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SPIS_RX_DATA_REG = common dso_local global i64 0, align 8
@CMD_INVALID_ST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cmd invalid\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_spi_slave_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_slave_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca %struct.mtk_spi_slave*, align 8
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.spi_controller*
  store %struct.spi_controller* %14, %struct.spi_controller** %6, align 8
  %15 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %16 = call %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller* %15)
  store %struct.mtk_spi_slave* %16, %struct.mtk_spi_slave** %7, align 8
  %17 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %18 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %17, i32 0, i32 1
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %18, align 8
  store %struct.spi_transfer* %19, %struct.spi_transfer** %8, align 8
  %20 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %21 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPIS_IRQ_ST_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %28 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SPIS_IRQ_CLR_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %34 = icmp ne %struct.spi_transfer* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %181

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @DMA_DONE_ST, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %98

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @DATA_DONE_ST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @RSTA_DONE_ST, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @SPIS_SOFT_RST, align 4
  %54 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %55 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SPIS_SOFT_RST_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %52
  %65 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %66 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %69 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %72 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = call i32 @dma_unmap_single(i32 %67, i32 %70, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %64, %52
  %77 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %83 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %86 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %89 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %92 = call i32 @dma_unmap_single(i32 %84, i32 %87, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %81, %76
  %94 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %95 = call i32 @mtk_spi_slave_disable_dma(%struct.mtk_spi_slave* %94)
  %96 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %97 = call i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave* %96)
  br label %98

98:                                               ; preds = %93, %47, %37
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @DMA_DONE_ST, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %164, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @DATA_DONE_ST, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @RSTA_DONE_ST, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %164

113:                                              ; preds = %108, %103
  %114 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %115 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %116, 4
  store i32 %117, i32* %11, align 4
  %118 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %119 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %113
  %123 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %124 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SPIS_RX_DATA_REG, align 8
  %127 = add nsw i64 %125, %126
  %128 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %129 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @ioread32_rep(i64 %127, i64 %130, i32 %131)
  br label %133

133:                                              ; preds = %122, %113
  %134 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %135 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = srem i32 %136, 4
  store i32 %137, i32* %12, align 4
  %138 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %139 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %133
  %143 = load i32, i32* %12, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %142
  %146 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %147 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SPIS_RX_DATA_REG, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @readl(i64 %150)
  store i32 %151, i32* %10, align 4
  %152 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %153 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = mul nsw i32 %155, 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %154, %157
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @memcpy(i64 %158, i32* %10, i32 %159)
  br label %161

161:                                              ; preds = %145, %142, %133
  %162 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %163 = call i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave* %162)
  br label %164

164:                                              ; preds = %161, %108, %98
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @CMD_INVALID_ST, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %171 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %170, i32 0, i32 0
  %172 = call i32 @dev_warn(i32* %171, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %173 = load i32, i32* @IRQ_NONE, align 4
  store i32 %173, i32* %3, align 4
  br label %181

174:                                              ; preds = %164
  %175 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %176 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %175, i32 0, i32 1
  store %struct.spi_transfer* null, %struct.spi_transfer** %176, align 8
  %177 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %178 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %177, i32 0, i32 0
  %179 = call i32 @complete(i32* %178)
  %180 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %174, %169, %35
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @mtk_spi_slave_disable_dma(%struct.mtk_spi_slave*) #1

declare dso_local i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave*) #1

declare dso_local i32 @ioread32_rep(i64, i64, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
