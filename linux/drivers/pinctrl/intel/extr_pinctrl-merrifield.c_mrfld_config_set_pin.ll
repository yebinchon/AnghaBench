; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-merrifield.c_mrfld_config_set_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-merrifield.c_mrfld_config_set_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrfld_pinctrl = type { i32 }

@BUFCFG_Px_EN_MASK = common dso_local global i32 0, align 4
@BUFCFG_PUPD_VAL_MASK = common dso_local global i32 0, align 4
@BUFCFG_PU_EN = common dso_local global i32 0, align 4
@BUFCFG_PUPD_VAL_50K = common dso_local global i32 0, align 4
@BUFCFG_PUPD_VAL_SHIFT = common dso_local global i32 0, align 4
@BUFCFG_PUPD_VAL_20K = common dso_local global i32 0, align 4
@BUFCFG_PUPD_VAL_2K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BUFCFG_PD_EN = common dso_local global i32 0, align 4
@BUFCFG_OD_EN = common dso_local global i32 0, align 4
@BUFCFG_SLEWSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrfld_pinctrl*, i32, i64)* @mrfld_config_set_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_config_set_pin(%struct.mrfld_pinctrl* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrfld_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mrfld_pinctrl* %0, %struct.mrfld_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @pinconf_to_config_param(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @pinconf_to_config_argument(i64 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %110 [
    i32 132, label %18
    i32 130, label %24
    i32 131, label %56
    i32 129, label %88
    i32 128, label %99
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @BUFCFG_Px_EN_MASK, align 4
  %20 = load i32, i32* @BUFCFG_PUPD_VAL_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  br label %110

24:                                               ; preds = %3
  %25 = load i32, i32* @BUFCFG_Px_EN_MASK, align 4
  %26 = load i32, i32* @BUFCFG_PUPD_VAL_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @BUFCFG_PU_EN, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %52 [
    i32 50000, label %34
    i32 20000, label %40
    i32 2000, label %46
  ]

34:                                               ; preds = %24
  %35 = load i32, i32* @BUFCFG_PUPD_VAL_50K, align 4
  %36 = load i32, i32* @BUFCFG_PUPD_VAL_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %55

40:                                               ; preds = %24
  %41 = load i32, i32* @BUFCFG_PUPD_VAL_20K, align 4
  %42 = load i32, i32* @BUFCFG_PUPD_VAL_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %55

46:                                               ; preds = %24
  %47 = load i32, i32* @BUFCFG_PUPD_VAL_2K, align 4
  %48 = load i32, i32* @BUFCFG_PUPD_VAL_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %55

52:                                               ; preds = %24
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %124

55:                                               ; preds = %46, %40, %34
  br label %110

56:                                               ; preds = %3
  %57 = load i32, i32* @BUFCFG_Px_EN_MASK, align 4
  %58 = load i32, i32* @BUFCFG_PUPD_VAL_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @BUFCFG_PD_EN, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %84 [
    i32 50000, label %66
    i32 20000, label %72
    i32 2000, label %78
  ]

66:                                               ; preds = %56
  %67 = load i32, i32* @BUFCFG_PUPD_VAL_50K, align 4
  %68 = load i32, i32* @BUFCFG_PUPD_VAL_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %87

72:                                               ; preds = %56
  %73 = load i32, i32* @BUFCFG_PUPD_VAL_20K, align 4
  %74 = load i32, i32* @BUFCFG_PUPD_VAL_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %87

78:                                               ; preds = %56
  %79 = load i32, i32* @BUFCFG_PUPD_VAL_2K, align 4
  %80 = load i32, i32* @BUFCFG_PUPD_VAL_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %87

84:                                               ; preds = %56
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %124

87:                                               ; preds = %78, %72, %66
  br label %110

88:                                               ; preds = %3
  %89 = load i32, i32* @BUFCFG_OD_EN, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @BUFCFG_OD_EN, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %88
  br label %110

99:                                               ; preds = %3
  %100 = load i32, i32* @BUFCFG_SLEWSEL, align 4
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @BUFCFG_SLEWSEL, align 4
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %105, %99
  br label %110

110:                                              ; preds = %3, %109, %98, %87, %55, %18
  %111 = load %struct.mrfld_pinctrl*, %struct.mrfld_pinctrl** %5, align 8
  %112 = getelementptr inbounds %struct.mrfld_pinctrl, %struct.mrfld_pinctrl* %111, i32 0, i32 0
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @raw_spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load %struct.mrfld_pinctrl*, %struct.mrfld_pinctrl** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @mrfld_update_bufcfg(%struct.mrfld_pinctrl* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.mrfld_pinctrl*, %struct.mrfld_pinctrl** %5, align 8
  %121 = getelementptr inbounds %struct.mrfld_pinctrl, %struct.mrfld_pinctrl* %120, i32 0, i32 0
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @raw_spin_unlock_irqrestore(i32* %121, i64 %122)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %110, %84, %52
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mrfld_update_bufcfg(%struct.mrfld_pinctrl*, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
