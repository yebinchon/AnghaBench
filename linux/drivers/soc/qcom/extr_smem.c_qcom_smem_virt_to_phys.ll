; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_virt_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_virt_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.smem_region* }
%struct.smem_region = type { i8*, i32, i64 }

@__smem = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_smem_virt_to_phys(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smem_region*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %53, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__smem, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__smem, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.smem_region*, %struct.smem_region** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.smem_region, %struct.smem_region* %16, i64 %18
  store %struct.smem_region* %19, %struct.smem_region** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.smem_region*, %struct.smem_region** %5, align 8
  %22 = getelementptr inbounds %struct.smem_region, %struct.smem_region* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ult i8* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %53

26:                                               ; preds = %13
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.smem_region*, %struct.smem_region** %5, align 8
  %29 = getelementptr inbounds %struct.smem_region, %struct.smem_region* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.smem_region*, %struct.smem_region** %5, align 8
  %32 = getelementptr inbounds %struct.smem_region, %struct.smem_region* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %30, i64 %34
  %36 = icmp ult i8* %27, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %26
  %38 = load i8*, i8** %3, align 8
  %39 = load %struct.smem_region*, %struct.smem_region** %5, align 8
  %40 = getelementptr inbounds %struct.smem_region, %struct.smem_region* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %38 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load %struct.smem_region*, %struct.smem_region** %5, align 8
  %47 = getelementptr inbounds %struct.smem_region, %struct.smem_region* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %2, align 4
  br label %57

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %7

56:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
