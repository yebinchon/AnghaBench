; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_cca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_cca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_hal }
%struct.rtw_efuse = type { i32 }
%struct.rtw_hal = type { i64, i64 }
%struct.rtw8822b_rfe_info = type { i32, i32, %struct.cca_ccut*, %struct.cca_ccut* }
%struct.cca_ccut = type { i32 }

@BB_PATH_A = common dso_local global i64 0, align 8
@BB_PATH_B = common dso_local global i64 0, align 8
@CCUT_IDX_1R_2G = common dso_local global i32 0, align 4
@CCUT_IDX_2R_2G = common dso_local global i32 0, align 4
@CCUT_IDX_1R_5G = common dso_local global i32 0, align 4
@CCUT_IDX_2R_5G = common dso_local global i32 0, align 4
@RTW_CHIP_VER_CUT_B = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@REG_CCASEL = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@REG_PDMFTH = common dso_local global i32 0, align 4
@REG_CCA2ND = common dso_local global i32 0, align 4
@REG_L1WT = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, %struct.rtw8822b_rfe_info*)* @rtw8822b_set_channel_cca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_set_channel_cca(%struct.rtw_dev* %0, i32 %1, i32 %2, %struct.rtw8822b_rfe_info* %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtw8822b_rfe_info*, align 8
  %9 = alloca %struct.rtw_hal*, align 8
  %10 = alloca %struct.rtw_efuse*, align 8
  %11 = alloca %struct.cca_ccut*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.rtw8822b_rfe_info* %3, %struct.rtw8822b_rfe_info** %8, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 1
  store %struct.rtw_hal* %20, %struct.rtw_hal** %9, align 8
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %22 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %21, i32 0, i32 0
  store %struct.rtw_efuse* %22, %struct.rtw_efuse** %10, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 14
  br i1 %24, label %25, label %45

25:                                               ; preds = %4
  %26 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** %8, align 8
  %27 = getelementptr inbounds %struct.rtw8822b_rfe_info, %struct.rtw8822b_rfe_info* %26, i32 0, i32 3
  %28 = load %struct.cca_ccut*, %struct.cca_ccut** %27, align 8
  store %struct.cca_ccut* %28, %struct.cca_ccut** %11, align 8
  %29 = load %struct.rtw_hal*, %struct.rtw_hal** %9, align 8
  %30 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BB_PATH_A, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %struct.rtw_hal*, %struct.rtw_hal** %9, align 8
  %36 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BB_PATH_B, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %25
  %41 = load i32, i32* @CCUT_IDX_1R_2G, align 4
  store i32 %41, i32* %12, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @CCUT_IDX_2R_2G, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %65

45:                                               ; preds = %4
  %46 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** %8, align 8
  %47 = getelementptr inbounds %struct.rtw8822b_rfe_info, %struct.rtw8822b_rfe_info* %46, i32 0, i32 2
  %48 = load %struct.cca_ccut*, %struct.cca_ccut** %47, align 8
  store %struct.cca_ccut* %48, %struct.cca_ccut** %11, align 8
  %49 = load %struct.rtw_hal*, %struct.rtw_hal** %9, align 8
  %50 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BB_PATH_A, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = load %struct.rtw_hal*, %struct.rtw_hal** %9, align 8
  %56 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BB_PATH_B, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %45
  %61 = load i32, i32* @CCUT_IDX_1R_5G, align 4
  store i32 %61, i32* %12, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @CCUT_IDX_2R_5G, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.cca_ccut*, %struct.cca_ccut** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @rtw8822b_get_cca_val(%struct.cca_ccut* %66, i32 %67, i32* %13, i32* %14, i32* %15)
  %69 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** %8, align 8
  %70 = getelementptr inbounds %struct.rtw8822b_rfe_info, %struct.rtw8822b_rfe_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %73 [
    i32 129, label %72
    i32 130, label %80
    i32 128, label %81
  ]

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %65, %72
  store i32 1, i32* %17, align 4
  %74 = load %struct.rtw8822b_rfe_info*, %struct.rtw8822b_rfe_info** %8, align 8
  %75 = getelementptr inbounds %struct.rtw8822b_rfe_info, %struct.rtw8822b_rfe_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* %18, align 4
  br label %79

79:                                               ; preds = %78, %73
  br label %87

80:                                               ; preds = %65
  store i32 1, i32* %16, align 4
  br label %87

81:                                               ; preds = %65
  %82 = load i32, i32* %6, align 4
  %83 = icmp sle i32 %82, 14
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 1, i32* %17, align 4
  br label %86

85:                                               ; preds = %81
  store i32 1, i32* %16, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %80, %79
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %130

90:                                               ; preds = %87
  %91 = load %struct.rtw_hal*, %struct.rtw_hal** %9, align 8
  %92 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RTW_CHIP_VER_CUT_B, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @CCUT_IDX_2R_2G, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @CCUT_IDX_2R_5G, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100, %96
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @RTW_CHANNEL_WIDTH_40, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %128, label %108

108:                                              ; preds = %104, %100, %90
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @CCUT_IDX_2R_5G, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @RTW_CHANNEL_WIDTH_40, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %128, label %119

119:                                              ; preds = %115, %111, %108
  %120 = load %struct.rtw_efuse*, %struct.rtw_efuse** %10, align 8
  %121 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 5
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @CCUT_IDX_2R_5G, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %115, %104
  store i32 2040588840, i32* %14, align 4
  br label %129

129:                                              ; preds = %128, %124, %119
  br label %130

130:                                              ; preds = %129, %87
  %131 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %132 = load i32, i32* @REG_CCASEL, align 4
  %133 = load i32, i32* @MASKDWORD, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @rtw_write32_mask(%struct.rtw_dev* %131, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %137 = load i32, i32* @REG_PDMFTH, align 4
  %138 = load i32, i32* @MASKDWORD, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @rtw_write32_mask(%struct.rtw_dev* %136, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %142 = load i32, i32* @REG_CCA2ND, align 4
  %143 = load i32, i32* @MASKDWORD, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @rtw_write32_mask(%struct.rtw_dev* %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %130
  %149 = load %struct.rtw_hal*, %struct.rtw_hal** %9, align 8
  %150 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @RTW_CHIP_VER_CUT_B, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %148
  %155 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %156 = load i32, i32* @REG_L1WT, align 4
  %157 = load i32, i32* @MASKDWORD, align 4
  %158 = call i32 @rtw_write32_mask(%struct.rtw_dev* %155, i32 %156, i32 %157, i32 -1852525895)
  br label %159

159:                                              ; preds = %154, %148, %130
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @RTW_CHANNEL_WIDTH_20, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %159
  %164 = load i32, i32* %6, align 4
  %165 = icmp sge i32 %164, 52
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = icmp sle i32 %167, 64
  br i1 %168, label %175, label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %6, align 4
  %171 = icmp sge i32 %170, 100
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = load i32, i32* %6, align 4
  %174 = icmp sle i32 %173, 144
  br i1 %174, label %175, label %179

175:                                              ; preds = %172, %166
  %176 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %177 = load i32, i32* @REG_CCA2ND, align 4
  %178 = call i32 @rtw_write32_mask(%struct.rtw_dev* %176, i32 %177, i32 240, i32 4)
  br label %179

179:                                              ; preds = %175, %172, %169, %159
  ret void
}

declare dso_local i32 @rtw8822b_get_cca_val(%struct.cca_ccut*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
