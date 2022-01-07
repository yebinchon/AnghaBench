; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_smps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_smps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.palmas_regs_info* }
%struct.palmas_regs_info = type { i32, i32 }
%struct.palmas_reg_init = type { i32, i32, i64, i32 }

@PALMAS_SMPS10_CTRL_MODE_SLEEP_MASK = common dso_local global i32 0, align 4
@PALMAS_SMPS10_CTRL_MODE_SLEEP_SHIFT = common dso_local global i32 0, align 4
@PALMAS_SMPS12_CTRL_WR_S = common dso_local global i32 0, align 4
@PALMAS_SMPS12_CTRL_ROOF_FLOOR_EN = common dso_local global i32 0, align 4
@PALMAS_SMPS12_CTRL_MODE_SLEEP_MASK = common dso_local global i32 0, align 4
@PALMAS_SMPS12_CTRL_MODE_SLEEP_SHIFT = common dso_local global i32 0, align 4
@PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK = common dso_local global i32 0, align 4
@SMPS_CTRL_MODE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas*, i32, %struct.palmas_reg_init*)* @palmas_smps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_smps_init(%struct.palmas* %0, i32 %1, %struct.palmas_reg_init* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.palmas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.palmas_reg_init*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.palmas_pmic_driver_data*, align 8
  %11 = alloca %struct.palmas_regs_info*, align 8
  %12 = alloca i32, align 4
  store %struct.palmas* %0, %struct.palmas** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.palmas_reg_init* %2, %struct.palmas_reg_init** %7, align 8
  %13 = load %struct.palmas*, %struct.palmas** %5, align 8
  %14 = getelementptr inbounds %struct.palmas, %struct.palmas* %13, i32 0, i32 0
  %15 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %14, align 8
  store %struct.palmas_pmic_driver_data* %15, %struct.palmas_pmic_driver_data** %10, align 8
  %16 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %17 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %16, i32 0, i32 0
  %18 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %18, i64 %20
  store %struct.palmas_regs_info* %21, %struct.palmas_regs_info** %11, align 8
  %22 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %11, align 8
  %23 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.palmas*, %struct.palmas** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @palmas_smps_read(%struct.palmas* %25, i32 %26, i32* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %175

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %52 [
    i32 129, label %34
    i32 128, label %34
  ]

34:                                               ; preds = %32, %32
  %35 = load i32, i32* @PALMAS_SMPS10_CTRL_MODE_SLEEP_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %40 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %45 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PALMAS_SMPS10_CTRL_MODE_SLEEP_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %43, %34
  br label %98

52:                                               ; preds = %32
  %53 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %54 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @PALMAS_SMPS12_CTRL_WR_S, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %66

61:                                               ; preds = %52
  %62 = load i32, i32* @PALMAS_SMPS12_CTRL_WR_S, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %68 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @PALMAS_SMPS12_CTRL_ROOF_FLOOR_EN, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %80

75:                                               ; preds = %66
  %76 = load i32, i32* @PALMAS_SMPS12_CTRL_ROOF_FLOOR_EN, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_SLEEP_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %86 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %91 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_SLEEP_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %89, %80
  br label %98

98:                                               ; preds = %97, %51
  %99 = load %struct.palmas*, %struct.palmas** %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @palmas_smps_write(%struct.palmas* %99, i32 %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %175

107:                                              ; preds = %98
  %108 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %11, align 8
  %109 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %107
  %113 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %114 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %119 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %8, align 4
  %121 = load %struct.palmas*, %struct.palmas** %5, align 8
  %122 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %11, align 8
  %123 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @palmas_smps_write(%struct.palmas* %121, i32 %124, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %4, align 4
  br label %175

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %112, %107
  %133 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %134 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %174

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 129
  br i1 %139, label %140, label %174

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 128
  br i1 %142, label %143, label %174

143:                                              ; preds = %140
  %144 = load %struct.palmas*, %struct.palmas** %5, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @palmas_smps_read(%struct.palmas* %144, i32 %145, i32* %8)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %4, align 4
  br label %175

151:                                              ; preds = %143
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %169, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* @SMPS_CTRL_MODE_ON, align 4
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  %160 = load %struct.palmas*, %struct.palmas** %5, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @palmas_smps_write(%struct.palmas* %160, i32 %161, i32 %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %4, align 4
  br label %175

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %151
  %170 = load %struct.palmas*, %struct.palmas** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %7, align 8
  %173 = call i32 @palmas_regulator_config_external(%struct.palmas* %170, i32 %171, %struct.palmas_reg_init* %172)
  store i32 %173, i32* %4, align 4
  br label %175

174:                                              ; preds = %140, %137, %132
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %169, %166, %149, %129, %105, %30
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @palmas_smps_read(%struct.palmas*, i32, i32*) #1

declare dso_local i32 @palmas_smps_write(%struct.palmas*, i32, i32) #1

declare dso_local i32 @palmas_regulator_config_external(%struct.palmas*, i32, %struct.palmas_reg_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
