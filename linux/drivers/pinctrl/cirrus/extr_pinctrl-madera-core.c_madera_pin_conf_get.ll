; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_pin_conf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_pin_conf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.madera_pin_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MADERA_GPIO1_CTRL_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read GP%d conf (%d)\0A\00", align 1
@MADERA_GP1_PU_MASK = common dso_local global i32 0, align 4
@MADERA_GP1_PD_MASK = common dso_local global i32 0, align 4
@MADERA_GP1_PU = common dso_local global i32 0, align 4
@MADERA_GP1_PD = common dso_local global i32 0, align 4
@MADERA_GP1_OP_CFG_MASK = common dso_local global i32 0, align 4
@MADERA_GP1_DB_MASK = common dso_local global i32 0, align 4
@MADERA_GP1_DIR_MASK = common dso_local global i32 0, align 4
@MADERA_GP1_IP_CFG_MASK = common dso_local global i32 0, align 4
@MADERA_GP1_LVL_MASK = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @madera_pin_conf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_pin_conf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.madera_pin_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.madera_pin_private* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.madera_pin_private* %15, %struct.madera_pin_private** %8, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @pinconf_to_config_param(i64 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @MADERA_GPIO1_CTRL_1, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul i32 2, %20
  %22 = add i32 %19, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.madera_pin_private*, %struct.madera_pin_private** %8, align 8
  %24 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %30 = call i32 @regmap_read(i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %3
  %34 = load %struct.madera_pin_private*, %struct.madera_pin_private** %8, align 8
  %35 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %42 = call i32 @regmap_read(i32 %38, i32 %40, i32* %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %33, %3
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.madera_pin_private*, %struct.madera_pin_private** %8, align 8
  %48 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %177

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %169 [
    i32 139, label %57
    i32 138, label %72
    i32 137, label %84
    i32 136, label %97
    i32 135, label %110
    i32 134, label %118
    i32 133, label %126
    i32 132, label %131
    i32 131, label %139
    i32 130, label %147
    i32 129, label %147
    i32 128, label %155
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @MADERA_GP1_PU_MASK, align 4
  %59 = load i32, i32* @MADERA_GP1_PD_MASK, align 4
  %60 = or i32 %58, %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MADERA_GP1_PU, align 4
  %67 = load i32, i32* @MADERA_GP1_PD, align 4
  %68 = or i32 %66, %67
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %57
  br label %172

72:                                               ; preds = %55
  %73 = load i32, i32* @MADERA_GP1_PU_MASK, align 4
  %74 = load i32, i32* @MADERA_GP1_PD_MASK, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %82, %72
  br label %172

84:                                               ; preds = %55
  %85 = load i32, i32* @MADERA_GP1_PU_MASK, align 4
  %86 = load i32, i32* @MADERA_GP1_PD_MASK, align 4
  %87 = or i32 %85, %86
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MADERA_GP1_PD_MASK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %84
  br label %172

97:                                               ; preds = %55
  %98 = load i32, i32* @MADERA_GP1_PU_MASK, align 4
  %99 = load i32, i32* @MADERA_GP1_PD_MASK, align 4
  %100 = or i32 %98, %99
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %100
  store i32 %103, i32* %101, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MADERA_GP1_PU_MASK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  store i32 1, i32* %10, align 4
  br label %109

109:                                              ; preds = %108, %97
  br label %172

110:                                              ; preds = %55
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MADERA_GP1_OP_CFG_MASK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 1, i32* %10, align 4
  br label %117

117:                                              ; preds = %116, %110
  br label %172

118:                                              ; preds = %55
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MADERA_GP1_OP_CFG_MASK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  store i32 1, i32* %10, align 4
  br label %125

125:                                              ; preds = %124, %118
  br label %172

126:                                              ; preds = %55
  %127 = load %struct.madera_pin_private*, %struct.madera_pin_private** %8, align 8
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @madera_pin_unmake_drv_str(%struct.madera_pin_private* %127, i32 %129)
  store i32 %130, i32* %10, align 4
  br label %172

131:                                              ; preds = %55
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MADERA_GP1_DB_MASK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 1, i32* %10, align 4
  br label %138

138:                                              ; preds = %137, %131
  br label %172

139:                                              ; preds = %55
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MADERA_GP1_DIR_MASK, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 1, i32* %10, align 4
  br label %146

146:                                              ; preds = %145, %139
  br label %172

147:                                              ; preds = %55, %55
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MADERA_GP1_IP_CFG_MASK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 1, i32* %10, align 4
  br label %154

154:                                              ; preds = %153, %147
  br label %172

155:                                              ; preds = %55
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @MADERA_GP1_DIR_MASK, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %155
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MADERA_GP1_LVL_MASK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 1, i32* %10, align 4
  br label %168

168:                                              ; preds = %167, %161, %155
  br label %172

169:                                              ; preds = %55
  %170 = load i32, i32* @ENOTSUPP, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %177

172:                                              ; preds = %168, %154, %146, %138, %126, %125, %117, %109, %96, %83, %71
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = call i64 @pinconf_to_config_packed(i32 %173, i32 %174)
  %176 = load i64*, i64** %7, align 8
  store i64 %175, i64* %176, align 8
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %172, %169, %46
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.madera_pin_private* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @madera_pin_unmake_drv_str(%struct.madera_pin_private*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
