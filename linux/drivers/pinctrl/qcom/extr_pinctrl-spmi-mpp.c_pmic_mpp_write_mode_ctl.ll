; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_write_mode_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_write_mode_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_mpp_state = type { i32 }
%struct.pmic_mpp_pad = type { i32, i32, i32, i64, i32, i32 }

@PMIC_MPP_MODE_ANALOG_BIDIR = common dso_local global i32 0, align 4
@PMIC_MPP_MODE_ANALOG_INPUT = common dso_local global i32 0, align 4
@PMIC_MPP_MODE_ANALOG_OUTPUT = common dso_local global i32 0, align 4
@PMIC_MPP_MODE_DIGITAL_BIDIR = common dso_local global i32 0, align 4
@PMIC_MPP_MODE_DIGITAL_INPUT = common dso_local global i32 0, align 4
@PMIC_MPP_MODE_DIGITAL_OUTPUT = common dso_local global i32 0, align 4
@PMIC_MPP_MODE_CURRENT_SINK = common dso_local global i32 0, align 4
@PMIC_MPP_SELECTOR_DTEST_FIRST = common dso_local global i32 0, align 4
@PMIC_MPP_SELECTOR_PAIRED = common dso_local global i32 0, align 4
@PMIC_MPP_SELECTOR_NORMAL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_MODE_DIR_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_MODE_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_MODE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*)* @pmic_mpp_write_mode_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_mpp_write_mode_ctl(%struct.pmic_mpp_state* %0, %struct.pmic_mpp_pad* %1) #0 {
  %3 = alloca %struct.pmic_mpp_state*, align 8
  %4 = alloca %struct.pmic_mpp_pad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pmic_mpp_state* %0, %struct.pmic_mpp_state** %3, align 8
  store %struct.pmic_mpp_pad* %1, %struct.pmic_mpp_pad** %4, align 8
  %9 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %10 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %59 [
    i32 130, label %12
    i32 129, label %35
    i32 128, label %58
  ]

12:                                               ; preds = %2
  %13 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %14 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %19 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @PMIC_MPP_MODE_ANALOG_BIDIR, align 4
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %17, %12
  %25 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %26 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @PMIC_MPP_MODE_ANALOG_INPUT, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @PMIC_MPP_MODE_ANALOG_OUTPUT, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %22
  br label %61

35:                                               ; preds = %2
  %36 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %37 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %42 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @PMIC_MPP_MODE_DIGITAL_BIDIR, align 4
  store i32 %46, i32* %5, align 4
  br label %57

47:                                               ; preds = %40, %35
  %48 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %49 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @PMIC_MPP_MODE_DIGITAL_INPUT, align 4
  store i32 %53, i32* %5, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @PMIC_MPP_MODE_DIGITAL_OUTPUT, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %45
  br label %61

58:                                               ; preds = %2
  br label %59

59:                                               ; preds = %2, %58
  %60 = load i32, i32* @PMIC_MPP_MODE_CURRENT_SINK, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %57, %34
  %62 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %63 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* @PMIC_MPP_SELECTOR_DTEST_FIRST, align 4
  %68 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %69 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %75 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @PMIC_MPP_SELECTOR_PAIRED, align 4
  store i32 %79, i32* %6, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @PMIC_MPP_SELECTOR_NORMAL, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %78
  br label %83

83:                                               ; preds = %82, %66
  %84 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %85 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @PMIC_MPP_REG_MODE_DIR_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PMIC_MPP_REG_MODE_FUNCTION_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %3, align 8
  %101 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %4, align 8
  %102 = load i32, i32* @PMIC_MPP_REG_MODE_CTL, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @pmic_mpp_write(%struct.pmic_mpp_state* %100, %struct.pmic_mpp_pad* %101, i32 %102, i32 %103)
  ret i32 %104
}

declare dso_local i32 @pmic_mpp_write(%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
