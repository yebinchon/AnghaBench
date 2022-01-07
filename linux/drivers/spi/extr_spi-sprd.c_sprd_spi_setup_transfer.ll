; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i64, i64, i32 }
%struct.sprd_spi = type { i32, i32, i32, i32, i64, %struct.TYPE_2__, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@sprd_spi_read_bufs_u8 = common dso_local global i32 0, align 4
@sprd_spi_write_bufs_u8 = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@SPRD_SPI_DMA_STEP = common dso_local global i32 0, align 4
@sprd_spi_read_bufs_u16 = common dso_local global i32 0, align 4
@sprd_spi_write_bufs_u16 = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@sprd_spi_read_bufs_u32 = common dso_local global i32 0, align 4
@sprd_spi_write_bufs_u32 = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPRD_SPI_CTL1 = common dso_local global i64 0, align 8
@SPRD_SPI_RTX_MD_MASK = common dso_local global i32 0, align 4
@SPRD_SPI_TX_MODE = common dso_local global i32 0, align 4
@SPRD_SPI_RX_MODE = common dso_local global i32 0, align 4
@sprd_spi_write_only_receive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @sprd_spi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.sprd_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sprd_spi* @spi_controller_get_devdata(i32 %12)
  store %struct.sprd_spi* %13, %struct.sprd_spi** %6, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %21 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %26 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %25, i32 0, i32 9
  store i64 %24, i64* %26, align 8
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %31 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %30, i32 0, i32 8
  store i64 %29, i64* %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %36 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %39 = call i32 @sprd_spi_init_hw(%struct.sprd_spi* %37, %struct.spi_transfer* %38)
  %40 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sprd_spi_set_speed(%struct.sprd_spi* %40, i32 %43)
  %45 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @sprd_spi_set_transfer_bits(%struct.sprd_spi* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 16
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @round_up(i32 %51, i32 16)
  store i32 %52, i32* %7, align 4
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @round_up(i32 %54, i32 8)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %122 [
    i32 8, label %58
    i32 16, label %78
    i32 32, label %100
  ]

58:                                               ; preds = %56
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %63 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @sprd_spi_read_bufs_u8, align 4
  %65 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %66 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @sprd_spi_write_bufs_u8, align 4
  %68 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %69 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %71 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %72 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @SPRD_SPI_DMA_STEP, align 4
  %75 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %76 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  br label %125

78:                                               ; preds = %56
  %79 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %80 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 1
  %83 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %84 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @sprd_spi_read_bufs_u16, align 4
  %86 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %87 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @sprd_spi_write_bufs_u16, align 4
  %89 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %90 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %92 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %93 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @SPRD_SPI_DMA_STEP, align 4
  %96 = shl i32 %95, 1
  %97 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %98 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %125

100:                                              ; preds = %56
  %101 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %102 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 2
  %105 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %106 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @sprd_spi_read_bufs_u32, align 4
  %108 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %109 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @sprd_spi_write_bufs_u32, align 4
  %111 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %112 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %114 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %115 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @SPRD_SPI_DMA_STEP, align 4
  %118 = shl i32 %117, 2
  %119 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %120 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  br label %125

122:                                              ; preds = %56
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %176

125:                                              ; preds = %100, %78, %58
  %126 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %127 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SPRD_SPI_CTL1, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @readl_relaxed(i64 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @SPRD_SPI_RTX_MD_MASK, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %137 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %125
  %141 = load i32, i32* @SPRD_SPI_TX_MODE, align 4
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %140, %125
  %145 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %146 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @SPRD_SPI_RX_MODE, align 4
  %151 = load i32, i32* %9, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %158 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SPRD_SPI_CTL1, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writel_relaxed(i32 %156, i64 %161)
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %165 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %167 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SPRD_SPI_RX_MODE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %153
  %172 = load i32, i32* @sprd_spi_write_only_receive, align 4
  %173 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %174 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %171, %153
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %122
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.sprd_spi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @sprd_spi_init_hw(%struct.sprd_spi*, %struct.spi_transfer*) #1

declare dso_local i32 @sprd_spi_set_speed(%struct.sprd_spi*, i32) #1

declare dso_local i32 @sprd_spi_set_transfer_bits(%struct.sprd_spi*, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
