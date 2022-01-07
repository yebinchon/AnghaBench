; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_get_voltage_dcdc_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_get_voltage_dcdc_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps65910_reg = type { i32 }

@TPS65910_VDD1_OP = common dso_local global i32 0, align 4
@TPS65910_VDD1 = common dso_local global i32 0, align 4
@VDD1_VGAIN_SEL_MASK = common dso_local global i32 0, align 4
@VDD1_VGAIN_SEL_SHIFT = common dso_local global i32 0, align 4
@TPS65910_VDD1_SR = common dso_local global i32 0, align 4
@VDD1_OP_CMD_MASK = common dso_local global i32 0, align 4
@VDD1_OP_SEL_MASK = common dso_local global i32 0, align 4
@VDD1_SR_SEL_MASK = common dso_local global i32 0, align 4
@TPS65910_VDD2_OP = common dso_local global i32 0, align 4
@TPS65910_VDD2 = common dso_local global i32 0, align 4
@VDD2_VGAIN_SEL_MASK = common dso_local global i32 0, align 4
@VDD2_VGAIN_SEL_SHIFT = common dso_local global i32 0, align 4
@TPS65910_VDD2_SR = common dso_local global i32 0, align 4
@VDD2_OP_CMD_MASK = common dso_local global i32 0, align 4
@VDD2_OP_SEL_MASK = common dso_local global i32 0, align 4
@VDD2_SR_SEL_MASK = common dso_local global i32 0, align 4
@TPS65911_VDDCTRL_OP = common dso_local global i32 0, align 4
@TPS65911_VDDCTRL_SR = common dso_local global i32 0, align 4
@VDDCTRL_OP_CMD_MASK = common dso_local global i32 0, align 4
@VDDCTRL_OP_SEL_MASK = common dso_local global i32 0, align 4
@VDDCTRL_SR_SEL_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps65910_get_voltage_dcdc_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_get_voltage_dcdc_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps65910_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.tps65910_reg* %13, %struct.tps65910_reg** %4, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = call i32 @rdev_get_id(%struct.regulator_dev* %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %137 [
    i32 130, label %17
    i32 129, label %62
    i32 128, label %107
  ]

17:                                               ; preds = %1
  %18 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %19 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TPS65910_VDD1_OP, align 4
  %22 = call i32 @tps65910_reg_read(i32 %20, i32 %21, i32* %7)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %170

27:                                               ; preds = %17
  %28 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %29 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TPS65910_VDD1, align 4
  %32 = call i32 @tps65910_reg_read(i32 %30, i32 %31, i32* %10)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %170

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @VDD1_VGAIN_SEL_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @VDD1_VGAIN_SEL_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %44 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TPS65910_VDD1_SR, align 4
  %47 = call i32 @tps65910_reg_read(i32 %45, i32 %46, i32* %8)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %170

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @VDD1_OP_CMD_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @VDD1_OP_SEL_MASK, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @VDD1_SR_SEL_MASK, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  store i32 75, i32* %9, align 4
  br label %137

62:                                               ; preds = %1
  %63 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %64 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TPS65910_VDD2_OP, align 4
  %67 = call i32 @tps65910_reg_read(i32 %65, i32 %66, i32* %7)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %170

72:                                               ; preds = %62
  %73 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %74 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TPS65910_VDD2, align 4
  %77 = call i32 @tps65910_reg_read(i32 %75, i32 %76, i32* %10)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %170

82:                                               ; preds = %72
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @VDD2_VGAIN_SEL_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @VDD2_VGAIN_SEL_SHIFT, align 4
  %87 = ashr i32 %85, %86
  store i32 %87, i32* %10, align 4
  %88 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %89 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TPS65910_VDD2_SR, align 4
  %92 = call i32 @tps65910_reg_read(i32 %90, i32 %91, i32* %8)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %170

97:                                               ; preds = %82
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @VDD2_OP_CMD_MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* @VDD2_OP_SEL_MASK, align 4
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @VDD2_SR_SEL_MASK, align 4
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %8, align 4
  store i32 75, i32* %9, align 4
  br label %137

107:                                              ; preds = %1
  %108 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %109 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TPS65911_VDDCTRL_OP, align 4
  %112 = call i32 @tps65910_reg_read(i32 %110, i32 %111, i32* %7)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %170

117:                                              ; preds = %107
  %118 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %119 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TPS65911_VDDCTRL_SR, align 4
  %122 = call i32 @tps65910_reg_read(i32 %120, i32 %121, i32* %8)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %170

127:                                              ; preds = %117
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @VDDCTRL_OP_CMD_MASK, align 4
  %130 = and i32 %128, %129
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* @VDDCTRL_OP_SEL_MASK, align 4
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* @VDDCTRL_SR_SEL_MASK, align 4
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %8, align 4
  store i32 64, i32* %9, align 4
  br label %137

137:                                              ; preds = %1, %127, %97, %52
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 1, i32* %10, align 4
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 3
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 3, i32* %8, align 4
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %155, 3
  store i32 %156, i32* %2, align 4
  br label %170

157:                                              ; preds = %141
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 3
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 3, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %157
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %165, %161
  %168 = load i32, i32* %7, align 4
  %169 = sub nsw i32 %168, 3
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %167, %154, %125, %115, %95, %80, %70, %50, %35, %25
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps65910_reg_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
