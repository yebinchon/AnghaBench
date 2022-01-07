; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_fifo_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_fifo_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i64, i64 }
%struct.mtk_spi_slave = type { i64 }

@SPIS_SOFT_RST = common dso_local global i32 0, align 4
@SPIS_SOFT_RST_REG = common dso_local global i64 0, align 8
@SPIS_CFG_REG = common dso_local global i64 0, align 8
@SPIS_RX_EN = common dso_local global i32 0, align 4
@SPIS_TX_EN = common dso_local global i32 0, align 4
@SPIS_TX_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @mtk_spi_slave_fifo_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_slave_fifo_transfer(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.mtk_spi_slave*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %12 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %13 = call %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller* %12)
  store %struct.mtk_spi_slave* %13, %struct.mtk_spi_slave** %7, align 8
  %14 = load i32, i32* @SPIS_SOFT_RST, align 4
  %15 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %16 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPIS_SOFT_RST_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %22 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPIS_CFG_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @SPIS_RX_EN, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %3
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @SPIS_TX_EN, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %47 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPIS_CFG_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %57 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %44
  %61 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %62 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPIS_TX_DATA_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @iowrite32_rep(i64 %65, i64 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %44
  %72 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %73 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = srem i32 %74, 4
  store i32 %75, i32* %10, align 4
  %76 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %71
  %81 = load i32, i32* %10, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  %84 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %85 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @memcpy(i32* %8, i64 %90, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %95 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SPIS_TX_DATA_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  br label %100

100:                                              ; preds = %83, %80, %71
  %101 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %102 = call i32 @mtk_spi_slave_wait_for_completion(%struct.mtk_spi_slave* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %107 = call i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave* %106)
  %108 = load i32, i32* @SPIS_SOFT_RST, align 4
  %109 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %7, align 8
  %110 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SPIS_SOFT_RST_REG, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 %108, i64 %113)
  br label %115

115:                                              ; preds = %105, %100
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @iowrite32_rep(i64, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @mtk_spi_slave_wait_for_completion(%struct.mtk_spi_slave*) #1

declare dso_local i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
