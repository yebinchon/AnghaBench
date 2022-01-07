; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_set_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_set_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32*, i32, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { i32, %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32, i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)* }
%struct.rockchip_pin_bank.0 = type opaque
%struct.regmap = type opaque
%struct.regmap.1 = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"setting pull of GPIO%d-%d to %d\0A\00", align 1
@RK3066B = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_DISABLE = common dso_local global i32 0, align 4
@rockchip_pull_list = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported pull setting %d\0A\00", align 1
@RK3188_PULL_BITS_PER_PIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported pinctrl type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32, i32)* @rockchip_set_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_set_pull(%struct.rockchip_pin_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_pin_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pinctrl*, align 8
  %9 = alloca %struct.rockchip_pin_ctrl*, align 8
  %10 = alloca %struct.regmap.1*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %19 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %18, i32 0, i32 2
  %20 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %19, align 8
  store %struct.rockchip_pinctrl* %20, %struct.rockchip_pinctrl** %8, align 8
  %21 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %22 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %21, i32 0, i32 1
  %23 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %22, align 8
  store %struct.rockchip_pin_ctrl* %23, %struct.rockchip_pin_ctrl** %9, align 8
  %24 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %25 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %28 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %9, align 8
  %34 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RK3066B, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %4, align 4
  br label %154

47:                                               ; preds = %3
  %48 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %9, align 8
  %49 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %48, i32 0, i32 1
  %50 = load i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)*, i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)** %49, align 8
  %51 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %52 = bitcast %struct.rockchip_pin_bank* %51 to %struct.rockchip_pin_bank.0*
  %53 = load i32, i32* %6, align 4
  %54 = bitcast %struct.regmap.1** %10 to %struct.regmap**
  %55 = call i32 %50(%struct.rockchip_pin_bank.0* %52, i32 %53, %struct.regmap** %54, i32* %11, i32* %15)
  %56 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %9, align 8
  %57 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %145 [
    i32 134, label %59
    i32 133, label %59
    i32 135, label %76
    i32 128, label %76
    i32 132, label %76
    i32 131, label %76
    i32 130, label %76
    i32 129, label %76
  ]

59:                                               ; preds = %47, %47
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 16
  %62 = call i32 @BIT(i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = load i32, i32* %16, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.regmap.1*, %struct.regmap.1** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @regmap_write(%struct.regmap.1* %72, i32 %73, i32 %74)
  store i32 %75, i32* %12, align 4
  br label %152

76:                                               ; preds = %47, %47, %47, %47, %47, %47
  %77 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %78 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sdiv i32 %80, 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %111, %76
  %88 = load i32, i32* %13, align 4
  %89 = load i32**, i32*** @rockchip_pull_list, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @ARRAY_SIZE(i32* %93)
  %95 = icmp slt i32 %88, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %87
  %97 = load i32**, i32*** @rockchip_pull_list, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %12, align 4
  br label %114

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %87

114:                                              ; preds = %108, %87
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %119 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %4, align 4
  br label %154

124:                                              ; preds = %114
  %125 = load i32, i32* @RK3188_PULL_BITS_PER_PIN, align 4
  %126 = shl i32 1, %125
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 16
  %130 = shl i32 %127, %129
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = ashr i32 %132, 16
  %134 = or i32 %131, %133
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %15, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %16, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %16, align 4
  %140 = load %struct.regmap.1*, %struct.regmap.1** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @regmap_update_bits(%struct.regmap.1* %140, i32 %141, i32 %142, i32 %143)
  store i32 %144, i32* %12, align 4
  br label %152

145:                                              ; preds = %47
  %146 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %147 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, ...) @dev_err(i32 %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %154

152:                                              ; preds = %124, %71
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %145, %117, %45
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap.1*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap.1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
