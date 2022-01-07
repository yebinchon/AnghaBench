; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_clks_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_clks_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i32, %struct.geni_wrapper* }
%struct.geni_wrapper = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.geni_se*)* @geni_se_clks_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geni_se_clks_on(%struct.geni_se* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.geni_se*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.geni_wrapper*, align 8
  store %struct.geni_se* %0, %struct.geni_se** %3, align 8
  %6 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %7 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %6, i32 0, i32 1
  %8 = load %struct.geni_wrapper*, %struct.geni_wrapper** %7, align 8
  store %struct.geni_wrapper* %8, %struct.geni_wrapper** %5, align 8
  %9 = load %struct.geni_wrapper*, %struct.geni_wrapper** %5, align 8
  %10 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load %struct.geni_wrapper*, %struct.geni_wrapper** %5, align 8
  %14 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_bulk_prepare_enable(i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %23 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.geni_wrapper*, %struct.geni_wrapper** %5, align 8
  %30 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load %struct.geni_wrapper*, %struct.geni_wrapper** %5, align 8
  %34 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_bulk_disable_unprepare(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %28, %21
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @clk_bulk_prepare_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
