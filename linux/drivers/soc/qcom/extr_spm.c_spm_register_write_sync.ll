; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_spm.c_spm_register_write_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_spm.c_spm_register_write_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spm_driver_data = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spm_driver_data*, i32, i64)* @spm_register_write_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spm_register_write_sync(%struct.spm_driver_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.spm_driver_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.spm_driver_data* %0, %struct.spm_driver_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.spm_driver_data*, %struct.spm_driver_data** %4, align 8
  %9 = getelementptr inbounds %struct.spm_driver_data, %struct.spm_driver_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %57

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %56, %19
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.spm_driver_data*, %struct.spm_driver_data** %4, align 8
  %23 = getelementptr inbounds %struct.spm_driver_data, %struct.spm_driver_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.spm_driver_data*, %struct.spm_driver_data** %4, align 8
  %26 = getelementptr inbounds %struct.spm_driver_data, %struct.spm_driver_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %24, %33
  %35 = call i32 @writel_relaxed(i64 %21, i64 %34)
  %36 = load %struct.spm_driver_data*, %struct.spm_driver_data** %4, align 8
  %37 = getelementptr inbounds %struct.spm_driver_data, %struct.spm_driver_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.spm_driver_data*, %struct.spm_driver_data** %4, align 8
  %40 = getelementptr inbounds %struct.spm_driver_data, %struct.spm_driver_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %38, %47
  %49 = call i64 @readl_relaxed(i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %20
  br label %57

54:                                               ; preds = %20
  %55 = call i32 (...) @cpu_relax()
  br label %56

56:                                               ; preds = %54
  br i1 true, label %20, label %57

57:                                               ; preds = %18, %56, %53
  ret void
}

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
