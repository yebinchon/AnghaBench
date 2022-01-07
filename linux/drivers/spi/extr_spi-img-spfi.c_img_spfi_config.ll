; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i64, i64, i64, i64, i32 }
%struct.img_spfi = type { i32 }

@SPFI_DEVICE_PARAMETER_BITCLK_MASK = common dso_local global i32 0, align 4
@SPFI_DEVICE_PARAMETER_BITCLK_SHIFT = common dso_local global i32 0, align 4
@SPFI_TRANSACTION_TSIZE_SHIFT = common dso_local global i32 0, align 4
@SPFI_TRANSACTION = common dso_local global i32 0, align 4
@SPFI_CONTROL = common dso_local global i32 0, align 4
@SPFI_CONTROL_SEND_DMA = common dso_local global i32 0, align 4
@SPFI_CONTROL_GET_DMA = common dso_local global i32 0, align 4
@SPFI_CONTROL_TMODE_MASK = common dso_local global i32 0, align 4
@SPFI_CONTROL_TMODE_SHIFT = common dso_local global i32 0, align 4
@SPI_NBITS_DUAL = common dso_local global i64 0, align 8
@SPFI_CONTROL_TMODE_DUAL = common dso_local global i32 0, align 4
@SPI_NBITS_QUAD = common dso_local global i64 0, align 8
@SPFI_CONTROL_TMODE_QUAD = common dso_local global i32 0, align 4
@SPFI_CONTROL_SE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @img_spfi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_spfi_config(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.img_spfi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.img_spfi* @spi_master_get_devdata(i32 %12)
  store %struct.img_spfi* %13, %struct.img_spfi** %7, align 8
  %14 = load %struct.img_spfi*, %struct.img_spfi** %7, align 8
  %15 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_get_rate(i32 %16)
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DIV_ROUND_UP(i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @get_count_order(i32 %22)
  %24 = shl i32 1, %23
  %25 = sdiv i32 512, %24
  %26 = call i32 @clamp(i32 %25, i32 1, i32 128)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.img_spfi*, %struct.img_spfi** %7, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SPFI_DEVICE_PARAMETER(i32 %30)
  %32 = call i32 @spfi_readl(%struct.img_spfi* %27, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @SPFI_DEVICE_PARAMETER_BITCLK_MASK, align 4
  %34 = load i32, i32* @SPFI_DEVICE_PARAMETER_BITCLK_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SPFI_DEVICE_PARAMETER_BITCLK_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.img_spfi*, %struct.img_spfi** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SPFI_DEVICE_PARAMETER(i32 %48)
  %50 = call i32 @spfi_writel(%struct.img_spfi* %44, i32 %45, i32 %49)
  %51 = load %struct.img_spfi*, %struct.img_spfi** %7, align 8
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SPFI_TRANSACTION_TSIZE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @SPFI_TRANSACTION, align 4
  %58 = call i32 @spfi_writel(%struct.img_spfi* %51, i32 %56, i32 %57)
  %59 = load %struct.img_spfi*, %struct.img_spfi** %7, align 8
  %60 = load i32, i32* @SPFI_CONTROL, align 4
  %61 = call i32 @spfi_readl(%struct.img_spfi* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @SPFI_CONTROL_SEND_DMA, align 4
  %63 = load i32, i32* @SPFI_CONTROL_GET_DMA, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %69 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %3
  %73 = load i32, i32* @SPFI_CONTROL_SEND_DMA, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %3
  %77 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @SPFI_CONTROL_GET_DMA, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* @SPFI_CONTROL_TMODE_MASK, align 4
  %87 = load i32, i32* @SPFI_CONTROL_TMODE_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %93 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SPI_NBITS_DUAL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %85
  %98 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %99 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SPI_NBITS_DUAL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* @SPFI_CONTROL_TMODE_DUAL, align 4
  %105 = load i32, i32* @SPFI_CONTROL_TMODE_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %128

109:                                              ; preds = %97, %85
  %110 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %111 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SPI_NBITS_QUAD, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %117 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SPI_NBITS_QUAD, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* @SPFI_CONTROL_TMODE_QUAD, align 4
  %123 = load i32, i32* @SPFI_CONTROL_TMODE_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %121, %115, %109
  br label %128

128:                                              ; preds = %127, %103
  %129 = load i32, i32* @SPFI_CONTROL_SE, align 4
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load %struct.img_spfi*, %struct.img_spfi** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @SPFI_CONTROL, align 4
  %135 = call i32 @spfi_writel(%struct.img_spfi* %132, i32 %133, i32 %134)
  ret void
}

declare dso_local %struct.img_spfi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @spfi_readl(%struct.img_spfi*, i32) #1

declare dso_local i32 @SPFI_DEVICE_PARAMETER(i32) #1

declare dso_local i32 @spfi_writel(%struct.img_spfi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
