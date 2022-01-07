; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.chv_pinctrl = type { i32 }

@chv_lock = common dso_local global i32 0, align 4
@CHV_PADCTRL0 = common dso_local global i32 0, align 4
@CHV_PADCTRL1 = common dso_local global i32 0, align 4
@CHV_PADCTRL0_TERM_MASK = common dso_local global i32 0, align 4
@CHV_PADCTRL0_TERM_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHV_PADCTRL0_TERM_UP = common dso_local global i32 0, align 4
@CHV_PADCTRL1_ODEN = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_MASK = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_SHIFT = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_HIZ = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @chv_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.chv_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.chv_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.chv_pinctrl* %17, %struct.chv_pinctrl** %8, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @raw_spin_lock_irqsave(i32* @chv_lock, i64 %21)
  %23 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CHV_PADCTRL0, align 4
  %26 = call i32 @chv_padreg(%struct.chv_pinctrl* %23, i32 %24, i32 %25)
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CHV_PADCTRL1, align 4
  %31 = call i32 @chv_padreg(%struct.chv_pinctrl* %28, i32 %29, i32 %30)
  %32 = call i32 @readl(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @raw_spin_unlock_irqrestore(i32* @chv_lock, i64 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @CHV_PADCTRL0_TERM_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CHV_PADCTRL0_TERM_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %101 [
    i32 132, label %41
    i32 129, label %48
    i32 130, label %62
    i32 128, label %78
    i32 131, label %87
  ]

41:                                               ; preds = %3
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %109

47:                                               ; preds = %41
  br label %104

48:                                               ; preds = %3
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @CHV_PADCTRL0_TERM_UP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %109

56:                                               ; preds = %48
  %57 = load i32, i32* %14, align 4
  switch i32 %57, label %61 [
    i32 134, label %58
    i32 133, label %59
    i32 135, label %60
  ]

58:                                               ; preds = %56
  store i32 20000, i32* %13, align 4
  br label %61

59:                                               ; preds = %56
  store i32 5000, i32* %13, align 4
  br label %61

60:                                               ; preds = %56
  store i32 1000, i32* %13, align 4
  br label %61

61:                                               ; preds = %56, %60, %59, %58
  br label %104

62:                                               ; preds = %3
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @CHV_PADCTRL0_TERM_UP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %62
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %109

73:                                               ; preds = %65
  %74 = load i32, i32* %14, align 4
  switch i32 %74, label %77 [
    i32 134, label %75
    i32 133, label %76
  ]

75:                                               ; preds = %73
  store i32 20000, i32* %13, align 4
  br label %77

76:                                               ; preds = %73
  store i32 5000, i32* %13, align 4
  br label %77

77:                                               ; preds = %73, %76, %75
  br label %104

78:                                               ; preds = %3
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @CHV_PADCTRL1_ODEN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %109

86:                                               ; preds = %78
  br label %104

87:                                               ; preds = %3
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_MASK, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_SHIFT, align 4
  %92 = load i32, i32* %15, align 4
  %93 = ashr i32 %92, %91
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_HIZ, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %109

100:                                              ; preds = %87
  br label %104

101:                                              ; preds = %3
  %102 = load i32, i32* @ENOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %109

104:                                              ; preds = %100, %86, %77, %61, %47
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i64 @pinconf_to_config_packed(i32 %105, i32 %106)
  %108 = load i64*, i64** %7, align 8
  store i64 %107, i64* %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %101, %97, %83, %70, %53, %44
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.chv_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @chv_padreg(%struct.chv_pinctrl*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
