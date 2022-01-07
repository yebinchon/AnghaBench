; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_PHY_BBConfig8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_PHY_BBConfig8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@BIT13 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i64 0, align 8
@RF_EN = common dso_local global i32 0, align 4
@RF_RSTB = common dso_local global i32 0, align 4
@RF_SDMRSTB = common dso_local global i32 0, align 4
@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@FEN_PPLL = common dso_local global i32 0, align 4
@FEN_PCIEA = common dso_local global i32 0, align 4
@FEN_DIO_PCIE = common dso_local global i32 0, align 4
@FEN_BB_GLB_RSTn = common dso_local global i32 0, align 4
@FEN_BBRSTB = common dso_local global i32 0, align 4
@REG_AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@REG_MAC_PHY_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHY_BBConfig8723B(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hal_com_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load i32, i32* @_SUCCESS, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %8)
  store %struct.hal_com_data* %9, %struct.hal_com_data** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = call i32 @phy_InitBBRFRegisterDefinition(%struct.adapter* %10)
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %14 = call i32 @rtw_read16(%struct.adapter* %12, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BIT13, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BIT0, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BIT1, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rtw_write16(%struct.adapter* %15, i64 %16, i32 %23)
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = call i32 @rtw_write32(%struct.adapter* %25, i32 2376, i32 640)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i64, i64* @REG_RF_CTRL, align 8
  %29 = load i32, i32* @RF_EN, align 4
  %30 = load i32, i32* @RF_RSTB, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RF_SDMRSTB, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @rtw_write8(%struct.adapter* %27, i64 %28, i32 %33)
  %35 = call i32 @msleep(i32 1)
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = load i32, i32* @ODM_RF_PATH_A, align 4
  %38 = call i32 @PHY_SetRFReg(%struct.adapter* %36, i32 %37, i32 1, i32 1048575, i32 1920)
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %41 = load i32, i32* @FEN_PPLL, align 4
  %42 = load i32, i32* @FEN_PCIEA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FEN_DIO_PCIE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FEN_BB_GLB_RSTn, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FEN_BBRSTB, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @rtw_write8(%struct.adapter* %39, i64 %40, i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @rtw_write8(%struct.adapter* %51, i64 %53, i32 128)
  %55 = load %struct.adapter*, %struct.adapter** %2, align 8
  %56 = call i32 @phy_BB8723b_Config_ParaFile(%struct.adapter* %55)
  store i32 %56, i32* %3, align 4
  %57 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %58 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 63
  store i32 %60, i32* %6, align 4
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 6
  %66 = or i32 %63, %65
  %67 = call i32 @PHY_SetBBReg(%struct.adapter* %61, i32 %62, i32 16773120, i32 %66)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @phy_InitBBRFRegisterDefinition(%struct.adapter*) #1

declare dso_local i32 @rtw_read16(%struct.adapter*, i64) #1

declare dso_local i32 @rtw_write16(%struct.adapter*, i64, i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @PHY_SetRFReg(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @phy_BB8723b_Config_ParaFile(%struct.adapter*) #1

declare dso_local i32 @PHY_SetBBReg(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
