; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_dt_setup_retime_dedicated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_dt_setup_retime_dedicated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { %struct.st_pctl_data*, %struct.regmap*, %struct.device* }
%struct.st_pctl_data = type { i32 }
%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.st_pio_control = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.st_retime_dedicated }
%struct.st_retime_dedicated = type { i32* }
%struct.reg_field = type { i32 }

@RT_D_CFGS_PER_BANK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_pinctrl*, i32, %struct.st_pio_control*)* @st_pctl_dt_setup_retime_dedicated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pctl_dt_setup_retime_dedicated(%struct.st_pinctrl* %0, i32 %1, %struct.st_pio_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_pio_control*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.st_pctl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.st_retime_dedicated*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.reg_field, align 4
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.st_pio_control* %2, %struct.st_pio_control** %7, align 8
  %16 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %17 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %16, i32 0, i32 2
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %20 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %19, i32 0, i32 1
  %21 = load %struct.regmap*, %struct.regmap** %20, align 8
  store %struct.regmap* %21, %struct.regmap** %9, align 8
  %22 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %23 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %22, i32 0, i32 0
  %24 = load %struct.st_pctl_data*, %struct.st_pctl_data** %23, align 8
  store %struct.st_pctl_data* %24, %struct.st_pctl_data** %10, align 8
  %25 = load %struct.st_pctl_data*, %struct.st_pctl_data** %10, align 8
  %26 = getelementptr inbounds %struct.st_pctl_data, %struct.st_pctl_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RT_D_CFGS_PER_BANK, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %27, %30
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.st_pio_control*, %struct.st_pio_control** %7, align 8
  %34 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.st_retime_dedicated* %35, %struct.st_retime_dedicated** %12, align 8
  %36 = load %struct.st_pio_control*, %struct.st_pio_control** %7, align 8
  %37 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %80, %3
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @RT_D_CFGS_PER_BANK, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @REG_FIELD(i32 %50, i32 0, i32 31)
  %52 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %15, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = load %struct.regmap*, %struct.regmap** %9, align 8
  %55 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %15, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @devm_regmap_field_alloc(%struct.device* %53, %struct.regmap* %54, i32 %56)
  %58 = load %struct.st_retime_dedicated*, %struct.st_retime_dedicated** %12, align 8
  %59 = getelementptr inbounds %struct.st_retime_dedicated, %struct.st_retime_dedicated* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load %struct.st_retime_dedicated*, %struct.st_retime_dedicated** %12, align 8
  %65 = getelementptr inbounds %struct.st_retime_dedicated, %struct.st_retime_dedicated* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %49
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %84

76:                                               ; preds = %49
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %43
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %39

83:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @REG_FIELD(i32, i32, i32) #1

declare dso_local i32 @devm_regmap_field_alloc(%struct.device*, %struct.regmap*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
