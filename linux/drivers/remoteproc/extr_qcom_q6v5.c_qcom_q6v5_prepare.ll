; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_qcom_q6v5_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_qcom_q6v5_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_q6v5 = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_q6v5_prepare(%struct.qcom_q6v5* %0) #0 {
  %2 = alloca %struct.qcom_q6v5*, align 8
  store %struct.qcom_q6v5* %0, %struct.qcom_q6v5** %2, align 8
  %3 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %4 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %3, i32 0, i32 4
  %5 = call i32 @reinit_completion(i32* %4)
  %6 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %7 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %6, i32 0, i32 3
  %8 = call i32 @reinit_completion(i32* %7)
  %9 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %10 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %12 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %14 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @enable_irq(i32 %15)
  ret i32 0
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
