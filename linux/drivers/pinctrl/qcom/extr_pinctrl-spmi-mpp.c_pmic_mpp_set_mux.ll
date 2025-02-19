; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmic_mpp_pad* }
%struct.pmic_mpp_pad = type { i32, i32 }
%struct.pmic_mpp_state = type { i32 }

@PMIC_MPP_REG_MASTER_EN_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_EN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @pmic_mpp_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_mpp_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmic_mpp_state*, align 8
  %9 = alloca %struct.pmic_mpp_pad*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.pmic_mpp_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.pmic_mpp_state* %13, %struct.pmic_mpp_state** %8, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %22, align 8
  store %struct.pmic_mpp_pad* %23, %struct.pmic_mpp_pad** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %26 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %8, align 8
  %28 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %29 = call i32 @pmic_mpp_write_mode_ctl(%struct.pmic_mpp_state* %27, %struct.pmic_mpp_pad* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %3
  %35 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %36 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PMIC_MPP_REG_MASTER_EN_SHIFT, align 4
  %39 = shl i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %8, align 8
  %41 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %9, align 8
  %42 = load i32, i32* @PMIC_MPP_REG_EN_CTL, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @pmic_mpp_write(%struct.pmic_mpp_state* %40, %struct.pmic_mpp_pad* %41, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %34, %32
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.pmic_mpp_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pmic_mpp_write_mode_ctl(%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*) #1

declare dso_local i32 @pmic_mpp_write(%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
