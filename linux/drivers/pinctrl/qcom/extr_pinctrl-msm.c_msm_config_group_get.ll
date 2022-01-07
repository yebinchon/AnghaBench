; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_config_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_config_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.msm_pingroup = type { i32 }
%struct.msm_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.msm_pingroup* }

@MSM_NO_PULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSM_PULL_DOWN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MSM_KEEPER = common dso_local global i32 0, align 4
@MSM_PULL_UP_NO_KEEPER = common dso_local global i32 0, align 4
@MSM_PULL_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @msm_config_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_config_group_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.msm_pingroup*, align 8
  %9 = alloca %struct.msm_pinctrl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.msm_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.msm_pinctrl* %17, %struct.msm_pinctrl** %9, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %9, align 8
  %22 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.msm_pingroup*, %struct.msm_pingroup** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %25, i64 %27
  store %struct.msm_pingroup* %28, %struct.msm_pingroup** %8, align 8
  %29 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %9, align 8
  %30 = load %struct.msm_pingroup*, %struct.msm_pingroup** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @msm_config_reg(%struct.msm_pinctrl* %29, %struct.msm_pingroup* %30, i32 %31, i32* %11, i32* %13)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  br label %143

37:                                               ; preds = %3
  %38 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %9, align 8
  %39 = load %struct.msm_pingroup*, %struct.msm_pingroup** %8, align 8
  %40 = call i32 @msm_readl_ctl(%struct.msm_pinctrl* %38, %struct.msm_pingroup* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %13, align 4
  %43 = lshr i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %135 [
    i32 133, label %47
    i32 132, label %55
    i32 134, label %63
    i32 131, label %81
    i32 130, label %105
    i32 128, label %108
    i32 129, label %128
  ]

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @MSM_NO_PULL, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %143

54:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  br label %138

55:                                               ; preds = %37
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @MSM_PULL_DOWN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %143

62:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %138

63:                                               ; preds = %37
  %64 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %9, align 8
  %65 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @ENOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %143

73:                                               ; preds = %63
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @MSM_KEEPER, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %143

80:                                               ; preds = %73
  store i32 1, i32* %12, align 4
  br label %138

81:                                               ; preds = %37
  %82 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %9, align 8
  %83 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @MSM_PULL_UP_NO_KEEPER, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %12, align 4
  br label %98

93:                                               ; preds = %81
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @MSM_PULL_UP, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %143

104:                                              ; preds = %98
  br label %138

105:                                              ; preds = %37
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @msm_regval_to_drive(i32 %106)
  store i32 %107, i32* %12, align 4
  br label %138

108:                                              ; preds = %37
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %143

114:                                              ; preds = %108
  %115 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %9, align 8
  %116 = load %struct.msm_pingroup*, %struct.msm_pingroup** %8, align 8
  %117 = call i32 @msm_readl_io(%struct.msm_pinctrl* %115, %struct.msm_pingroup* %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.msm_pingroup*, %struct.msm_pingroup** %8, align 8
  %120 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @BIT(i32 %121)
  %123 = and i32 %118, %122
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %12, align 4
  br label %138

128:                                              ; preds = %37
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %143

134:                                              ; preds = %128
  store i32 1, i32* %12, align 4
  br label %138

135:                                              ; preds = %37
  %136 = load i32, i32* @ENOTSUPP, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %143

138:                                              ; preds = %134, %114, %105, %104, %80, %62, %54
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i64 @pinconf_to_config_packed(i32 %139, i32 %140)
  %142 = load i64*, i64** %7, align 8
  store i64 %141, i64* %142, align 8
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %138, %135, %131, %111, %101, %77, %70, %59, %51, %35
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.msm_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @msm_config_reg(%struct.msm_pinctrl*, %struct.msm_pingroup*, i32, i32*, i32*) #1

declare dso_local i32 @msm_readl_ctl(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @msm_regval_to_drive(i32) #1

declare dso_local i32 @msm_readl_io(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
