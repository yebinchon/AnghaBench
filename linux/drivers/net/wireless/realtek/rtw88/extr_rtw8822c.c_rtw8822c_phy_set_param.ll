; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_phy_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_phy_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_hal, %struct.rtw_dm_info }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_hal = type { i32, i32 }
%struct.rtw_dm_info = type { i32, i32 }

@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@BIT_FEN_BB_GLB_RST = common dso_local global i32 0, align 4
@BIT_FEN_BB_RSTB = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i32 0, align 4
@BIT_RF_EN = common dso_local global i32 0, align 4
@BIT_RF_RSTB = common dso_local global i32 0, align 4
@BIT_RF_SDM_RSTB = common dso_local global i32 0, align 4
@REG_WLRF1 = common dso_local global i32 0, align 4
@BIT_WLRF1_BBRF_EN = common dso_local global i32 0, align 4
@REG_DIS_DPD = common dso_local global i32 0, align 4
@DIS_DPD_MASK = common dso_local global i32 0, align 4
@DIS_DPD_RATEALL = common dso_local global i32 0, align 4
@REG_ANAPAR_XTAL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_phy_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_phy_set_param(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca %struct.rtw_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 2
  store %struct.rtw_dm_info* %12, %struct.rtw_dm_info** %3, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 1
  store %struct.rtw_hal* %14, %struct.rtw_hal** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %17 = load i32, i32* @BIT_FEN_BB_GLB_RST, align 4
  %18 = load i32, i32* @BIT_FEN_BB_RSTB, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @rtw_write8_set(%struct.rtw_dev* %15, i32 %16, i32 %19)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = load i32, i32* @REG_RF_CTRL, align 4
  %23 = load i32, i32* @BIT_RF_EN, align 4
  %24 = load i32, i32* @BIT_RF_RSTB, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BIT_RF_SDM_RSTB, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @rtw_write8_set(%struct.rtw_dev* %21, i32 %22, i32 %27)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %30 = load i32, i32* @REG_WLRF1, align 4
  %31 = load i32, i32* @BIT_WLRF1_BBRF_EN, align 4
  %32 = call i32 @rtw_write32_set(%struct.rtw_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %34 = load i32, i32* @REG_DIS_DPD, align 4
  %35 = load i32, i32* @DIS_DPD_MASK, align 4
  %36 = load i32, i32* @DIS_DPD_RATEALL, align 4
  %37 = call i32 @rtw_write32_mask(%struct.rtw_dev* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %39 = call i32 @rtw8822c_header_file_init(%struct.rtw_dev* %38, i32 1)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = call i32 @rtw_phy_load_tables(%struct.rtw_dev* %40)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %43 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 127
  store i32 %46, i32* %5, align 4
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %48 = load i32, i32* @REG_ANAPAR_XTAL_0, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %50, 7
  %52 = or i32 %49, %51
  %53 = call i32 @rtw_write32_mask(%struct.rtw_dev* %47, i32 %48, i32 16776192, i32 %52)
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %55 = call i32 @rtw8822c_header_file_init(%struct.rtw_dev* %54, i32 0)
  store i32 0, i32* %10, align 4
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %57 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %58 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rtw_hal*, %struct.rtw_hal** %4, align 8
  %61 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @rtw8822c_config_trx_mode(%struct.rtw_dev* %56, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %66 = call i32 @rtw_phy_init(%struct.rtw_dev* %65)
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %68 = call i64 @rtw_read32_mask(%struct.rtw_dev* %67, i32 6808, i32 49152)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %71 = call i64 @rtw_read32_mask(%struct.rtw_dev* %70, i32 6824, i32 983040)
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %74 = call i64 @rtw_read32_mask(%struct.rtw_dev* %73, i32 6808, i32 192)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %77 = call i64 @rtw_read32_mask(%struct.rtw_dev* %76, i32 6768, i32 251658240)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = shl i32 %79, 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %84 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %90 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %92 = call i32 @rtw8822c_rf_init(%struct.rtw_dev* %91)
  ret void
}

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw8822c_header_file_init(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_phy_load_tables(%struct.rtw_dev*) #1

declare dso_local i32 @rtw8822c_config_trx_mode(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_phy_init(%struct.rtw_dev*) #1

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822c_rf_init(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
