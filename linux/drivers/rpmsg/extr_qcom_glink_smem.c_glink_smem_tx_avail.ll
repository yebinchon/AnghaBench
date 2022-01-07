; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_smem.c_glink_smem_tx_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_smem.c_glink_smem_tx_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink_pipe = type { i32 }
%struct.glink_smem_pipe = type { %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i64 }

@FIFO_FULL_RESERVE = common dso_local global i64 0, align 8
@TX_BLOCKED_CMD_RESERVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qcom_glink_pipe*)* @glink_smem_tx_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @glink_smem_tx_avail(%struct.qcom_glink_pipe* %0) #0 {
  %2 = alloca %struct.qcom_glink_pipe*, align 8
  %3 = alloca %struct.glink_smem_pipe*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.qcom_glink_pipe* %0, %struct.qcom_glink_pipe** %2, align 8
  %7 = load %struct.qcom_glink_pipe*, %struct.qcom_glink_pipe** %2, align 8
  %8 = call %struct.glink_smem_pipe* @to_smem_pipe(%struct.qcom_glink_pipe* %7)
  store %struct.glink_smem_pipe* %8, %struct.glink_smem_pipe** %3, align 8
  %9 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %3, align 8
  %10 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le32_to_cpu(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %3, align 8
  %15 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le32_to_cpu(i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %3, align 8
  %24 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %6, align 8
  br label %35

31:                                               ; preds = %1
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @FIFO_FULL_RESERVE, align 8
  %38 = load i64, i64* @TX_BLOCKED_CMD_RESERVE, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %48

42:                                               ; preds = %35
  %43 = load i64, i64* @FIFO_FULL_RESERVE, align 8
  %44 = load i64, i64* @TX_BLOCKED_CMD_RESERVE, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* %6, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %42, %41
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local %struct.glink_smem_pipe* @to_smem_pipe(%struct.qcom_glink_pipe*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
