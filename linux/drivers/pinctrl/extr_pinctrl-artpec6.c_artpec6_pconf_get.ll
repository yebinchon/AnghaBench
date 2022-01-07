; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-artpec6.c_artpec6_pconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-artpec6.c_artpec6_pconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.artpec6_pmx = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"pinconf is not supported for pin %s\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"getting configuration for pin %s\0A\00", align 1
@ARTPEC6_PINMUX_UDC1_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ARTPEC6_PINMUX_UDC0_MASK = common dso_local global i32 0, align 4
@ARTPEC6_PINMUX_DRV_MASK = common dso_local global i32 0, align 4
@ARTPEC6_PINMUX_DRV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @artpec6_pconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_pconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.artpec6_pmx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.artpec6_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.artpec6_pmx* %12, %struct.artpec6_pmx** %8, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pinconf_to_config_param(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %8, align 8
  %18 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %8, align 8
  %23 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %8, align 8
  %26 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %109

36:                                               ; preds = %3
  %37 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %8, align 8
  %38 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %8, align 8
  %41 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %8, align 8
  %50 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @artpec6_pmx_reg_offset(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %105 [
    i32 131, label %57
    i32 129, label %66
    i32 130, label %66
    i32 128, label %93
  ]

57:                                               ; preds = %36
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @ARTPEC6_PINMUX_UDC1_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %109

65:                                               ; preds = %57
  br label %108

66:                                               ; preds = %36, %36
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ARTPEC6_PINMUX_UDC1_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %109

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @ARTPEC6_PINMUX_UDC0_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 129
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 130
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %80
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %109

92:                                               ; preds = %86, %83
  br label %108

93:                                               ; preds = %36
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @ARTPEC6_PINMUX_DRV_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @ARTPEC6_PINMUX_DRV_SHIFT, align 4
  %98 = lshr i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @artpec6_pconf_drive_field_to_mA(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @pinconf_to_config_packed(i32 %101, i32 %102)
  %104 = load i64*, i64** %7, align 8
  store i64 %103, i64* %104, align 8
  br label %108

105:                                              ; preds = %36
  %106 = load i32, i32* @ENOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %93, %92, %65
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105, %89, %71, %62, %21
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.artpec6_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @artpec6_pmx_reg_offset(i32) #1

declare dso_local i32 @artpec6_pconf_drive_field_to_mA(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
