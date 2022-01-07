; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32 }
%struct.s2mps11_info = type { i32, i32, i32, i32, i32, i32 }

@S2MPS11_REG_RAMP_BUCK = common dso_local global i32 0, align 4
@S2MPS11_BUCK16_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_BUCK2_RAMP_EN_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_BUCK2_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_REG_RAMP = common dso_local global i32 0, align 4
@S2MPS11_BUCK3_RAMP_EN_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_BUCK34_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_BUCK4_RAMP_EN_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_BUCK5_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_BUCK6_RAMP_EN_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_BUCK7810_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPS11_BUCK9_RAMP_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to enable ramp rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @s2mps11_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mps11_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s2mps11_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = call %struct.s2mps11_info* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.s2mps11_info* %15, %struct.s2mps11_info** %6, align 8
  %16 = load i32, i32* @S2MPS11_REG_RAMP_BUCK, align 4
  store i32 %16, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %18 = call i32 @rdev_get_id(%struct.regulator_dev* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  switch i32 %19, label %138 [
    i32 137, label %20
    i32 135, label %36
    i32 134, label %47
    i32 133, label %69
    i32 132, label %91
    i32 131, label %96
    i32 130, label %117
    i32 129, label %117
    i32 136, label %117
    i32 128, label %133
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %23 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %29 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %32 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @S2MPS11_BUCK16_RAMP_SHIFT, align 4
  store i32 %35, i32* %8, align 4
  br label %139

36:                                               ; preds = %2
  %37 = load i32, i32* @S2MPS11_BUCK2_RAMP_EN_SHIFT, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %139

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %44 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @S2MPS11_BUCK2_RAMP_SHIFT, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @S2MPS11_REG_RAMP, align 4
  store i32 %46, i32* %9, align 4
  br label %139

47:                                               ; preds = %2
  %48 = load i32, i32* @S2MPS11_BUCK3_RAMP_EN_SHIFT, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %139

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %55 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %61 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %64 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* @S2MPS11_BUCK34_RAMP_SHIFT, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @S2MPS11_REG_RAMP, align 4
  store i32 %68, i32* %9, align 4
  br label %139

69:                                               ; preds = %2
  %70 = load i32, i32* @S2MPS11_BUCK4_RAMP_EN_SHIFT, align 4
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %139

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %77 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %83 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %88

84:                                               ; preds = %74
  %85 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %86 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* @S2MPS11_BUCK34_RAMP_SHIFT, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @S2MPS11_REG_RAMP, align 4
  store i32 %90, i32* %9, align 4
  br label %139

91:                                               ; preds = %2
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %94 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @S2MPS11_BUCK5_RAMP_SHIFT, align 4
  store i32 %95, i32* %8, align 4
  br label %139

96:                                               ; preds = %2
  %97 = load i32, i32* @S2MPS11_BUCK6_RAMP_EN_SHIFT, align 4
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %139

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %104 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %110 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %115

111:                                              ; preds = %101
  %112 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %113 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* @S2MPS11_BUCK16_RAMP_SHIFT, align 4
  store i32 %116, i32* %8, align 4
  br label %139

117:                                              ; preds = %2, %2, %2
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %120 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %126 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  br label %131

127:                                              ; preds = %117
  %128 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %129 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* @S2MPS11_BUCK7810_RAMP_SHIFT, align 4
  store i32 %132, i32* %8, align 4
  br label %139

133:                                              ; preds = %2
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.s2mps11_info*, %struct.s2mps11_info** %6, align 8
  %136 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @S2MPS11_BUCK9_RAMP_SHIFT, align 4
  store i32 %137, i32* %8, align 4
  br label %139

138:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %191

139:                                              ; preds = %133, %131, %115, %100, %91, %88, %73, %66, %51, %41, %40, %34
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  br label %183

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  %145 = icmp sge i32 %144, 135
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %12, align 4
  %148 = icmp sle i32 %147, 133
  br i1 %148, label %152, label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 131
  br i1 %151, label %152, label %170

152:                                              ; preds = %149, %146
  %153 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %154 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @S2MPS11_REG_RAMP, align 4
  %157 = load i32, i32* %11, align 4
  %158 = shl i32 1, %157
  %159 = load i32, i32* %11, align 4
  %160 = shl i32 1, %159
  %161 = call i32 @regmap_update_bits(i32 %155, i32 %156, i32 %158, i32 %160)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %152
  %165 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %166 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %165, i32 0, i32 1
  %167 = call i32 @dev_err(i32* %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %3, align 4
  br label %191

169:                                              ; preds = %152
  br label %170

170:                                              ; preds = %169, %149
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @get_ramp_delay(i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %174 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = shl i32 3, %177
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = shl i32 %179, %180
  %182 = call i32 @regmap_update_bits(i32 %175, i32 %176, i32 %178, i32 %181)
  store i32 %182, i32* %3, align 4
  br label %191

183:                                              ; preds = %142
  %184 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %185 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @S2MPS11_REG_RAMP, align 4
  %188 = load i32, i32* %11, align 4
  %189 = shl i32 1, %188
  %190 = call i32 @regmap_update_bits(i32 %186, i32 %187, i32 %189, i32 0)
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %183, %170, %164, %138
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.s2mps11_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @get_ramp_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
