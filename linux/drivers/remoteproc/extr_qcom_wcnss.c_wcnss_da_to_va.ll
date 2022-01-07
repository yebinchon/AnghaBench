; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_da_to_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_da_to_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.qcom_wcnss = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rproc*, i32, i32)* @wcnss_da_to_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wcnss_da_to_va(%struct.rproc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rproc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_wcnss*, align 8
  %9 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rproc*, %struct.rproc** %5, align 8
  %11 = getelementptr inbounds %struct.rproc, %struct.rproc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.qcom_wcnss*
  store %struct.qcom_wcnss* %13, %struct.qcom_wcnss** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %8, align 8
  %16 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %8, align 8
  %26 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %3
  store i8* null, i8** %4, align 8
  br label %37

30:                                               ; preds = %21
  %31 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %8, align 8
  %32 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %30, %29
  %38 = load i8*, i8** %4, align 8
  ret i8* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
