; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_smem.c_glink_smem_tx_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_smem.c_glink_smem_tx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink_pipe = type { i32 }
%struct.glink_smem_pipe = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_glink_pipe*, i8*, i64, i8*, i64)* @glink_smem_tx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glink_smem_tx_write(%struct.qcom_glink_pipe* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.qcom_glink_pipe*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.glink_smem_pipe*, align 8
  %12 = alloca i32, align 4
  store %struct.qcom_glink_pipe* %0, %struct.qcom_glink_pipe** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.qcom_glink_pipe*, %struct.qcom_glink_pipe** %6, align 8
  %14 = call %struct.glink_smem_pipe* @to_smem_pipe(%struct.qcom_glink_pipe* %13)
  store %struct.glink_smem_pipe* %14, %struct.glink_smem_pipe** %11, align 8
  %15 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %11, align 8
  %16 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @glink_smem_tx_write_one(%struct.glink_smem_pipe* %20, i32 %21, i8* %22, i64 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @glink_smem_tx_write_one(%struct.glink_smem_pipe* %25, i32 %26, i8* %27, i64 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @ALIGN(i32 %30, i32 8)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %11, align 8
  %34 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %32, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %5
  %39 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %11, align 8
  %40 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sub i32 %43, %42
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %38, %5
  %46 = call i32 (...) @wmb()
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %11, align 8
  %50 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32 %48, i32* %51, align 4
  ret void
}

declare dso_local %struct.glink_smem_pipe* @to_smem_pipe(%struct.qcom_glink_pipe*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @glink_smem_tx_write_one(%struct.glink_smem_pipe*, i32, i8*, i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
