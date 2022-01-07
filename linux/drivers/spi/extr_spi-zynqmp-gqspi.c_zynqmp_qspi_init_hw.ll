; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_qspi = type { i32 }

@GQSPI_SEL_OFST = common dso_local global i32 0, align 4
@GQSPI_SEL_MASK = common dso_local global i32 0, align 4
@GQSPI_ISR_OFST = common dso_local global i32 0, align 4
@GQSPI_ISR_WR_TO_CLR_MASK = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_I_STS_OFST = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_STS_OFST = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_STS_WTC = common dso_local global i32 0, align 4
@GQSPI_IDR_OFST = common dso_local global i32 0, align 4
@GQSPI_IDR_ALL_MASK = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_I_DIS_OFST = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_INTR_ALL_MASK = common dso_local global i32 0, align 4
@GQSPI_EN_OFST = common dso_local global i32 0, align 4
@GQSPI_CONFIG_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_MODE_EN_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_GEN_FIFO_START_MODE_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_ENDIAN_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_EN_POLL_TO_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_WP_HOLD_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_BAUD_RATE_DIV_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_CLK_PHA_MASK = common dso_local global i32 0, align 4
@GQSPI_CFG_CLK_POL_MASK = common dso_local global i32 0, align 4
@GQSPI_FIFO_CTRL_OFST = common dso_local global i32 0, align 4
@GQSPI_FIFO_CTRL_RST_RX_FIFO_MASK = common dso_local global i32 0, align 4
@GQSPI_FIFO_CTRL_RST_TX_FIFO_MASK = common dso_local global i32 0, align 4
@GQSPI_FIFO_CTRL_RST_GEN_FIFO_MASK = common dso_local global i32 0, align 4
@GQSPI_LPBK_DLY_ADJ_OFST = common dso_local global i32 0, align 4
@GQSPI_LPBK_DLY_ADJ_USE_LPBK_MASK = common dso_local global i32 0, align 4
@GQSPI_TX_THRESHOLD_OFST = common dso_local global i32 0, align 4
@GQSPI_TX_FIFO_THRESHOLD_RESET_VAL = common dso_local global i32 0, align 4
@GQSPI_RX_THRESHOLD_OFST = common dso_local global i32 0, align 4
@GQSPI_RX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@GQSPI_GF_THRESHOLD_OFST = common dso_local global i32 0, align 4
@GQSPI_GEN_FIFO_THRESHOLD_RESET_VAL = common dso_local global i32 0, align 4
@GQSPI_SELECT_FLASH_CS_LOWER = common dso_local global i32 0, align 4
@GQSPI_SELECT_FLASH_BUS_LOWER = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_CTRL_OFST = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_CTRL_RESET_VAL = common dso_local global i32 0, align 4
@GQSPI_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_qspi*)* @zynqmp_qspi_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_qspi_init_hw(%struct.zynqmp_qspi* %0) #0 {
  %2 = alloca %struct.zynqmp_qspi*, align 8
  %3 = alloca i32, align 4
  store %struct.zynqmp_qspi* %0, %struct.zynqmp_qspi** %2, align 8
  %4 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %5 = load i32, i32* @GQSPI_SEL_OFST, align 4
  %6 = load i32, i32* @GQSPI_SEL_MASK, align 4
  %7 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %4, i32 %5, i32 %6)
  %8 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %9 = load i32, i32* @GQSPI_ISR_OFST, align 4
  %10 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %11 = load i32, i32* @GQSPI_ISR_OFST, align 4
  %12 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %10, i32 %11)
  %13 = load i32, i32* @GQSPI_ISR_WR_TO_CLR_MASK, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %8, i32 %9, i32 %14)
  %16 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %17 = load i32, i32* @GQSPI_QSPIDMA_DST_I_STS_OFST, align 4
  %18 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %19 = load i32, i32* @GQSPI_QSPIDMA_DST_I_STS_OFST, align 4
  %20 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %18, i32 %19)
  %21 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %16, i32 %17, i32 %20)
  %22 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %23 = load i32, i32* @GQSPI_QSPIDMA_DST_STS_OFST, align 4
  %24 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %25 = load i32, i32* @GQSPI_QSPIDMA_DST_STS_OFST, align 4
  %26 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %24, i32 %25)
  %27 = load i32, i32* @GQSPI_QSPIDMA_DST_STS_WTC, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %22, i32 %23, i32 %28)
  %30 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %31 = load i32, i32* @GQSPI_IDR_OFST, align 4
  %32 = load i32, i32* @GQSPI_IDR_ALL_MASK, align 4
  %33 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %30, i32 %31, i32 %32)
  %34 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %35 = load i32, i32* @GQSPI_QSPIDMA_DST_I_DIS_OFST, align 4
  %36 = load i32, i32* @GQSPI_QSPIDMA_DST_INTR_ALL_MASK, align 4
  %37 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %34, i32 %35, i32 %36)
  %38 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %39 = load i32, i32* @GQSPI_EN_OFST, align 4
  %40 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %38, i32 %39, i32 0)
  %41 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %42 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %43 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @GQSPI_CFG_MODE_EN_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @GQSPI_CFG_GEN_FIFO_START_MODE_MASK, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @GQSPI_CFG_ENDIAN_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @GQSPI_CFG_EN_POLL_TO_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @GQSPI_CFG_WP_HOLD_MASK, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @GQSPI_CFG_BAUD_RATE_DIV_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @GQSPI_CFG_CLK_PHA_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* @GQSPI_CFG_CLK_POL_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %75 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %74, i32 %75, i32 %76)
  %78 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %79 = load i32, i32* @GQSPI_FIFO_CTRL_OFST, align 4
  %80 = load i32, i32* @GQSPI_FIFO_CTRL_RST_RX_FIFO_MASK, align 4
  %81 = load i32, i32* @GQSPI_FIFO_CTRL_RST_TX_FIFO_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @GQSPI_FIFO_CTRL_RST_GEN_FIFO_MASK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %78, i32 %79, i32 %84)
  %86 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %87 = load i32, i32* @GQSPI_LPBK_DLY_ADJ_OFST, align 4
  %88 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %89 = load i32, i32* @GQSPI_LPBK_DLY_ADJ_OFST, align 4
  %90 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %88, i32 %89)
  %91 = load i32, i32* @GQSPI_LPBK_DLY_ADJ_USE_LPBK_MASK, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %86, i32 %87, i32 %92)
  %94 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %95 = load i32, i32* @GQSPI_TX_THRESHOLD_OFST, align 4
  %96 = load i32, i32* @GQSPI_TX_FIFO_THRESHOLD_RESET_VAL, align 4
  %97 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %94, i32 %95, i32 %96)
  %98 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %99 = load i32, i32* @GQSPI_RX_THRESHOLD_OFST, align 4
  %100 = load i32, i32* @GQSPI_RX_FIFO_THRESHOLD, align 4
  %101 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %98, i32 %99, i32 %100)
  %102 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %103 = load i32, i32* @GQSPI_GF_THRESHOLD_OFST, align 4
  %104 = load i32, i32* @GQSPI_GEN_FIFO_THRESHOLD_RESET_VAL, align 4
  %105 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %102, i32 %103, i32 %104)
  %106 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %107 = load i32, i32* @GQSPI_SELECT_FLASH_CS_LOWER, align 4
  %108 = load i32, i32* @GQSPI_SELECT_FLASH_BUS_LOWER, align 4
  %109 = call i32 @zynqmp_gqspi_selectslave(%struct.zynqmp_qspi* %106, i32 %107, i32 %108)
  %110 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %111 = load i32, i32* @GQSPI_QSPIDMA_DST_CTRL_OFST, align 4
  %112 = load i32, i32* @GQSPI_QSPIDMA_DST_CTRL_RESET_VAL, align 4
  %113 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %110, i32 %111, i32 %112)
  %114 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %115 = load i32, i32* @GQSPI_EN_OFST, align 4
  %116 = load i32, i32* @GQSPI_EN_MASK, align 4
  %117 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %114, i32 %115, i32 %116)
  ret void
}

declare dso_local i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi*, i32, i32) #1

declare dso_local i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi*, i32) #1

declare dso_local i32 @zynqmp_gqspi_selectslave(%struct.zynqmp_qspi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
