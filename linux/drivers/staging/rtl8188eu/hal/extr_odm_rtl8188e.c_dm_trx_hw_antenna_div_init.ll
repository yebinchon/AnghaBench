; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_dm_trx_hw_antenna_div_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_dm_trx_hw_antenna_div_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32*, i32, i32, %struct.adapter* }
%struct.adapter = type { i32 }

@CGCS_RX_SW_ANTDIV = common dso_local global i32 0, align 4
@ODM_REG_IGI_A_11N = common dso_local global i32 0, align 4
@ODM_REG_RX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@ODM_REG_ANTSEL_PIN_11N = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@ODM_REG_PIN_CTRL_11N = common dso_local global i32 0, align 4
@ODM_REG_LNA_SWITCH_11N = common dso_local global i32 0, align 4
@ODM_REG_ANTDIV_PARA1_11N = common dso_local global i32 0, align 4
@ODM_REG_BB_PWR_SAV4_11N = common dso_local global i32 0, align 4
@ODM_REG_CCK_ANTDIV_PARA2_11N = common dso_local global i32 0, align 4
@ODM_REG_TX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@MAIN_ANT = common dso_local global i32 0, align 4
@ODM_REG_RX_DEFAULT_A_11N = common dso_local global i32 0, align 4
@ODM_REG_ANT_MAPPING1_11N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_dm_struct*)* @dm_trx_hw_antenna_div_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_trx_hw_antenna_div_init(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %5 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %5, i32 0, i32 3
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @CGCS_RX_SW_ANTDIV, align 4
  %15 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %16 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* @ODM_REG_IGI_A_11N, align 4
  %19 = call i32 @BIT(i32 7)
  %20 = call i32 @phy_set_bb_reg(%struct.adapter* %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @ODM_REG_RX_ANT_CTRL_11N, align 4
  %23 = call i32 @BIT(i32 5)
  %24 = call i32 @BIT(i32 4)
  %25 = or i32 %23, %24
  %26 = call i32 @BIT(i32 3)
  %27 = or i32 %25, %26
  %28 = call i32 @phy_set_bb_reg(%struct.adapter* %21, i32 %22, i32 %27, i32 0)
  br label %106

29:                                               ; preds = %1
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = load i32, i32* @ODM_REG_ANTSEL_PIN_11N, align 4
  %32 = load i32, i32* @bMaskDWord, align 4
  %33 = call i32 @phy_query_bb_reg(%struct.adapter* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load i32, i32* @ODM_REG_ANTSEL_PIN_11N, align 4
  %36 = load i32, i32* @bMaskDWord, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @BIT(i32 23)
  %39 = call i32 @BIT(i32 25)
  %40 = or i32 %38, %39
  %41 = or i32 %37, %40
  %42 = call i32 @phy_set_bb_reg(%struct.adapter* %34, i32 %35, i32 %36, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = load i32, i32* @ODM_REG_PIN_CTRL_11N, align 4
  %45 = call i32 @BIT(i32 9)
  %46 = call i32 @BIT(i32 8)
  %47 = or i32 %45, %46
  %48 = call i32 @phy_set_bb_reg(%struct.adapter* %43, i32 %44, i32 %47, i32 0)
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = load i32, i32* @ODM_REG_RX_ANT_CTRL_11N, align 4
  %51 = call i32 @BIT(i32 10)
  %52 = call i32 @phy_set_bb_reg(%struct.adapter* %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = load i32, i32* @ODM_REG_LNA_SWITCH_11N, align 4
  %55 = call i32 @BIT(i32 22)
  %56 = call i32 @phy_set_bb_reg(%struct.adapter* %53, i32 %54, i32 %55, i32 0)
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = load i32, i32* @ODM_REG_LNA_SWITCH_11N, align 4
  %59 = call i32 @BIT(i32 31)
  %60 = call i32 @phy_set_bb_reg(%struct.adapter* %57, i32 %58, i32 %59, i32 1)
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = load i32, i32* @ODM_REG_ANTDIV_PARA1_11N, align 4
  %63 = load i32, i32* @bMaskDWord, align 4
  %64 = call i32 @phy_set_bb_reg(%struct.adapter* %61, i32 %62, i32 %63, i32 160)
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = load i32, i32* @ODM_REG_BB_PWR_SAV4_11N, align 4
  %67 = call i32 @BIT(i32 7)
  %68 = call i32 @phy_set_bb_reg(%struct.adapter* %65, i32 %66, i32 %67, i32 1)
  %69 = load %struct.adapter*, %struct.adapter** %3, align 8
  %70 = load i32, i32* @ODM_REG_CCK_ANTDIV_PARA2_11N, align 4
  %71 = call i32 @BIT(i32 4)
  %72 = call i32 @phy_set_bb_reg(%struct.adapter* %69, i32 %70, i32 %71, i32 1)
  %73 = load %struct.adapter*, %struct.adapter** %3, align 8
  %74 = load i32, i32* @ODM_REG_TX_ANT_CTRL_11N, align 4
  %75 = call i32 @BIT(i32 21)
  %76 = call i32 @phy_set_bb_reg(%struct.adapter* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %78 = load i32, i32* @MAIN_ANT, align 4
  %79 = call i32 @rtl88eu_dm_update_rx_idle_ant(%struct.odm_dm_struct* %77, i32 %78)
  %80 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %81 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %29
  %85 = load %struct.adapter*, %struct.adapter** %3, align 8
  %86 = load i32, i32* @ODM_REG_RX_DEFAULT_A_11N, align 4
  %87 = call i32 @BIT(i32 10)
  %88 = call i32 @BIT(i32 9)
  %89 = or i32 %87, %88
  %90 = call i32 @BIT(i32 8)
  %91 = or i32 %89, %90
  %92 = call i32 @phy_set_bb_reg(%struct.adapter* %85, i32 %86, i32 %91, i32 1)
  %93 = load %struct.adapter*, %struct.adapter** %3, align 8
  %94 = load i32, i32* @ODM_REG_RX_DEFAULT_A_11N, align 4
  %95 = call i32 @BIT(i32 13)
  %96 = call i32 @BIT(i32 12)
  %97 = or i32 %95, %96
  %98 = call i32 @BIT(i32 11)
  %99 = or i32 %97, %98
  %100 = call i32 @phy_set_bb_reg(%struct.adapter* %93, i32 %94, i32 %99, i32 2)
  br label %106

101:                                              ; preds = %29
  %102 = load %struct.adapter*, %struct.adapter** %3, align 8
  %103 = load i32, i32* @ODM_REG_ANT_MAPPING1_11N, align 4
  %104 = load i32, i32* @bMaskDWord, align 4
  %105 = call i32 @phy_set_bb_reg(%struct.adapter* %102, i32 %103, i32 %104, i32 513)
  br label %106

106:                                              ; preds = %13, %101, %84
  ret void
}

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtl88eu_dm_update_rx_idle_ant(%struct.odm_dm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
