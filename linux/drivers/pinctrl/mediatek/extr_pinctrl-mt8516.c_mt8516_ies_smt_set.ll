; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mt8516.c_mt8516_ies_smt_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mt8516.c_mt8516_ies_smt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@PIN_CONFIG_INPUT_ENABLE = common dso_local global i32 0, align 4
@mt8516_ies_set = common dso_local global i32 0, align 4
@PIN_CONFIG_INPUT_SCHMITT_ENABLE = common dso_local global i32 0, align 4
@mt8516_smt_set = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i8, i32, i32)* @mt8516_ies_smt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8516_ies_smt_set(%struct.regmap* %0, i32 %1, i8 zeroext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PIN_CONFIG_INPUT_ENABLE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = load %struct.regmap*, %struct.regmap** %7, align 8
  %17 = load i32, i32* @mt8516_ies_set, align 4
  %18 = load i32, i32* @mt8516_ies_set, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i8, i8* %9, align 1
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @mtk_pconf_spec_set_ies_smt_range(%struct.regmap* %16, i32 %17, i32 %19, i32 %20, i8 zeroext %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %41

24:                                               ; preds = %5
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @PIN_CONFIG_INPUT_SCHMITT_ENABLE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = load i32, i32* @mt8516_smt_set, align 4
  %31 = load i32, i32* @mt8516_smt_set, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i8, i8* %9, align 1
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mtk_pconf_spec_set_ies_smt_range(%struct.regmap* %29, i32 %30, i32 %32, i32 %33, i8 zeroext %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %28, %15
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @mtk_pconf_spec_set_ies_smt_range(%struct.regmap*, i32, i32, i32, i8 zeroext, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
