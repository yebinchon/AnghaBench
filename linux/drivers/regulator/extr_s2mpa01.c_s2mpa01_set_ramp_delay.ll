; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mpa01.c_s2mpa01_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mpa01.c_s2mpa01_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32 }
%struct.s2mpa01_info = type { i32, i32, i32, i32, i32, i32 }

@S2MPA01_REG_RAMP2 = common dso_local global i32 0, align 4
@S2MPA01_BUCK1_RAMP_EN_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_BUCK16_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_BUCK2_RAMP_EN_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_BUCK24_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_REG_RAMP1 = common dso_local global i32 0, align 4
@S2MPA01_BUCK3_RAMP_EN_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_BUCK3_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_BUCK4_RAMP_EN_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_BUCK5_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_BUCK7_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPA01_BUCK8910_RAMP_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to enable ramp rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @s2mpa01_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mpa01_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s2mpa01_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call %struct.s2mpa01_info* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.s2mpa01_info* %14, %struct.s2mpa01_info** %6, align 8
  %15 = load i32, i32* @S2MPA01_REG_RAMP2, align 4
  store i32 %15, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = call i32 @rdev_get_id(%struct.regulator_dev* %16)
  switch i32 %17, label %136 [
    i32 137, label %18
    i32 135, label %39
    i32 134, label %61
    i32 133, label %72
    i32 132, label %94
    i32 131, label %99
    i32 130, label %115
    i32 129, label %120
    i32 128, label %120
    i32 136, label %120
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @S2MPA01_BUCK1_RAMP_EN_SHIFT, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %137

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %26 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %32 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %37

33:                                               ; preds = %23
  %34 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %35 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @S2MPA01_BUCK16_RAMP_SHIFT, align 4
  store i32 %38, i32* %8, align 4
  br label %137

39:                                               ; preds = %2
  %40 = load i32, i32* @S2MPA01_BUCK2_RAMP_EN_SHIFT, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %137

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %47 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %53 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %56 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @S2MPA01_BUCK24_RAMP_SHIFT, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @S2MPA01_REG_RAMP1, align 4
  store i32 %60, i32* %9, align 4
  br label %137

61:                                               ; preds = %2
  %62 = load i32, i32* @S2MPA01_BUCK3_RAMP_EN_SHIFT, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %137

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %69 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @S2MPA01_BUCK3_RAMP_SHIFT, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @S2MPA01_REG_RAMP1, align 4
  store i32 %71, i32* %9, align 4
  br label %137

72:                                               ; preds = %2
  %73 = load i32, i32* @S2MPA01_BUCK4_RAMP_EN_SHIFT, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %137

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %80 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %86 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %91

87:                                               ; preds = %77
  %88 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %89 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @S2MPA01_BUCK24_RAMP_SHIFT, align 4
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @S2MPA01_REG_RAMP1, align 4
  store i32 %93, i32* %9, align 4
  br label %137

94:                                               ; preds = %2
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %97 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @S2MPA01_BUCK5_RAMP_SHIFT, align 4
  store i32 %98, i32* %8, align 4
  br label %137

99:                                               ; preds = %2
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %102 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %108 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %113

109:                                              ; preds = %99
  %110 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %111 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = load i32, i32* @S2MPA01_BUCK16_RAMP_SHIFT, align 4
  store i32 %114, i32* %8, align 4
  br label %137

115:                                              ; preds = %2
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %118 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @S2MPA01_BUCK7_RAMP_SHIFT, align 4
  store i32 %119, i32* %8, align 4
  br label %137

120:                                              ; preds = %2, %2, %2
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %123 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %129 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  br label %134

130:                                              ; preds = %120
  %131 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %6, align 8
  %132 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i32, i32* @S2MPA01_BUCK8910_RAMP_SHIFT, align 4
  store i32 %135, i32* %8, align 4
  br label %137

136:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %188

137:                                              ; preds = %134, %115, %113, %94, %91, %76, %66, %65, %58, %43, %37, %22
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %180

141:                                              ; preds = %137
  %142 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %143 = call i32 @rdev_get_id(%struct.regulator_dev* %142)
  %144 = icmp sge i32 %143, 137
  br i1 %144, label %145, label %167

145:                                              ; preds = %141
  %146 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %147 = call i32 @rdev_get_id(%struct.regulator_dev* %146)
  %148 = icmp sle i32 %147, 133
  br i1 %148, label %149, label %167

149:                                              ; preds = %145
  %150 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %151 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @S2MPA01_REG_RAMP1, align 4
  %154 = load i32, i32* %11, align 4
  %155 = shl i32 1, %154
  %156 = load i32, i32* %11, align 4
  %157 = shl i32 1, %156
  %158 = call i32 @regmap_update_bits(i32 %152, i32 %153, i32 %155, i32 %157)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %149
  %162 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %163 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %162, i32 0, i32 1
  %164 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %3, align 4
  br label %188

166:                                              ; preds = %149
  br label %167

167:                                              ; preds = %166, %145, %141
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @get_ramp_delay(i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %171 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %8, align 4
  %175 = shl i32 3, %174
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = shl i32 %176, %177
  %179 = call i32 @regmap_update_bits(i32 %172, i32 %173, i32 %175, i32 %178)
  store i32 %179, i32* %3, align 4
  br label %188

180:                                              ; preds = %140
  %181 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %182 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @S2MPA01_REG_RAMP1, align 4
  %185 = load i32, i32* %11, align 4
  %186 = shl i32 1, %185
  %187 = call i32 @regmap_update_bits(i32 %183, i32 %184, i32 %186, i32 0)
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %180, %167, %161, %136
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.s2mpa01_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

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
