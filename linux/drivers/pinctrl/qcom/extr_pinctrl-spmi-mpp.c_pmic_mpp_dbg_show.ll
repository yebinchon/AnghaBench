; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.pmic_mpp_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gpio_chip*)* @pmic_mpp_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmic_mpp_dbg_show(%struct.seq_file* %0, %struct.gpio_chip* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.pmic_mpp_state*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %4, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = call %struct.pmic_mpp_state* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.pmic_mpp_state* %8, %struct.pmic_mpp_state** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %5, align 8
  %17 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @pmic_mpp_config_dbg_show(i32 %18, %struct.seq_file* %19, i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %9

27:                                               ; preds = %9
  ret void
}

declare dso_local %struct.pmic_mpp_state* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pmic_mpp_config_dbg_show(i32, %struct.seq_file*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
