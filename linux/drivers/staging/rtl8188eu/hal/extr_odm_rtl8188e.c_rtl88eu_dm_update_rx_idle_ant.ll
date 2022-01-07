; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_update_rx_idle_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_update_rx_idle_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64, %struct.adapter*, %struct.fast_ant_train }
%struct.adapter = type { i32 }
%struct.fast_ant_train = type { i64 }

@MAIN_ANT = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@MAIN_ANT_CG_TRX = common dso_local global i32 0, align 4
@MAIN_ANT_CGCS_RX = common dso_local global i32 0, align 4
@AUX_ANT_CG_TRX = common dso_local global i32 0, align 4
@AUX_ANT_CGCS_RX = common dso_local global i32 0, align 4
@ODM_REG_RX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@ODM_REG_ANTSEL_CTRL_11N = common dso_local global i32 0, align 4
@ODM_REG_RESP_TX_11N = common dso_local global i32 0, align 4
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_dm_update_rx_idle_ant(%struct.odm_dm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.odm_dm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fast_ant_train*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %10 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %9, i32 0, i32 2
  store %struct.fast_ant_train* %10, %struct.fast_ant_train** %5, align 8
  %11 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %12 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %11, i32 0, i32 1
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %6, align 8
  %14 = load %struct.fast_ant_train*, %struct.fast_ant_train** %5, align 8
  %15 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %137

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @MAIN_ANT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %25 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @MAIN_ANT_CG_TRX, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @MAIN_ANT_CGCS_RX, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %7, align 4
  %35 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %36 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @AUX_ANT_CG_TRX, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @AUX_ANT_CGCS_RX, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %8, align 4
  br label %69

46:                                               ; preds = %19
  %47 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %48 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @AUX_ANT_CG_TRX, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @AUX_ANT_CGCS_RX, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %7, align 4
  %58 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %59 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @MAIN_ANT_CG_TRX, align 4
  br label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @MAIN_ANT_CGCS_RX, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %44
  %70 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %71 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %69
  %76 = load %struct.adapter*, %struct.adapter** %6, align 8
  %77 = load i32, i32* @ODM_REG_RX_ANT_CTRL_11N, align 4
  %78 = call i32 @BIT(i32 5)
  %79 = call i32 @BIT(i32 4)
  %80 = or i32 %78, %79
  %81 = call i32 @BIT(i32 3)
  %82 = or i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @phy_set_bb_reg(%struct.adapter* %76, i32 %77, i32 %82, i32 %83)
  %85 = load %struct.adapter*, %struct.adapter** %6, align 8
  %86 = load i32, i32* @ODM_REG_RX_ANT_CTRL_11N, align 4
  %87 = call i32 @BIT(i32 8)
  %88 = call i32 @BIT(i32 7)
  %89 = or i32 %87, %88
  %90 = call i32 @BIT(i32 6)
  %91 = or i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @phy_set_bb_reg(%struct.adapter* %85, i32 %86, i32 %91, i32 %92)
  %94 = load %struct.adapter*, %struct.adapter** %6, align 8
  %95 = load i32, i32* @ODM_REG_ANTSEL_CTRL_11N, align 4
  %96 = call i32 @BIT(i32 14)
  %97 = call i32 @BIT(i32 13)
  %98 = or i32 %96, %97
  %99 = call i32 @BIT(i32 12)
  %100 = or i32 %98, %99
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @phy_set_bb_reg(%struct.adapter* %94, i32 %95, i32 %100, i32 %101)
  %103 = load %struct.adapter*, %struct.adapter** %6, align 8
  %104 = load i32, i32* @ODM_REG_RESP_TX_11N, align 4
  %105 = call i32 @BIT(i32 6)
  %106 = call i32 @BIT(i32 7)
  %107 = or i32 %105, %106
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @phy_set_bb_reg(%struct.adapter* %103, i32 %104, i32 %107, i32 %108)
  br label %136

110:                                              ; preds = %69
  %111 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %112 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load %struct.adapter*, %struct.adapter** %6, align 8
  %118 = load i32, i32* @ODM_REG_RX_ANT_CTRL_11N, align 4
  %119 = call i32 @BIT(i32 5)
  %120 = call i32 @BIT(i32 4)
  %121 = or i32 %119, %120
  %122 = call i32 @BIT(i32 3)
  %123 = or i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @phy_set_bb_reg(%struct.adapter* %117, i32 %118, i32 %123, i32 %124)
  %126 = load %struct.adapter*, %struct.adapter** %6, align 8
  %127 = load i32, i32* @ODM_REG_RX_ANT_CTRL_11N, align 4
  %128 = call i32 @BIT(i32 8)
  %129 = call i32 @BIT(i32 7)
  %130 = or i32 %128, %129
  %131 = call i32 @BIT(i32 6)
  %132 = or i32 %130, %131
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @phy_set_bb_reg(%struct.adapter* %126, i32 %127, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %116, %110
  br label %136

136:                                              ; preds = %135, %75
  br label %137

137:                                              ; preds = %136, %2
  %138 = load i64, i64* %4, align 8
  %139 = load %struct.fast_ant_train*, %struct.fast_ant_train** %5, align 8
  %140 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  ret void
}

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
