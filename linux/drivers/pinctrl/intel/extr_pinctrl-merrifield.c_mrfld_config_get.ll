; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-merrifield.c_mrfld_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-merrifield.c_mrfld_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mrfld_pinctrl = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@BUFCFG_PUPD_VAL_MASK = common dso_local global i32 0, align 4
@BUFCFG_PUPD_VAL_SHIFT = common dso_local global i32 0, align 4
@BUFCFG_Px_EN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BUFCFG_PU_EN = common dso_local global i32 0, align 4
@BUFCFG_PD_EN = common dso_local global i32 0, align 4
@BUFCFG_OD_EN = common dso_local global i32 0, align 4
@BUFCFG_SLEWSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @mrfld_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mrfld_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.mrfld_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.mrfld_pinctrl* %15, %struct.mrfld_pinctrl** %8, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @pinconf_to_config_param(i64 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.mrfld_pinctrl*, %struct.mrfld_pinctrl** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mrfld_read_bufcfg(%struct.mrfld_pinctrl* %19, i32 %20, i32* %10)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %100

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @BUFCFG_PUPD_VAL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @BUFCFG_PUPD_VAL_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %92 [
    i32 132, label %34
    i32 130, label %43
    i32 131, label %59
    i32 129, label %75
    i32 128, label %84
  ]

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @BUFCFG_Px_EN_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %100

42:                                               ; preds = %34
  br label %95

43:                                               ; preds = %27
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @BUFCFG_Px_EN_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @BUFCFG_PU_EN, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %100

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %58 [
    i32 133, label %54
    i32 135, label %55
    i32 136, label %56
    i32 134, label %57
  ]

54:                                               ; preds = %52
  store i32 910, i32* %12, align 4
  br label %58

55:                                               ; preds = %52
  store i32 2000, i32* %12, align 4
  br label %58

56:                                               ; preds = %52
  store i32 20000, i32* %12, align 4
  br label %58

57:                                               ; preds = %52
  store i32 50000, i32* %12, align 4
  br label %58

58:                                               ; preds = %52, %57, %56, %55, %54
  br label %95

59:                                               ; preds = %27
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @BUFCFG_Px_EN_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @BUFCFG_PD_EN, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %100

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  switch i32 %69, label %74 [
    i32 133, label %70
    i32 135, label %71
    i32 136, label %72
    i32 134, label %73
  ]

70:                                               ; preds = %68
  store i32 910, i32* %12, align 4
  br label %74

71:                                               ; preds = %68
  store i32 2000, i32* %12, align 4
  br label %74

72:                                               ; preds = %68
  store i32 20000, i32* %12, align 4
  br label %74

73:                                               ; preds = %68
  store i32 50000, i32* %12, align 4
  br label %74

74:                                               ; preds = %68, %73, %72, %71, %70
  br label %95

75:                                               ; preds = %27
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @BUFCFG_OD_EN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %100

83:                                               ; preds = %75
  br label %95

84:                                               ; preds = %27
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @BUFCFG_SLEWSEL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  br label %91

90:                                               ; preds = %84
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %89
  br label %95

92:                                               ; preds = %27
  %93 = load i32, i32* @ENOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %100

95:                                               ; preds = %91, %83, %74, %58, %42
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i64 @pinconf_to_config_packed(i32 %96, i32 %97)
  %99 = load i64*, i64** %7, align 8
  store i64 %98, i64* %99, align 8
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %92, %80, %65, %49, %39, %24
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.mrfld_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @mrfld_read_bufcfg(%struct.mrfld_pinctrl*, i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
