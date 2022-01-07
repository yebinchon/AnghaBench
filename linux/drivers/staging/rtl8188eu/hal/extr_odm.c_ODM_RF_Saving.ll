; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_RF_Saving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_RF_Saving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, i32, %struct.rtl_ps, %struct.adapter* }
%struct.rtl_ps = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.adapter = type { i32 }

@bMaskDWord = common dso_local global i32 0, align 4
@RF_Normal = common dso_local global i64 0, align 8
@RF_Save = common dso_local global i64 0, align 8
@RF_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_RF_Saving(%struct.odm_dm_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.odm_dm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.rtl_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %10 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %9, i32 0, i32 3
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %5, align 8
  %12 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %13 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %12, i32 0, i32 2
  store %struct.rtl_ps* %13, %struct.rtl_ps** %6, align 8
  store i32 30, i32* %7, align 4
  store i32 25, i32* %8, align 4
  %14 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %15 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 40
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 50, i32* %7, align 4
  store i32 45, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %21 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.adapter*, %struct.adapter** %5, align 8
  %26 = load i32, i32* @bMaskDWord, align 4
  %27 = call i32 @phy_query_bb_reg(%struct.adapter* %25, i32 2164, i32 %26)
  %28 = and i32 %27, 1884160
  %29 = ashr i32 %28, 14
  %30 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %31 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = load i32, i32* @bMaskDWord, align 4
  %34 = call i32 @phy_query_bb_reg(%struct.adapter* %32, i32 3184, i32 %33)
  %35 = call i32 @BIT(i32 3)
  %36 = and i32 %34, %35
  %37 = ashr i32 %36, 3
  %38 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %39 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.adapter*, %struct.adapter** %5, align 8
  %41 = load i32, i32* @bMaskDWord, align 4
  %42 = call i32 @phy_query_bb_reg(%struct.adapter* %40, i32 2140, i32 %41)
  %43 = and i32 %42, -16777216
  %44 = lshr i32 %43, 24
  %45 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %46 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.adapter*, %struct.adapter** %5, align 8
  %48 = load i32, i32* @bMaskDWord, align 4
  %49 = call i32 @phy_query_bb_reg(%struct.adapter* %47, i32 2676, i32 %48)
  %50 = and i32 %49, 61440
  %51 = ashr i32 %50, 12
  %52 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %53 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %55 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %24, %19
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %106, label %59

59:                                               ; preds = %56
  %60 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %61 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 255
  br i1 %63, label %64, label %101

64:                                               ; preds = %59
  %65 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %66 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RF_Normal, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %72 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i64, i64* @RF_Save, align 8
  %78 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %79 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %78, i32 0, i32 6
  store i64 %77, i64* %79, align 8
  br label %84

80:                                               ; preds = %70
  %81 = load i64, i64* @RF_Normal, align 8
  %82 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %83 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %82, i32 0, i32 6
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %100

85:                                               ; preds = %64
  %86 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %87 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* @RF_Normal, align 8
  %93 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %94 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %93, i32 0, i32 6
  store i64 %92, i64* %94, align 8
  br label %99

95:                                               ; preds = %85
  %96 = load i64, i64* @RF_Save, align 8
  %97 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %98 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %97, i32 0, i32 6
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %84
  br label %105

101:                                              ; preds = %59
  %102 = load i64, i64* @RF_MAX, align 8
  %103 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %104 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %103, i32 0, i32 6
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %100
  br label %110

106:                                              ; preds = %56
  %107 = load i64, i64* @RF_Normal, align 8
  %108 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %109 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %108, i32 0, i32 6
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %105
  %111 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %112 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %115 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %173

118:                                              ; preds = %110
  %119 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %120 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RF_Save, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %118
  %125 = load %struct.adapter*, %struct.adapter** %5, align 8
  %126 = call i32 @phy_set_bb_reg(%struct.adapter* %125, i32 2164, i32 1835008, i32 2)
  %127 = load %struct.adapter*, %struct.adapter** %5, align 8
  %128 = call i32 @BIT(i32 3)
  %129 = call i32 @phy_set_bb_reg(%struct.adapter* %127, i32 3184, i32 %128, i32 0)
  %130 = load %struct.adapter*, %struct.adapter** %5, align 8
  %131 = call i32 @phy_set_bb_reg(%struct.adapter* %130, i32 2140, i32 -16777216, i32 99)
  %132 = load %struct.adapter*, %struct.adapter** %5, align 8
  %133 = call i32 @phy_set_bb_reg(%struct.adapter* %132, i32 2164, i32 49152, i32 2)
  %134 = load %struct.adapter*, %struct.adapter** %5, align 8
  %135 = call i32 @phy_set_bb_reg(%struct.adapter* %134, i32 2676, i32 61440, i32 3)
  %136 = load %struct.adapter*, %struct.adapter** %5, align 8
  %137 = call i32 @BIT(i32 28)
  %138 = call i32 @phy_set_bb_reg(%struct.adapter* %136, i32 2072, i32 %137, i32 0)
  %139 = load %struct.adapter*, %struct.adapter** %5, align 8
  %140 = call i32 @BIT(i32 28)
  %141 = call i32 @phy_set_bb_reg(%struct.adapter* %139, i32 2072, i32 %140, i32 1)
  br label %167

142:                                              ; preds = %118
  %143 = load %struct.adapter*, %struct.adapter** %5, align 8
  %144 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %145 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @phy_set_bb_reg(%struct.adapter* %143, i32 2164, i32 1884160, i32 %146)
  %148 = load %struct.adapter*, %struct.adapter** %5, align 8
  %149 = call i32 @BIT(i32 3)
  %150 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %151 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @phy_set_bb_reg(%struct.adapter* %148, i32 3184, i32 %149, i32 %152)
  %154 = load %struct.adapter*, %struct.adapter** %5, align 8
  %155 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %156 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @phy_set_bb_reg(%struct.adapter* %154, i32 2140, i32 -16777216, i32 %157)
  %159 = load %struct.adapter*, %struct.adapter** %5, align 8
  %160 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %161 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @phy_set_bb_reg(%struct.adapter* %159, i32 2676, i32 61440, i32 %162)
  %164 = load %struct.adapter*, %struct.adapter** %5, align 8
  %165 = call i32 @BIT(i32 28)
  %166 = call i32 @phy_set_bb_reg(%struct.adapter* %164, i32 2072, i32 %165, i32 0)
  br label %167

167:                                              ; preds = %142, %124
  %168 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %169 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.rtl_ps*, %struct.rtl_ps** %6, align 8
  %172 = getelementptr inbounds %struct.rtl_ps, %struct.rtl_ps* %171, i32 0, i32 5
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %167, %110
  ret void
}

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
