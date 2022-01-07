; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.img_spfi = type { i32, i32, i32, i32, i64 }
%struct.dma_async_tx_descriptor = type { %struct.img_spfi*, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i64, i8*, i64 }

@DMA_DEV_TO_MEM = common dso_local global i8* null, align 8
@SPFI_RX_32BIT_VALID_DATA = common dso_local global i64 0, align 8
@SPFI_RX_8BIT_VALID_DATA = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@img_spfi_dma_rx_cb = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i8* null, align 8
@SPFI_TX_32BIT_VALID_DATA = common dso_local global i64 0, align 8
@SPFI_TX_8BIT_VALID_DATA = common dso_local global i64 0, align 8
@img_spfi_dma_tx_cb = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @img_spfi_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spfi_start_dma(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.img_spfi*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca %struct.dma_slave_config, align 8
  %12 = alloca %struct.dma_slave_config, align 8
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.img_spfi* @spi_master_get_devdata(i32 %15)
  store %struct.img_spfi* %16, %struct.img_spfi** %8, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %9, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %10, align 8
  %17 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %18 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %20 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %3
  %26 = load i8*, i8** @DMA_DEV_TO_MEM, align 8
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %35 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SPFI_RX_32BIT_VALID_DATA, align 8
  %38 = add nsw i64 %36, %37
  %39 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 6
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 1
  store i32 4, i32* %41, align 4
  br label %51

42:                                               ; preds = %25
  %43 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %44 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SPFI_RX_8BIT_VALID_DATA, align 8
  %47 = add nsw i64 %45, %46
  %48 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 6
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 1
  store i32 4, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %33
  %52 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %53 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dmaengine_slave_config(i32 %54, %struct.dma_slave_config* %11)
  %56 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %57 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** @DMA_DEV_TO_MEM, align 8
  %68 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %69 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %58, i32 %62, i32 %66, i8* %67, i32 %68)
  store %struct.dma_async_tx_descriptor* %69, %struct.dma_async_tx_descriptor** %9, align 8
  %70 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %71 = icmp ne %struct.dma_async_tx_descriptor* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %51
  br label %171

73:                                               ; preds = %51
  %74 = load i32, i32* @img_spfi_dma_rx_cb, align 4
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %78 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %78, i32 0, i32 0
  store %struct.img_spfi* %77, %struct.img_spfi** %79, align 8
  br label %80

80:                                               ; preds = %73, %3
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %140

85:                                               ; preds = %80
  %86 = load i8*, i8** @DMA_MEM_TO_DEV, align 8
  %87 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 5
  store i8* %86, i8** %87, align 8
  %88 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %89 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = srem i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %95 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SPFI_TX_32BIT_VALID_DATA, align 8
  %98 = add nsw i64 %96, %97
  %99 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 4
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 2
  store i32 4, i32* %100, align 8
  %101 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 3
  store i32 4, i32* %101, align 4
  br label %111

102:                                              ; preds = %85
  %103 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %104 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SPFI_TX_8BIT_VALID_DATA, align 8
  %107 = add nsw i64 %105, %106
  %108 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 4
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 2
  store i32 1, i32* %109, align 8
  %110 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 3
  store i32 4, i32* %110, align 4
  br label %111

111:                                              ; preds = %102, %93
  %112 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %113 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dmaengine_slave_config(i32 %114, %struct.dma_slave_config* %12)
  %116 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %117 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %120 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %124 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** @DMA_MEM_TO_DEV, align 8
  %128 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %129 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %118, i32 %122, i32 %126, i8* %127, i32 %128)
  store %struct.dma_async_tx_descriptor* %129, %struct.dma_async_tx_descriptor** %10, align 8
  %130 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %131 = icmp ne %struct.dma_async_tx_descriptor* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %111
  br label %171

133:                                              ; preds = %111
  %134 = load i32, i32* @img_spfi_dma_tx_cb, align 4
  %135 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %136 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %138 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %139 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %138, i32 0, i32 0
  store %struct.img_spfi* %137, %struct.img_spfi** %139, align 8
  br label %140

140:                                              ; preds = %133, %80
  %141 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %142 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %147 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %149 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %148)
  %150 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %151 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dma_async_issue_pending(i32 %152)
  br label %154

154:                                              ; preds = %145, %140
  %155 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %156 = call i32 @spfi_start(%struct.img_spfi* %155)
  %157 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %158 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %154
  %162 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %163 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  %164 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %165 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %164)
  %166 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %167 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @dma_async_issue_pending(i32 %168)
  br label %170

170:                                              ; preds = %161, %154
  store i32 1, i32* %4, align 4
  br label %182

171:                                              ; preds = %132, %72
  %172 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %173 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dmaengine_terminate_all(i32 %174)
  %176 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %177 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @dmaengine_terminate_all(i32 %178)
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %171, %170
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local %struct.img_spfi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @spfi_start(%struct.img_spfi*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
