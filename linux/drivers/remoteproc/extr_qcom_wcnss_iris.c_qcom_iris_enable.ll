; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss_iris.c_qcom_iris_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss_iris.c_qcom_iris_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_iris = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to enable xo clk\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_iris_enable(%struct.qcom_iris* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_iris*, align 8
  %4 = alloca i32, align 4
  store %struct.qcom_iris* %0, %struct.qcom_iris** %3, align 8
  %5 = load %struct.qcom_iris*, %struct.qcom_iris** %3, align 8
  %6 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.qcom_iris*, %struct.qcom_iris** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regulator_bulk_enable(i32 %7, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.qcom_iris*, %struct.qcom_iris** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.qcom_iris*, %struct.qcom_iris** %3, align 8
  %25 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load %struct.qcom_iris*, %struct.qcom_iris** %3, align 8
  %31 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qcom_iris*, %struct.qcom_iris** %3, align 8
  %34 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_bulk_disable(i32 %32, i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %28, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
