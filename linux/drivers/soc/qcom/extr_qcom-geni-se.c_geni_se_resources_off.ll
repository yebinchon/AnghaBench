; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_resources_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_resources_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geni_se_resources_off(%struct.geni_se* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.geni_se*, align 8
  %4 = alloca i32, align 4
  store %struct.geni_se* %0, %struct.geni_se** %3, align 8
  %5 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %6 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @has_acpi_companion(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %13 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pinctrl_pm_select_sleep_state(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %22 = call i32 @geni_se_clks_off(%struct.geni_se* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %18, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @has_acpi_companion(i32) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32) #1

declare dso_local i32 @geni_se_clks_off(%struct.geni_se*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
