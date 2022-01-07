; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_qcom_wcnss_assign_iris.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_qcom_wcnss_assign_iris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_wcnss = type { i32, i32, %struct.qcom_iris* }
%struct.qcom_iris = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcom_wcnss_assign_iris(%struct.qcom_wcnss* %0, %struct.qcom_iris* %1, i32 %2) #0 {
  %4 = alloca %struct.qcom_wcnss*, align 8
  %5 = alloca %struct.qcom_iris*, align 8
  %6 = alloca i32, align 4
  store %struct.qcom_wcnss* %0, %struct.qcom_wcnss** %4, align 8
  store %struct.qcom_iris* %1, %struct.qcom_iris** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %4, align 8
  %8 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.qcom_iris*, %struct.qcom_iris** %5, align 8
  %11 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %4, align 8
  %12 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %11, i32 0, i32 2
  store %struct.qcom_iris* %10, %struct.qcom_iris** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %4, align 8
  %15 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %4, align 8
  %17 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %16, i32 0, i32 1
  %18 = call i32 @mutex_unlock(i32* %17)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
