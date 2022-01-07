; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_antenna_diversity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_antenna_diversity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, i64, i64, %struct.adapter*, %struct.fast_ant_train }
%struct.adapter = type { i32 }
%struct.fast_ant_train = type { i64 }

@ODM_BB_ANT_DIV = common dso_local global i32 0, align 4
@ODM_COMP_ANT_DIV = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ODM_AntennaDiversity_88E(): No Link.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Need to Turn off HW AntDiv\0A\00", align 1
@ODM_REG_IGI_A_11N = common dso_local global i32 0, align 4
@ODM_REG_CCK_ANTDIV_PARA1_11N = common dso_local global i32 0, align 4
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@ODM_REG_TX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Need to Turn on HW AntDiv\0A\00", align 1
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_dm_antenna_diversity(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.fast_ant_train*, align 8
  %4 = alloca %struct.adapter*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %5 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %5, i32 0, i32 4
  store %struct.fast_ant_train* %6, %struct.fast_ant_train** %3, align 8
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %7, i32 0, i32 3
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %4, align 8
  %10 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ODM_BB_ANT_DIV, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %111

17:                                               ; preds = %1
  %18 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %19 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %17
  %23 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %24 = load i32, i32* @ODM_COMP_ANT_DIV, align 4
  %25 = load i32, i32* @ODM_DBG_LOUD, align 4
  %26 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %28 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %22
  %32 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %33 = load i32, i32* @ODM_COMP_ANT_DIV, align 4
  %34 = load i32, i32* @ODM_DBG_LOUD, align 4
  %35 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.adapter*, %struct.adapter** %4, align 8
  %37 = load i32, i32* @ODM_REG_IGI_A_11N, align 4
  %38 = call i32 @BIT(i32 7)
  %39 = call i32 @phy_set_bb_reg(%struct.adapter* %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = load i32, i32* @ODM_REG_CCK_ANTDIV_PARA1_11N, align 4
  %42 = call i32 @BIT(i32 15)
  %43 = call i32 @phy_set_bb_reg(%struct.adapter* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %45 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load %struct.adapter*, %struct.adapter** %4, align 8
  %51 = load i32, i32* @ODM_REG_TX_ANT_CTRL_11N, align 4
  %52 = call i32 @BIT(i32 21)
  %53 = call i32 @phy_set_bb_reg(%struct.adapter* %50, i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %49, %31
  %55 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %56 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %59 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %22
  br label %111

61:                                               ; preds = %17
  %62 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %63 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %95, label %66

66:                                               ; preds = %61
  %67 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %68 = load i32, i32* @ODM_COMP_ANT_DIV, align 4
  %69 = load i32, i32* @ODM_DBG_LOUD, align 4
  %70 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load i32, i32* @ODM_REG_IGI_A_11N, align 4
  %73 = call i32 @BIT(i32 7)
  %74 = call i32 @phy_set_bb_reg(%struct.adapter* %71, i32 %72, i32 %73, i32 1)
  %75 = load %struct.adapter*, %struct.adapter** %4, align 8
  %76 = load i32, i32* @ODM_REG_CCK_ANTDIV_PARA1_11N, align 4
  %77 = call i32 @BIT(i32 15)
  %78 = call i32 @phy_set_bb_reg(%struct.adapter* %75, i32 %76, i32 %77, i32 1)
  %79 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %80 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %66
  %85 = load %struct.adapter*, %struct.adapter** %4, align 8
  %86 = load i32, i32* @ODM_REG_TX_ANT_CTRL_11N, align 4
  %87 = call i32 @BIT(i32 21)
  %88 = call i32 @phy_set_bb_reg(%struct.adapter* %85, i32 %86, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %84, %66
  %90 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %91 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.fast_ant_train*, %struct.fast_ant_train** %3, align 8
  %94 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %61
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %98 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %104 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102, %96
  %109 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %110 = call i32 @rtl88eu_dm_hw_ant_div(%struct.odm_dm_struct* %109)
  br label %111

111:                                              ; preds = %16, %60, %108, %102
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl88eu_dm_hw_ant_div(%struct.odm_dm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
