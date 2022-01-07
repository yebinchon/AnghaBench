; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_priv.h_qman_cgrs_xor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_priv.h_qman_cgrs_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_cgrs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_cgrs*, %struct.qman_cgrs*, %struct.qman_cgrs*)* @qman_cgrs_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qman_cgrs_xor(%struct.qman_cgrs* %0, %struct.qman_cgrs* %1, %struct.qman_cgrs* %2) #0 {
  %4 = alloca %struct.qman_cgrs*, align 8
  %5 = alloca %struct.qman_cgrs*, align 8
  %6 = alloca %struct.qman_cgrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.qman_cgrs* %0, %struct.qman_cgrs** %4, align 8
  store %struct.qman_cgrs* %1, %struct.qman_cgrs** %5, align 8
  store %struct.qman_cgrs* %2, %struct.qman_cgrs** %6, align 8
  %11 = load %struct.qman_cgrs*, %struct.qman_cgrs** %4, align 8
  %12 = getelementptr inbounds %struct.qman_cgrs, %struct.qman_cgrs* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.qman_cgrs*, %struct.qman_cgrs** %5, align 8
  %16 = getelementptr inbounds %struct.qman_cgrs, %struct.qman_cgrs* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.qman_cgrs*, %struct.qman_cgrs** %6, align 8
  %20 = getelementptr inbounds %struct.qman_cgrs, %struct.qman_cgrs* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %36, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %27, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* %30, align 4
  %33 = xor i32 %29, %32
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %23

39:                                               ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
