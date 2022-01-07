; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_dm_rx_hw_antena_div_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_dm_rx_hw_antena_div_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32*, i32, %struct.adapter* }
%struct.adapter = type { i32 }

@CGCS_RX_SW_ANTDIV = common dso_local global i32 0, align 4
@ODM_REG_IGI_A_11N = common dso_local global i32 0, align 4
@ODM_REG_LNA_SWITCH_11N = common dso_local global i32 0, align 4
@ODM_REG_ANTSEL_PIN_11N = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@ODM_REG_PIN_CTRL_11N = common dso_local global i32 0, align 4
@ODM_REG_RX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@ODM_REG_ANTDIV_PARA1_11N = common dso_local global i32 0, align 4
@ODM_REG_BB_PWR_SAV4_11N = common dso_local global i32 0, align 4
@ODM_REG_CCK_ANTDIV_PARA2_11N = common dso_local global i32 0, align 4
@MAIN_ANT = common dso_local global i32 0, align 4
@ODM_REG_ANT_MAPPING1_11N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_dm_struct*)* @dm_rx_hw_antena_div_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_rx_hw_antena_div_init(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %5 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %5, i32 0, i32 2
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @CGCS_RX_SW_ANTDIV, align 4
  %15 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %16 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* @ODM_REG_IGI_A_11N, align 4
  %19 = call i32 @BIT(i32 7)
  %20 = call i32 @phy_set_bb_reg(%struct.adapter* %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @ODM_REG_LNA_SWITCH_11N, align 4
  %23 = call i32 @BIT(i32 31)
  %24 = call i32 @phy_set_bb_reg(%struct.adapter* %21, i32 %22, i32 %23, i32 1)
  br label %75

25:                                               ; preds = %1
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = load i32, i32* @ODM_REG_ANTSEL_PIN_11N, align 4
  %28 = load i32, i32* @bMaskDWord, align 4
  %29 = call i32 @phy_query_bb_reg(%struct.adapter* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = load i32, i32* @ODM_REG_ANTSEL_PIN_11N, align 4
  %32 = load i32, i32* @bMaskDWord, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @BIT(i32 23)
  %35 = call i32 @BIT(i32 25)
  %36 = or i32 %34, %35
  %37 = or i32 %33, %36
  %38 = call i32 @phy_set_bb_reg(%struct.adapter* %30, i32 %31, i32 %32, i32 %37)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = load i32, i32* @ODM_REG_PIN_CTRL_11N, align 4
  %41 = call i32 @BIT(i32 9)
  %42 = call i32 @BIT(i32 8)
  %43 = or i32 %41, %42
  %44 = call i32 @phy_set_bb_reg(%struct.adapter* %39, i32 %40, i32 %43, i32 0)
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = load i32, i32* @ODM_REG_RX_ANT_CTRL_11N, align 4
  %47 = call i32 @BIT(i32 10)
  %48 = call i32 @phy_set_bb_reg(%struct.adapter* %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = load i32, i32* @ODM_REG_LNA_SWITCH_11N, align 4
  %51 = call i32 @BIT(i32 22)
  %52 = call i32 @phy_set_bb_reg(%struct.adapter* %49, i32 %50, i32 %51, i32 1)
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = load i32, i32* @ODM_REG_LNA_SWITCH_11N, align 4
  %55 = call i32 @BIT(i32 31)
  %56 = call i32 @phy_set_bb_reg(%struct.adapter* %53, i32 %54, i32 %55, i32 1)
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = load i32, i32* @ODM_REG_ANTDIV_PARA1_11N, align 4
  %59 = load i32, i32* @bMaskDWord, align 4
  %60 = call i32 @phy_set_bb_reg(%struct.adapter* %57, i32 %58, i32 %59, i32 160)
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = load i32, i32* @ODM_REG_BB_PWR_SAV4_11N, align 4
  %63 = call i32 @BIT(i32 7)
  %64 = call i32 @phy_set_bb_reg(%struct.adapter* %61, i32 %62, i32 %63, i32 1)
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = load i32, i32* @ODM_REG_CCK_ANTDIV_PARA2_11N, align 4
  %67 = call i32 @BIT(i32 4)
  %68 = call i32 @phy_set_bb_reg(%struct.adapter* %65, i32 %66, i32 %67, i32 1)
  %69 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %70 = load i32, i32* @MAIN_ANT, align 4
  %71 = call i32 @rtl88eu_dm_update_rx_idle_ant(%struct.odm_dm_struct* %69, i32 %70)
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = load i32, i32* @ODM_REG_ANT_MAPPING1_11N, align 4
  %74 = call i32 @phy_set_bb_reg(%struct.adapter* %72, i32 %73, i32 65535, i32 513)
  br label %75

75:                                               ; preds = %25, %13
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
