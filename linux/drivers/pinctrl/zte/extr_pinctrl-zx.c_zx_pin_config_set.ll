; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_pin_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_pin_config_set.c"
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
@ZX_SLEW = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @zx_pin_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_pin_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.zx_pinctrl*, align 8
  %11 = alloca %struct.zx_pinctrl_soc_info*, align 8
  %12 = alloca %struct.pinctrl_pin_desc*, align 8
  %13 = alloca %struct.zx_pin_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %19 = call %struct.zx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %18)
  store %struct.zx_pinctrl* %19, %struct.zx_pinctrl** %10, align 8
  %20 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %10, align 8
  %21 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %20, i32 0, i32 1
  %22 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %21, align 8
  store %struct.zx_pinctrl_soc_info* %22, %struct.zx_pinctrl_soc_info** %11, align 8
  %23 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %11, align 8
  %24 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %23, i32 0, i32 0
  %25 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %25, i64 %27
  store %struct.pinctrl_pin_desc* %28, %struct.pinctrl_pin_desc** %12, align 8
  %29 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %12, align 8
  %30 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %29, i32 0, i32 0
  %31 = load %struct.zx_pin_data*, %struct.zx_pin_data** %30, align 8
  store %struct.zx_pin_data* %31, %struct.zx_pin_data** %13, align 8
  %32 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %33 = icmp ne %struct.zx_pin_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %143

37:                                               ; preds = %4
  %38 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %10, align 8
  %39 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %42 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %130, %37
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %133

50:                                               ; preds = %46
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pinconf_to_config_param(i64 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pinconf_to_config_argument(i64 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  switch i32 %63, label %126 [
    i32 132, label %64
    i32 131, label %72
    i32 129, label %80
    i32 130, label %88
    i32 128, label %105
  ]

64:                                               ; preds = %50
  %65 = load i32, i32* @ZX_PULL_DOWN, align 4
  %66 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %67 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %65, %68
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %15, align 4
  br label %129

72:                                               ; preds = %50
  %73 = load i32, i32* @ZX_PULL_UP, align 4
  %74 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %75 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %73, %76
  %78 = load i32, i32* %15, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %15, align 4
  br label %129

80:                                               ; preds = %50
  %81 = load i32, i32* @ZX_INPUT_ENABLE, align 4
  %82 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %83 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %81, %84
  %86 = load i32, i32* %15, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %15, align 4
  br label %129

88:                                               ; preds = %50
  %89 = load i32, i32* @ZX_DS_MASK, align 4
  %90 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %91 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %89, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %15, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @ZX_DS_VALUE(i32 %97)
  %99 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %100 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %98, %101
  %103 = load i32, i32* %15, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %15, align 4
  br label %129

105:                                              ; preds = %50
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32, i32* @ZX_SLEW, align 4
  %110 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %111 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 %109, %112
  %114 = load i32, i32* %15, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %15, align 4
  br label %125

116:                                              ; preds = %105
  %117 = load i32, i32* @ZX_SLEW, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %120 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %118, %121
  %123 = load i32, i32* %15, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %116, %108
  br label %129

126:                                              ; preds = %50
  %127 = load i32, i32* @ENOTSUPP, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %143

129:                                              ; preds = %125, %88, %80, %72, %64
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %46

133:                                              ; preds = %46
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %10, align 8
  %136 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.zx_pin_data*, %struct.zx_pin_data** %13, align 8
  %139 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = call i32 @writel(i32 %134, i64 %141)
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %133, %126, %34
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.zx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @ZX_DS_VALUE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
