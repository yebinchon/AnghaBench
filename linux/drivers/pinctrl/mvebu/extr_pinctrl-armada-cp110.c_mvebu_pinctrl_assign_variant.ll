; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-cp110.c_mvebu_pinctrl_assign_variant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-cp110.c_mvebu_pinctrl_assign_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_mode = type { %struct.mvebu_mpp_ctrl_setting* }
%struct.mvebu_mpp_ctrl_setting = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_mpp_mode*, i32)* @mvebu_pinctrl_assign_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pinctrl_assign_variant(%struct.mvebu_mpp_mode* %0, i32 %1) #0 {
  %3 = alloca %struct.mvebu_mpp_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvebu_mpp_ctrl_setting*, align 8
  store %struct.mvebu_mpp_mode* %0, %struct.mvebu_mpp_mode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mvebu_mpp_mode*, %struct.mvebu_mpp_mode** %3, align 8
  %7 = getelementptr inbounds %struct.mvebu_mpp_mode, %struct.mvebu_mpp_mode* %6, i32 0, i32 0
  %8 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %7, align 8
  store %struct.mvebu_mpp_ctrl_setting* %8, %struct.mvebu_mpp_ctrl_setting** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %5, align 8
  %11 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %5, align 8
  %17 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14
  %19 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %5, align 8
  %20 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %19, i32 1
  store %struct.mvebu_mpp_ctrl_setting* %20, %struct.mvebu_mpp_ctrl_setting** %5, align 8
  br label %9

21:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
