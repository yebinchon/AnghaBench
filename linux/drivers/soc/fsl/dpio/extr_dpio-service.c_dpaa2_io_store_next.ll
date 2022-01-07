; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_store_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_store_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_dq = type { i32 }
%struct.dpaa2_io_store = type { i64, %struct.dpaa2_dq*, i32 }

@DPAA2_DQ_STAT_VALIDFRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpaa2_dq* @dpaa2_io_store_next(%struct.dpaa2_io_store* %0, i32* %1) #0 {
  %3 = alloca %struct.dpaa2_dq*, align 8
  %4 = alloca %struct.dpaa2_io_store*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpaa2_dq*, align 8
  store %struct.dpaa2_io_store* %0, %struct.dpaa2_io_store** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %4, align 8
  %9 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %8, i32 0, i32 1
  %10 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %9, align 8
  %11 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %4, align 8
  %12 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.dpaa2_dq, %struct.dpaa2_dq* %10, i64 %13
  store %struct.dpaa2_dq* %14, %struct.dpaa2_dq** %7, align 8
  %15 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %4, align 8
  %16 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %7, align 8
  %19 = call i32 @qbman_result_has_new_result(i32 %17, %struct.dpaa2_dq* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  store %struct.dpaa2_dq* null, %struct.dpaa2_dq** %3, align 8
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %4, align 8
  %26 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %7, align 8
  %30 = call i64 @dpaa2_dq_is_pull_complete(%struct.dpaa2_dq* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  store i32 1, i32* %33, align 4
  %34 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %4, align 8
  %35 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %7, align 8
  %37 = call i32 @dpaa2_dq_flags(%struct.dpaa2_dq* %36)
  %38 = load i32, i32* @DPAA2_DQ_STAT_VALIDFRAME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store %struct.dpaa2_dq* null, %struct.dpaa2_dq** %7, align 8
  br label %42

42:                                               ; preds = %41, %32
  br label %53

43:                                               ; preds = %24
  %44 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %4, align 8
  %45 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %44, i32 0, i32 1
  %46 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %45, align 8
  %47 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %4, align 8
  %48 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.dpaa2_dq, %struct.dpaa2_dq* %46, i64 %49
  %51 = call i32 @prefetch(%struct.dpaa2_dq* %50)
  %52 = load i32*, i32** %5, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %42
  %54 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %7, align 8
  store %struct.dpaa2_dq* %54, %struct.dpaa2_dq** %3, align 8
  br label %55

55:                                               ; preds = %53, %22
  %56 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %3, align 8
  ret %struct.dpaa2_dq* %56
}

declare dso_local i32 @qbman_result_has_new_result(i32, %struct.dpaa2_dq*) #1

declare dso_local i64 @dpaa2_dq_is_pull_complete(%struct.dpaa2_dq*) #1

declare dso_local i32 @dpaa2_dq_flags(%struct.dpaa2_dq*) #1

declare dso_local i32 @prefetch(%struct.dpaa2_dq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
