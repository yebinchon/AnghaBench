; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_da_to_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_da_to_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.q6v5_wcss* }
%struct.q6v5_wcss = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rproc*, i32, i32)* @q6v5_wcss_da_to_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @q6v5_wcss_da_to_va(%struct.rproc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rproc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.q6v5_wcss*, align 8
  %9 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rproc*, %struct.rproc** %5, align 8
  %11 = getelementptr inbounds %struct.rproc, %struct.rproc* %10, i32 0, i32 0
  %12 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %11, align 8
  store %struct.q6v5_wcss* %12, %struct.q6v5_wcss** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %8, align 8
  %15 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %8, align 8
  %25 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %3
  store i8* null, i8** %4, align 8
  br label %36

29:                                               ; preds = %20
  %30 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %8, align 8
  %31 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i8*, i8** %4, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
