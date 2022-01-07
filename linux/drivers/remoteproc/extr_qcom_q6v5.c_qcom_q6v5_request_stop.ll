; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_qcom_q6v5_request_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_qcom_q6v5_request_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_q6v5 = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_q6v5_request_stop(%struct.qcom_q6v5* %0) #0 {
  %2 = alloca %struct.qcom_q6v5*, align 8
  %3 = alloca i32, align 4
  store %struct.qcom_q6v5* %0, %struct.qcom_q6v5** %2, align 8
  %4 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %5 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %8 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %12 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = call i32 @qcom_smem_state_update_bits(i32 %6, i32 %10, i32 %14)
  %16 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %17 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %16, i32 0, i32 2
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 5, %18
  %20 = call i32 @wait_for_completion_timeout(i32* %17, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %22 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %2, align 8
  %25 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = call i32 @qcom_smem_state_update_bits(i32 %23, i32 %27, i32 0)
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  ret i32 %36
}

declare dso_local i32 @qcom_smem_state_update_bits(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
