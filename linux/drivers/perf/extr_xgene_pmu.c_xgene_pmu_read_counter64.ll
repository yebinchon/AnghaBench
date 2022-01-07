; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_read_counter64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_read_counter64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_pmu_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_pmu_dev*, i32)* @xgene_pmu_read_counter64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_pmu_read_counter64(%struct.xgene_pmu_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_pmu_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xgene_pmu_dev* %0, %struct.xgene_pmu_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %17, %2
  %8 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 2, %9
  %11 = add nsw i32 %10, 1
  %12 = call i64 @xgene_pmu_read_counter32(%struct.xgene_pmu_dev* %8, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 2, %14
  %16 = call i64 @xgene_pmu_read_counter32(%struct.xgene_pmu_dev* %13, i32 %15)
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %7
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %21, 1
  %23 = call i64 @xgene_pmu_read_counter32(%struct.xgene_pmu_dev* %19, i32 %22)
  %24 = icmp ne i64 %18, %23
  br i1 %24, label %7, label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 32
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %29, %30
  %32 = trunc i64 %31 to i32
  ret i32 %32
}

declare dso_local i64 @xgene_pmu_read_counter32(%struct.xgene_pmu_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
