; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmic_mpp_pad* }
%struct.pmic_mpp_pad = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PMIC_MPP_PULL_UP_OPEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @pmic_mpp_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_mpp_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmic_mpp_pad*, align 8
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @pinconf_to_config_param(i64 %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %22, align 8
  store %struct.pmic_mpp_pad* %23, %struct.pmic_mpp_pad** %9, align 8
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %97 [
    i32 141, label %25
    i32 139, label %35
    i32 140, label %46
    i32 135, label %55
    i32 137, label %59
    i32 136, label %68
    i32 132, label %72
    i32 134, label %76
    i32 131, label %80
    i32 138, label %89
    i32 133, label %93
  ]

25:                                               ; preds = %3
  %26 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %27 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PMIC_MPP_PULL_UP_OPEN, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %105

34:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %100

35:                                               ; preds = %3
  %36 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %37 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %42 [
    i32 130, label %39
    i32 129, label %40
    i32 128, label %41
  ]

39:                                               ; preds = %35
  store i32 600, i32* %10, align 4
  br label %45

40:                                               ; preds = %35
  store i32 10000, i32* %10, align 4
  br label %45

41:                                               ; preds = %35
  store i32 30000, i32* %10, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %105

45:                                               ; preds = %41, %40, %39
  br label %100

46:                                               ; preds = %3
  %47 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %48 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %105

54:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %100

55:                                               ; preds = %3
  %56 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %57 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %100

59:                                               ; preds = %3
  %60 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %61 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %105

67:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %100

68:                                               ; preds = %3
  %69 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %70 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  br label %100

72:                                               ; preds = %3
  %73 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %74 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  br label %100

76:                                               ; preds = %3
  %77 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %78 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  br label %100

80:                                               ; preds = %3
  %81 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %82 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %105

88:                                               ; preds = %80
  store i32 1, i32* %10, align 4
  br label %100

89:                                               ; preds = %3
  %90 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %91 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  br label %100

93:                                               ; preds = %3
  %94 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %95 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %10, align 4
  br label %100

97:                                               ; preds = %3
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %105

100:                                              ; preds = %93, %89, %88, %76, %72, %68, %67, %55, %54, %45, %34
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @pinconf_to_config_packed(i32 %101, i32 %102)
  %104 = load i64*, i64** %7, align 8
  store i64 %103, i64* %104, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %97, %85, %64, %51, %42, %31
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
