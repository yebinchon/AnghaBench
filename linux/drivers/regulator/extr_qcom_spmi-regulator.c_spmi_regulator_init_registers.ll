; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { i32 }
%struct.spmi_regulator_init_data = type { i32, i32, i32 }

@SPMI_COMMON_REG_VOLTAGE_RANGE = common dso_local global i32 0, align 4
@SPMI_REGULATOR_LOGICAL_TYPE_SMPS = common dso_local global i32 0, align 4
@SPMI_REGULATOR_LOGICAL_TYPE_LDO = common dso_local global i32 0, align 4
@SPMI_REGULATOR_LOGICAL_TYPE_VS = common dso_local global i32 0, align 4
@SPMI_REGULATOR_PIN_CTRL_ENABLE_HW_DEFAULT = common dso_local global i32 0, align 4
@SPMI_COMMON_ENABLE_FOLLOW_ALL_MASK = common dso_local global i32 0, align 4
@SPMI_COMMON_IDX_ENABLE = common dso_local global i64 0, align 8
@SPMI_REGULATOR_PIN_CTRL_HPM_HW_DEFAULT = common dso_local global i32 0, align 4
@SPMI_COMMON_MODE_FOLLOW_ALL_MASK = common dso_local global i32 0, align 4
@SPMI_COMMON_IDX_MODE = common dso_local global i64 0, align 8
@SPMI_COMMON_MODE_FOLLOW_AWAKE_MASK = common dso_local global i32 0, align 4
@SPMI_REGULATOR_LOGICAL_TYPE_ULT_LO_SMPS = common dso_local global i32 0, align 4
@SPMI_REGULATOR_LOGICAL_TYPE_ULT_HO_SMPS = common dso_local global i32 0, align 4
@SPMI_REGULATOR_LOGICAL_TYPE_ULT_LDO = common dso_local global i32 0, align 4
@SPMI_VS_SOFT_START_STR_HW_DEFAULT = common dso_local global i32 0, align 4
@SPMI_VS_SOFT_START_SEL_MASK = common dso_local global i32 0, align 4
@SPMI_VS_REG_SOFT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_regulator*, %struct.spmi_regulator_init_data*)* @spmi_regulator_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_init_registers(%struct.spmi_regulator* %0, %struct.spmi_regulator_init_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spmi_regulator*, align 8
  %5 = alloca %struct.spmi_regulator_init_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %4, align 8
  store %struct.spmi_regulator_init_data* %1, %struct.spmi_regulator_init_data** %5, align 8
  %11 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %12 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %15 = load i32, i32* @SPMI_COMMON_REG_VOLTAGE_RANGE, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %17 = call i32 @spmi_vreg_read(%struct.spmi_regulator* %14, i32 %15, i32* %16, i32 8)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %183

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_SMPS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_LDO, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_VS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30, %26, %22
  %35 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %36 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SPMI_REGULATOR_PIN_CTRL_ENABLE_HW_DEFAULT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @SPMI_COMMON_ENABLE_FOLLOW_ALL_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i64, i64* @SPMI_COMMON_IDX_ENABLE, align 8
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %49 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SPMI_COMMON_ENABLE_FOLLOW_ALL_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i64, i64* @SPMI_COMMON_IDX_ENABLE, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %41, %34, %30
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_SMPS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_LDO, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61, %57
  %66 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %67 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SPMI_REGULATOR_PIN_CTRL_HPM_HW_DEFAULT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @SPMI_COMMON_MODE_FOLLOW_ALL_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i64, i64* @SPMI_COMMON_IDX_MODE, align 8
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %80 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SPMI_COMMON_MODE_FOLLOW_ALL_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i64, i64* @SPMI_COMMON_IDX_MODE, align 8
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %72, %65, %61
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_VS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %88
  %93 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %94 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SPMI_REGULATOR_PIN_CTRL_HPM_HW_DEFAULT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @SPMI_COMMON_MODE_FOLLOW_AWAKE_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = load i64, i64* @SPMI_COMMON_IDX_MODE, align 8
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %107 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SPMI_COMMON_MODE_FOLLOW_AWAKE_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i64, i64* @SPMI_COMMON_IDX_MODE, align 8
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %99, %92, %88
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_ULT_LO_SMPS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_ULT_HO_SMPS, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_ULT_LDO, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123, %119, %115
  %128 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %129 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SPMI_REGULATOR_PIN_CTRL_HPM_HW_DEFAULT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @SPMI_COMMON_MODE_FOLLOW_AWAKE_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = load i64, i64* @SPMI_COMMON_IDX_MODE, align 8
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %142 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SPMI_COMMON_MODE_FOLLOW_AWAKE_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i64, i64* @SPMI_COMMON_IDX_MODE, align 8
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %134, %127, %123
  %151 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %152 = load i32, i32* @SPMI_COMMON_REG_VOLTAGE_RANGE, align 4
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %154 = call i32 @spmi_vreg_write(%struct.spmi_regulator* %151, i32 %152, i32* %153, i32 8)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %3, align 4
  br label %183

159:                                              ; preds = %150
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_VS, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %159
  %164 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %165 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SPMI_VS_SOFT_START_STR_HW_DEFAULT, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %5, align 8
  %171 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @SPMI_VS_SOFT_START_SEL_MASK, align 4
  %174 = and i32 %172, %173
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* @SPMI_VS_SOFT_START_SEL_MASK, align 4
  store i32 %175, i32* %10, align 4
  %176 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %177 = load i32, i32* @SPMI_VS_REG_SOFT_START, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @spmi_vreg_update_bits(%struct.spmi_regulator* %176, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %3, align 4
  br label %183

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %181, %159
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %169, %157, %20
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @spmi_vreg_read(%struct.spmi_regulator*, i32, i32*, i32) #1

declare dso_local i32 @spmi_vreg_write(%struct.spmi_regulator*, i32, i32*, i32) #1

declare dso_local i32 @spmi_vreg_update_bits(%struct.spmi_regulator*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
