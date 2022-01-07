; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.zx_pinctrl = type { i64, %struct.zx_pinctrl_soc_info* }
%struct.zx_pinctrl_soc_info = type { %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { %struct.zx_pin_data* }
%struct.zx_pin_data = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ZX_PULL_DOWN = common dso_local global i32 0, align 4
@ZX_PULL_UP = common dso_local global i32 0, align 4
@ZX_INPUT_ENABLE = common dso_local global i32 0, align 4
@ZX_DS_MASK = common dso_local global i32 0, align 4
@ZX_DS_SHIFT = common dso_local global i32 0, align 4
@ZX_SLEW = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @zx_pin_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.zx_pinctrl*, align 8
  %9 = alloca %struct.zx_pinctrl_soc_info*, align 8
  %10 = alloca %struct.pinctrl_pin_desc*, align 8
  %11 = alloca %struct.zx_pin_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.zx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.zx_pinctrl* %15, %struct.zx_pinctrl** %8, align 8
  %16 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %16, i32 0, i32 1
  %18 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %17, align 8
  store %struct.zx_pinctrl_soc_info* %18, %struct.zx_pinctrl_soc_info** %9, align 8
  %19 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %9, align 8
  %20 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %19, i32 0, i32 0
  %21 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %21, i64 %23
  store %struct.pinctrl_pin_desc* %24, %struct.pinctrl_pin_desc** %10, align 8
  %25 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %26 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %25, i32 0, i32 0
  %27 = load %struct.zx_pin_data*, %struct.zx_pin_data** %26, align 8
  store %struct.zx_pin_data* %27, %struct.zx_pin_data** %11, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pinconf_to_config_param(i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %32 = icmp ne %struct.zx_pin_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %120

36:                                               ; preds = %3
  %37 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %38 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %41 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %47 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %45, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %112 [
    i32 132, label %51
    i32 131, label %66
    i32 129, label %81
    i32 130, label %96
    i32 128, label %103
  ]

51:                                               ; preds = %36
  %52 = load i32, i32* @ZX_PULL_DOWN, align 4
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %120

65:                                               ; preds = %51
  br label %115

66:                                               ; preds = %36
  %67 = load i32, i32* @ZX_PULL_UP, align 4
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %120

80:                                               ; preds = %66
  br label %115

81:                                               ; preds = %36
  %82 = load i32, i32* @ZX_INPUT_ENABLE, align 4
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %120

95:                                               ; preds = %81
  br label %115

96:                                               ; preds = %36
  %97 = load i32, i32* @ZX_DS_MASK, align 4
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @ZX_DS_SHIFT, align 4
  %102 = ashr i32 %100, %101
  store i32 %102, i32* %13, align 4
  br label %115

103:                                              ; preds = %36
  %104 = load i32, i32* @ZX_SLEW, align 4
  %105 = load i32, i32* %13, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %13, align 4
  br label %115

112:                                              ; preds = %36
  %113 = load i32, i32* @ENOTSUPP, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %120

115:                                              ; preds = %103, %96, %95, %80, %65
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i64 @pinconf_to_config_packed(i32 %116, i32 %117)
  %119 = load i64*, i64** %7, align 8
  store i64 %118, i64* %119, align 8
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %112, %92, %77, %62, %33
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.zx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
