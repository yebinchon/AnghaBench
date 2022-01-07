; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_resources_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_resources_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geni_se_resources_on(%struct.geni_se* %0) #0 {
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
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %13 = call i32 @geni_se_clks_on(%struct.geni_se* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %11
  %19 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %20 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pinctrl_pm_select_default_state(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %27 = call i32 @geni_se_clks_off(%struct.geni_se* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %16, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @has_acpi_companion(i32) #1

declare dso_local i32 @geni_se_clks_on(%struct.geni_se*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(i32) #1

declare dso_local i32 @geni_se_clks_off(%struct.geni_se*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
