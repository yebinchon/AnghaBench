; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_smem.c_glink_smem_rx_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_smem.c_glink_smem_rx_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink_pipe = type { i32 }
%struct.glink_smem_pipe = type { %struct.TYPE_2__, i32*, i32*, i8*, i32 }
%struct.TYPE_2__ = type { i64 }

@SMEM_GLINK_NATIVE_XPRT_FIFO_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to acquire RX fifo handle: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qcom_glink_pipe*)* @glink_smem_rx_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @glink_smem_rx_avail(%struct.qcom_glink_pipe* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qcom_glink_pipe*, align 8
  %4 = alloca %struct.glink_smem_pipe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qcom_glink_pipe* %0, %struct.qcom_glink_pipe** %3, align 8
  %9 = load %struct.qcom_glink_pipe*, %struct.qcom_glink_pipe** %3, align 8
  %10 = call %struct.glink_smem_pipe* @to_smem_pipe(%struct.qcom_glink_pipe* %9)
  store %struct.glink_smem_pipe* %10, %struct.glink_smem_pipe** %4, align 8
  %11 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %4, align 8
  %12 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %1
  %16 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %4, align 8
  %17 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SMEM_GLINK_NATIVE_XPRT_FIFO_1, align 4
  %20 = call i8* @qcom_smem_get(i32 %18, i32 %19, i64* %5)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i64 0, i64* %2, align 8
  br label %63

28:                                               ; preds = %15
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %4, align 8
  %31 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %4, align 8
  %34 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %1
  %37 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %4, align 8
  %38 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %4, align 8
  %43 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %36
  %51 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %4, align 8
  %52 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %54, %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  store i64 %58, i64* %2, align 8
  br label %63

59:                                               ; preds = %36
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %60, %61
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %59, %50, %24
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local %struct.glink_smem_pipe* @to_smem_pipe(%struct.qcom_glink_pipe*) #1

declare dso_local i8* @qcom_smem_get(i32, i32, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
