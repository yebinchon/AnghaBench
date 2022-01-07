; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_setup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advk_pcie = type { i32 }

@CTRL_CONFIG_REG = common dso_local global i32 0, align 4
@CTRL_MODE_MASK = common dso_local global i32 0, align 4
@CTRL_MODE_SHIFT = common dso_local global i32 0, align 4
@PCIE_CORE_MODE_DIRECT = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL0_REG = common dso_local global i32 0, align 4
@IS_RC_MSK = common dso_local global i32 0, align 4
@IS_RC_SHIFT = common dso_local global i32 0, align 4
@PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX = common dso_local global i32 0, align 4
@PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX_EN = common dso_local global i32 0, align 4
@PCIE_CORE_ERR_CAPCTL_ECRC_CHCK = common dso_local global i32 0, align 4
@PCIE_CORE_ERR_CAPCTL_ECRC_CHCK_RCV = common dso_local global i32 0, align 4
@PCIE_CORE_ERR_CAPCTL_REG = common dso_local global i32 0, align 4
@PCIE_CORE_DEV_CTRL_STATS_RELAX_ORDER_DISABLE = common dso_local global i32 0, align 4
@PCIE_CORE_DEV_CTRL_STATS_MAX_PAYLOAD_SZ_SHIFT = common dso_local global i32 0, align 4
@PCIE_CORE_DEV_CTRL_STATS_SNOOP_DISABLE = common dso_local global i32 0, align 4
@PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SZ = common dso_local global i32 0, align 4
@PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SIZE_SHIFT = common dso_local global i32 0, align 4
@PCIE_CORE_DEV_CTRL_STATS_REG = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL2_RESERVED = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL2_TD_ENABLE = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL2_REG = common dso_local global i32 0, align 4
@PCIE_GEN_SEL_MSK = common dso_local global i32 0, align 4
@SPEED_GEN_2 = common dso_local global i32 0, align 4
@LANE_CNT_MSK = common dso_local global i32 0, align 4
@LANE_COUNT_1 = common dso_local global i32 0, align 4
@LINK_TRAINING_EN = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL2_MSI_ENABLE = common dso_local global i32 0, align 4
@PCIE_ISR0_ALL_MASK = common dso_local global i32 0, align 4
@PCIE_ISR0_REG = common dso_local global i32 0, align 4
@PCIE_ISR1_ALL_MASK = common dso_local global i32 0, align 4
@PCIE_ISR1_REG = common dso_local global i32 0, align 4
@PCIE_IRQ_ALL_MASK = common dso_local global i32 0, align 4
@HOST_CTRL_INT_STATUS_REG = common dso_local global i32 0, align 4
@PCIE_ISR0_MSI_INT_PENDING = common dso_local global i32 0, align 4
@PCIE_ISR0_MASK_REG = common dso_local global i32 0, align 4
@PCIE_ISR1_MASK_REG = common dso_local global i32 0, align 4
@PCIE_MSI_MASK_REG = common dso_local global i32 0, align 4
@PCIE_IRQ_ENABLE_INTS_MASK = common dso_local global i32 0, align 4
@HOST_CTRL_INT_MASK_REG = common dso_local global i32 0, align 4
@PCIE_CORE_CTRL2_OB_WIN_ENABLE = common dso_local global i32 0, align 4
@PIO_CTRL = common dso_local global i32 0, align 4
@PIO_CTRL_ADDR_WIN_DISABLE = common dso_local global i32 0, align 4
@PCIE_CORE_LINK_CTRL_STAT_REG = common dso_local global i32 0, align 4
@PCIE_CORE_LINK_TRAINING = common dso_local global i32 0, align 4
@PCIE_CORE_LINK_L0S_ENTRY = common dso_local global i32 0, align 4
@PCIE_CORE_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PCIE_CORE_CMD_STATUS_REG = common dso_local global i32 0, align 4
@PCIE_CORE_CMD_MEM_ACCESS_EN = common dso_local global i32 0, align 4
@PCIE_CORE_CMD_IO_ACCESS_EN = common dso_local global i32 0, align 4
@PCIE_CORE_CMD_MEM_IO_REQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.advk_pcie*)* @advk_pcie_setup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advk_pcie_setup_hw(%struct.advk_pcie* %0) #0 {
  %2 = alloca %struct.advk_pcie*, align 8
  %3 = alloca i32, align 4
  store %struct.advk_pcie* %0, %struct.advk_pcie** %2, align 8
  %4 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %5 = load i32, i32* @CTRL_CONFIG_REG, align 4
  %6 = call i32 @advk_readl(%struct.advk_pcie* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @CTRL_MODE_MASK, align 4
  %8 = load i32, i32* @CTRL_MODE_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @PCIE_CORE_MODE_DIRECT, align 4
  %14 = load i32, i32* @CTRL_MODE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CTRL_MODE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CTRL_CONFIG_REG, align 4
  %23 = call i32 @advk_writel(%struct.advk_pcie* %20, i32 %21, i32 %22)
  %24 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %25 = load i32, i32* @PCIE_CORE_CTRL0_REG, align 4
  %26 = call i32 @advk_readl(%struct.advk_pcie* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @IS_RC_MSK, align 4
  %28 = load i32, i32* @IS_RC_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @PCIE_CORE_CTRL0_REG, align 4
  %35 = call i32 @advk_writel(%struct.advk_pcie* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX, align 4
  %37 = load i32, i32* @PCIE_CORE_ERR_CAPCTL_ECRC_CHK_TX_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PCIE_CORE_ERR_CAPCTL_ECRC_CHCK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PCIE_CORE_ERR_CAPCTL_ECRC_CHCK_RCV, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %3, align 4
  %43 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @PCIE_CORE_ERR_CAPCTL_REG, align 4
  %46 = call i32 @advk_writel(%struct.advk_pcie* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @PCIE_CORE_DEV_CTRL_STATS_RELAX_ORDER_DISABLE, align 4
  %48 = load i32, i32* @PCIE_CORE_DEV_CTRL_STATS_MAX_PAYLOAD_SZ_SHIFT, align 4
  %49 = shl i32 7, %48
  %50 = or i32 %47, %49
  %51 = load i32, i32* @PCIE_CORE_DEV_CTRL_STATS_SNOOP_DISABLE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SZ, align 4
  %54 = load i32, i32* @PCIE_CORE_DEV_CTRL_STATS_MAX_RD_REQ_SIZE_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  store i32 %56, i32* %3, align 4
  %57 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @PCIE_CORE_DEV_CTRL_STATS_REG, align 4
  %60 = call i32 @advk_writel(%struct.advk_pcie* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @PCIE_CORE_CTRL2_RESERVED, align 4
  %62 = load i32, i32* @PCIE_CORE_CTRL2_TD_ENABLE, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %3, align 4
  %64 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @PCIE_CORE_CTRL2_REG, align 4
  %67 = call i32 @advk_writel(%struct.advk_pcie* %64, i32 %65, i32 %66)
  %68 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %69 = load i32, i32* @PCIE_CORE_CTRL0_REG, align 4
  %70 = call i32 @advk_readl(%struct.advk_pcie* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @PCIE_GEN_SEL_MSK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @SPEED_GEN_2, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @PCIE_CORE_CTRL0_REG, align 4
  %81 = call i32 @advk_writel(%struct.advk_pcie* %78, i32 %79, i32 %80)
  %82 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %83 = load i32, i32* @PCIE_CORE_CTRL0_REG, align 4
  %84 = call i32 @advk_readl(%struct.advk_pcie* %82, i32 %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @LANE_CNT_MSK, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @LANE_COUNT_1, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @PCIE_CORE_CTRL0_REG, align 4
  %95 = call i32 @advk_writel(%struct.advk_pcie* %92, i32 %93, i32 %94)
  %96 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %97 = load i32, i32* @PCIE_CORE_CTRL0_REG, align 4
  %98 = call i32 @advk_readl(%struct.advk_pcie* %96, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* @LINK_TRAINING_EN, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  %102 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @PCIE_CORE_CTRL0_REG, align 4
  %105 = call i32 @advk_writel(%struct.advk_pcie* %102, i32 %103, i32 %104)
  %106 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %107 = load i32, i32* @PCIE_CORE_CTRL2_REG, align 4
  %108 = call i32 @advk_readl(%struct.advk_pcie* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* @PCIE_CORE_CTRL2_MSI_ENABLE, align 4
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  %112 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @PCIE_CORE_CTRL2_REG, align 4
  %115 = call i32 @advk_writel(%struct.advk_pcie* %112, i32 %113, i32 %114)
  %116 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %117 = load i32, i32* @PCIE_ISR0_ALL_MASK, align 4
  %118 = load i32, i32* @PCIE_ISR0_REG, align 4
  %119 = call i32 @advk_writel(%struct.advk_pcie* %116, i32 %117, i32 %118)
  %120 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %121 = load i32, i32* @PCIE_ISR1_ALL_MASK, align 4
  %122 = load i32, i32* @PCIE_ISR1_REG, align 4
  %123 = call i32 @advk_writel(%struct.advk_pcie* %120, i32 %121, i32 %122)
  %124 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %125 = load i32, i32* @PCIE_IRQ_ALL_MASK, align 4
  %126 = load i32, i32* @HOST_CTRL_INT_STATUS_REG, align 4
  %127 = call i32 @advk_writel(%struct.advk_pcie* %124, i32 %125, i32 %126)
  %128 = load i32, i32* @PCIE_ISR0_ALL_MASK, align 4
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* @PCIE_ISR0_MSI_INT_PENDING, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %3, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %3, align 4
  %133 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @PCIE_ISR0_MASK_REG, align 4
  %136 = call i32 @advk_writel(%struct.advk_pcie* %133, i32 %134, i32 %135)
  %137 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %138 = load i32, i32* @PCIE_ISR1_ALL_MASK, align 4
  %139 = load i32, i32* @PCIE_ISR1_MASK_REG, align 4
  %140 = call i32 @advk_writel(%struct.advk_pcie* %137, i32 %138, i32 %139)
  %141 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %142 = load i32, i32* @PCIE_MSI_MASK_REG, align 4
  %143 = call i32 @advk_writel(%struct.advk_pcie* %141, i32 0, i32 %142)
  %144 = load i32, i32* @PCIE_IRQ_ALL_MASK, align 4
  %145 = load i32, i32* @PCIE_IRQ_ENABLE_INTS_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  store i32 %147, i32* %3, align 4
  %148 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @HOST_CTRL_INT_MASK_REG, align 4
  %151 = call i32 @advk_writel(%struct.advk_pcie* %148, i32 %149, i32 %150)
  %152 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %153 = load i32, i32* @PCIE_CORE_CTRL2_REG, align 4
  %154 = call i32 @advk_readl(%struct.advk_pcie* %152, i32 %153)
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* @PCIE_CORE_CTRL2_OB_WIN_ENABLE, align 4
  %156 = load i32, i32* %3, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %3, align 4
  %158 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* @PCIE_CORE_CTRL2_REG, align 4
  %161 = call i32 @advk_writel(%struct.advk_pcie* %158, i32 %159, i32 %160)
  %162 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %163 = load i32, i32* @PIO_CTRL, align 4
  %164 = call i32 @advk_readl(%struct.advk_pcie* %162, i32 %163)
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* @PIO_CTRL_ADDR_WIN_DISABLE, align 4
  %166 = load i32, i32* %3, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %3, align 4
  %168 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @PIO_CTRL, align 4
  %171 = call i32 @advk_writel(%struct.advk_pcie* %168, i32 %169, i32 %170)
  %172 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %173 = load i32, i32* @PCIE_CORE_LINK_CTRL_STAT_REG, align 4
  %174 = call i32 @advk_readl(%struct.advk_pcie* %172, i32 %173)
  store i32 %174, i32* %3, align 4
  %175 = load i32, i32* @PCIE_CORE_LINK_TRAINING, align 4
  %176 = load i32, i32* %3, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %3, align 4
  %178 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @PCIE_CORE_LINK_CTRL_STAT_REG, align 4
  %181 = call i32 @advk_writel(%struct.advk_pcie* %178, i32 %179, i32 %180)
  %182 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %183 = call i32 @advk_pcie_wait_for_link(%struct.advk_pcie* %182)
  %184 = load i32, i32* @PCIE_CORE_LINK_L0S_ENTRY, align 4
  %185 = load i32, i32* @PCIE_CORE_LINK_WIDTH_SHIFT, align 4
  %186 = shl i32 1, %185
  %187 = or i32 %184, %186
  store i32 %187, i32* %3, align 4
  %188 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* @PCIE_CORE_LINK_CTRL_STAT_REG, align 4
  %191 = call i32 @advk_writel(%struct.advk_pcie* %188, i32 %189, i32 %190)
  %192 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %193 = load i32, i32* @PCIE_CORE_CMD_STATUS_REG, align 4
  %194 = call i32 @advk_readl(%struct.advk_pcie* %192, i32 %193)
  store i32 %194, i32* %3, align 4
  %195 = load i32, i32* @PCIE_CORE_CMD_MEM_ACCESS_EN, align 4
  %196 = load i32, i32* @PCIE_CORE_CMD_IO_ACCESS_EN, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @PCIE_CORE_CMD_MEM_IO_REQ_EN, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %3, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %3, align 4
  %202 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @PCIE_CORE_CMD_STATUS_REG, align 4
  %205 = call i32 @advk_writel(%struct.advk_pcie* %202, i32 %203, i32 %204)
  ret void
}

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

declare dso_local i32 @advk_writel(%struct.advk_pcie*, i32, i32) #1

declare dso_local i32 @advk_pcie_wait_for_link(%struct.advk_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
