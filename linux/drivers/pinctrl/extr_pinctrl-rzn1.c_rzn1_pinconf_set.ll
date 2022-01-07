; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rzn1_pinctrl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"set pin %d pull up\0A\00", align 1
@RZN1_L1_PIN_PULL = common dso_local global i32 0, align 4
@RZN1_L1_PIN_PULL_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"set pin %d pull down\0A\00", align 1
@RZN1_L1_PIN_PULL_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"set pin %d bias off\0A\00", align 1
@RZN1_L1_PIN_PULL_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"set pin %d drv %umA\0A\00", align 1
@RZN1_L1_PIN_DRIVE_STRENGTH_4MA = common dso_local global i32 0, align 4
@RZN1_L1_PIN_DRIVE_STRENGTH_6MA = common dso_local global i32 0, align 4
@RZN1_L1_PIN_DRIVE_STRENGTH_8MA = common dso_local global i32 0, align 4
@RZN1_L1_PIN_DRIVE_STRENGTH_12MA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Drive strength %umA not supported\0A\00", align 1
@RZN1_L1_PIN_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"set pin %d High-Z\0A\00", align 1
@RZN1_L1_FUNC_MASK = common dso_local global i32 0, align 4
@RZN1_FUNC_HIGHZ = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@LOCK_LEVEL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @rzn1_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rzn1_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rzn1_pinctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %18 = call %struct.rzn1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.rzn1_pinctrl* %18, %struct.rzn1_pinctrl** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %21 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp uge i32 %19, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %185

30:                                               ; preds = %4
  %31 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %32 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @readl(i32* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %159, %30
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %162

45:                                               ; preds = %41
  %46 = load i64*, i64** %8, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pinconf_to_config_param(i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @pinconf_to_config_argument(i64 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %155 [
    i32 129, label %59
    i32 130, label %75
    i32 132, label %91
    i32 128, label %107
    i32 131, label %142
  ]

59:                                               ; preds = %45
  %60 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %61 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @RZN1_L1_PIN_PULL, align 4
  %66 = shl i32 3, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @RZN1_L1_PIN_PULL_UP, align 4
  %71 = load i32, i32* @RZN1_L1_PIN_PULL, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %158

75:                                               ; preds = %45
  %76 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %77 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @RZN1_L1_PIN_PULL, align 4
  %82 = shl i32 3, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* @RZN1_L1_PIN_PULL_DOWN, align 4
  %87 = load i32, i32* @RZN1_L1_PIN_PULL, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  br label %158

91:                                               ; preds = %45
  %92 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %93 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @RZN1_L1_PIN_PULL, align 4
  %98 = shl i32 3, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* @RZN1_L1_PIN_PULL_NONE, align 4
  %103 = load i32, i32* @RZN1_L1_PIN_PULL, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %13, align 4
  br label %158

107:                                              ; preds = %45
  %108 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %109 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* %16, align 4
  switch i32 %114, label %123 [
    i32 4, label %115
    i32 6, label %117
    i32 8, label %119
    i32 12, label %121
  ]

115:                                              ; preds = %107
  %116 = load i32, i32* @RZN1_L1_PIN_DRIVE_STRENGTH_4MA, align 4
  store i32 %116, i32* %15, align 4
  br label %131

117:                                              ; preds = %107
  %118 = load i32, i32* @RZN1_L1_PIN_DRIVE_STRENGTH_6MA, align 4
  store i32 %118, i32* %15, align 4
  br label %131

119:                                              ; preds = %107
  %120 = load i32, i32* @RZN1_L1_PIN_DRIVE_STRENGTH_8MA, align 4
  store i32 %120, i32* %15, align 4
  br label %131

121:                                              ; preds = %107
  %122 = load i32, i32* @RZN1_L1_PIN_DRIVE_STRENGTH_12MA, align 4
  store i32 %122, i32* %15, align 4
  br label %131

123:                                              ; preds = %107
  %124 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %125 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %185

131:                                              ; preds = %121, %119, %117, %115
  %132 = load i32, i32* @RZN1_L1_PIN_DRIVE_STRENGTH, align 4
  %133 = shl i32 3, %132
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %13, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @RZN1_L1_PIN_DRIVE_STRENGTH, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %13, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %13, align 4
  br label %158

142:                                              ; preds = %45
  %143 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %144 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @RZN1_L1_FUNC_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %13, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* @RZN1_FUNC_HIGHZ, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %13, align 4
  br label %158

155:                                              ; preds = %45
  %156 = load i32, i32* @ENOTSUPP, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %185

158:                                              ; preds = %142, %131, %91, %75, %59
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %41

162:                                              ; preds = %41
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %162
  %167 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %168 = load i32, i32* @LOCK_LEVEL1, align 4
  %169 = load i32, i32* @LOCK_LEVEL1, align 4
  %170 = call i32 @rzn1_hw_set_lock(%struct.rzn1_pinctrl* %167, i32 %168, i32 %169)
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %173 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = call i32 @writel(i32 %171, i32* %179)
  %181 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %10, align 8
  %182 = load i32, i32* @LOCK_LEVEL1, align 4
  %183 = call i32 @rzn1_hw_set_lock(%struct.rzn1_pinctrl* %181, i32 %182, i32 0)
  br label %184

184:                                              ; preds = %166, %162
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %155, %123, %27
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local %struct.rzn1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rzn1_hw_set_lock(%struct.rzn1_pinctrl*, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
