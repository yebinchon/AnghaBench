; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_conf_pin_config_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_conf_pin_config_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.atmel_pioctrl = type { %struct.atmel_group* }
%struct.atmel_group = type { i32 }

@ATMEL_PIO_PUEN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATMEL_PIO_PDEN_MASK = common dso_local global i32 0, align 4
@ATMEL_PIO_OPD_MASK = common dso_local global i32 0, align 4
@ATMEL_PIO_SCHMITT_MASK = common dso_local global i32 0, align 4
@ATMEL_PIO_DRVSTR_MASK = common dso_local global i32 0, align 4
@ATMEL_PIO_DRVSTR_OFFSET = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @atmel_conf_pin_config_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_conf_pin_config_group_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.atmel_pioctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.atmel_group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.atmel_pioctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.atmel_pioctrl* %15, %struct.atmel_pioctrl** %8, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @pinconf_to_config_param(i64 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %8, align 8
  %20 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %19, i32 0, i32 0
  %21 = load %struct.atmel_group*, %struct.atmel_group** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.atmel_group, %struct.atmel_group* %21, i64 %23
  store %struct.atmel_group* %24, %struct.atmel_group** %11, align 8
  %25 = load %struct.atmel_group*, %struct.atmel_group** %11, align 8
  %26 = getelementptr inbounds %struct.atmel_group, %struct.atmel_group* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @atmel_pin_config_read(%struct.pinctrl_dev* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %101 [
    i32 130, label %32
    i32 131, label %41
    i32 132, label %55
    i32 129, label %69
    i32 128, label %78
    i32 133, label %87
  ]

32:                                               ; preds = %3
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @ATMEL_PIO_PUEN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %109

40:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %104

41:                                               ; preds = %3
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @ATMEL_PIO_PUEN_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @ATMEL_PIO_PDEN_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %109

54:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %104

55:                                               ; preds = %3
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @ATMEL_PIO_PUEN_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @ATMEL_PIO_PDEN_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %109

68:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  br label %104

69:                                               ; preds = %3
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @ATMEL_PIO_OPD_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %109

77:                                               ; preds = %69
  store i32 1, i32* %10, align 4
  br label %104

78:                                               ; preds = %3
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @ATMEL_PIO_SCHMITT_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %109

86:                                               ; preds = %78
  store i32 1, i32* %10, align 4
  br label %104

87:                                               ; preds = %3
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @ATMEL_PIO_DRVSTR_MASK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %109

95:                                               ; preds = %87
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @ATMEL_PIO_DRVSTR_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @ATMEL_PIO_DRVSTR_OFFSET, align 4
  %100 = lshr i32 %98, %99
  store i32 %100, i32* %10, align 4
  br label %104

101:                                              ; preds = %3
  %102 = load i32, i32* @ENOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %109

104:                                              ; preds = %95, %86, %77, %68, %54, %40
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @pinconf_to_config_packed(i32 %105, i32 %106)
  %108 = load i64*, i64** %7, align 8
  store i64 %107, i64* %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %101, %92, %83, %74, %65, %51, %37
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.atmel_pioctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @atmel_pin_config_read(%struct.pinctrl_dev*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
