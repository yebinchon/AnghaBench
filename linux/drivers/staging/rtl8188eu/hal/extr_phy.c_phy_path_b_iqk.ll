; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_path_b_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_path_b_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.odm_dm_struct }
%struct.odm_dm_struct = type { i32 }

@rIQK_AGC_Cont = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@IQK_DELAY_TIME_88E = common dso_local global i32 0, align 4
@rRx_Power_After_IQK_A_2 = common dso_local global i32 0, align 4
@rTx_Power_Before_IQK_B = common dso_local global i32 0, align 4
@rTx_Power_After_IQK_B = common dso_local global i32 0, align 4
@rRx_Power_Before_IQK_B_2 = common dso_local global i32 0, align 4
@rRx_Power_After_IQK_B_2 = common dso_local global i32 0, align 4
@ODM_COMP_CALIBRATION = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Path B Rx IQK fail!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @phy_path_b_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_path_b_iqk(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.odm_dm_struct*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.odm_dm_struct* %14, %struct.odm_dm_struct** %10, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = load i32, i32* @rIQK_AGC_Cont, align 4
  %17 = load i32, i32* @bMaskDWord, align 4
  %18 = call i32 @phy_set_bb_reg(%struct.adapter* %15, i32 %16, i32 %17, i32 2)
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load i32, i32* @rIQK_AGC_Cont, align 4
  %21 = load i32, i32* @bMaskDWord, align 4
  %22 = call i32 @phy_set_bb_reg(%struct.adapter* %19, i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* @IQK_DELAY_TIME_88E, align 4
  %24 = call i32 @mdelay(i32 %23)
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = load i32, i32* @rRx_Power_After_IQK_A_2, align 4
  %27 = load i32, i32* @bMaskDWord, align 4
  %28 = call i32 @phy_query_bb_reg(%struct.adapter* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = load i32, i32* @rTx_Power_Before_IQK_B, align 4
  %31 = load i32, i32* @bMaskDWord, align 4
  %32 = call i32 @phy_query_bb_reg(%struct.adapter* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = load i32, i32* @rTx_Power_After_IQK_B, align 4
  %35 = load i32, i32* @bMaskDWord, align 4
  %36 = call i32 @phy_query_bb_reg(%struct.adapter* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = load i32, i32* @rRx_Power_Before_IQK_B_2, align 4
  %39 = load i32, i32* @bMaskDWord, align 4
  %40 = call i32 @phy_query_bb_reg(%struct.adapter* %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load i32, i32* @rRx_Power_After_IQK_B_2, align 4
  %43 = load i32, i32* @bMaskDWord, align 4
  %44 = call i32 @phy_query_bb_reg(%struct.adapter* %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @BIT(i32 31)
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 67043328
  %52 = ashr i32 %51, 16
  %53 = icmp ne i32 %52, 322
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 67043328
  %57 = ashr i32 %56, 16
  %58 = icmp ne i32 %57, 66
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %64

62:                                               ; preds = %54, %49, %1
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %89

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @BIT(i32 30)
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 67043328
  %72 = ashr i32 %71, 16
  %73 = icmp ne i32 %72, 306
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 67043328
  %77 = ashr i32 %76, 16
  %78 = icmp ne i32 %77, 54
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, 2
  store i32 %81, i32* %9, align 4
  br label %87

82:                                               ; preds = %74, %69, %64
  %83 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %10, align 8
  %84 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %85 = load i32, i32* @ODM_DBG_LOUD, align 4
  %86 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %62
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
