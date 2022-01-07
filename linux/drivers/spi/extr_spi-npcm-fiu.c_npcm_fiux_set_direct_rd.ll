; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiux_set_direct_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiux_set_direct_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm_fiu_spi = type { i32 }

@NPCM_FIU_DRD_CFG = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_16_BYTE_BURST = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_CFG_ACCTYPE = common dso_local global i32 0, align 4
@DRD_SPI_X_MODE = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_ACCTYPE_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_CFG_DBW = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_DBW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npcm_fiu_spi*)* @npcm_fiux_set_direct_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm_fiux_set_direct_rd(%struct.npcm_fiu_spi* %0) #0 {
  %2 = alloca %struct.npcm_fiu_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.npcm_fiu_spi* %0, %struct.npcm_fiu_spi** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %2, align 8
  %5 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NPCM_FIU_DRD_CFG, align 4
  %8 = load i32, i32* @NPCM_FIU_DRD_16_BYTE_BURST, align 4
  %9 = call i32 @regmap_write(i32 %6, i32 %7, i32 %8)
  %10 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %2, align 8
  %11 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NPCM_FIU_DRD_CFG, align 4
  %14 = load i32, i32* @NPCM_FIU_DRD_CFG_ACCTYPE, align 4
  %15 = load i32, i32* @DRD_SPI_X_MODE, align 4
  %16 = load i32, i32* @NPCM_FIU_DRD_ACCTYPE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %17)
  %19 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %2, align 8
  %20 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NPCM_FIU_DRD_CFG, align 4
  %23 = load i32, i32* @NPCM_FIU_DRD_CFG_DBW, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NPCM_FIU_DRD_DBW_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %26)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
