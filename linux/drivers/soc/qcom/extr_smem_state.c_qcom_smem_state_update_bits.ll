; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem_state.c_qcom_smem_state_update_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem_state.c_qcom_smem_state_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem_state = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@ENXIO = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_smem_state_update_bits(%struct.qcom_smem_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_smem_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qcom_smem_state* %0, %struct.qcom_smem_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %5, align 8
  %9 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %5, align 8
  %17 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %5, align 8
  %26 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %27, align 8
  %29 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %5, align 8
  %30 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 %28(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %24, %21, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
