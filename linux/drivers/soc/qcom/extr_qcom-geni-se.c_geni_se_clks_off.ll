; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_clks_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_clks_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i32, %struct.geni_wrapper* }
%struct.geni_wrapper = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geni_se*)* @geni_se_clks_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_se_clks_off(%struct.geni_se* %0) #0 {
  %2 = alloca %struct.geni_se*, align 8
  %3 = alloca %struct.geni_wrapper*, align 8
  store %struct.geni_se* %0, %struct.geni_se** %2, align 8
  %4 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %5 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %4, i32 0, i32 1
  %6 = load %struct.geni_wrapper*, %struct.geni_wrapper** %5, align 8
  store %struct.geni_wrapper* %6, %struct.geni_wrapper** %3, align 8
  %7 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %8 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_disable_unprepare(i32 %9)
  %11 = load %struct.geni_wrapper*, %struct.geni_wrapper** %3, align 8
  %12 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load %struct.geni_wrapper*, %struct.geni_wrapper** %3, align 8
  %16 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_bulk_disable_unprepare(i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
