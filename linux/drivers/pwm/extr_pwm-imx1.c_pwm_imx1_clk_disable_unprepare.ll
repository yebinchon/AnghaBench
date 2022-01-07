; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx1.c_pwm_imx1_clk_disable_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx1.c_pwm_imx1_clk_disable_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_imx1_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*)* @pwm_imx1_clk_disable_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_imx1_clk_disable_unprepare(%struct.pwm_chip* %0) #0 {
  %2 = alloca %struct.pwm_chip*, align 8
  %3 = alloca %struct.pwm_imx1_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %2, align 8
  %4 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %5 = call %struct.pwm_imx1_chip* @to_pwm_imx1_chip(%struct.pwm_chip* %4)
  store %struct.pwm_imx1_chip* %5, %struct.pwm_imx1_chip** %3, align 8
  %6 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %3, align 8
  %7 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_disable_unprepare(i32 %8)
  %10 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %3, align 8
  %11 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  ret void
}

declare dso_local %struct.pwm_imx1_chip* @to_pwm_imx1_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
