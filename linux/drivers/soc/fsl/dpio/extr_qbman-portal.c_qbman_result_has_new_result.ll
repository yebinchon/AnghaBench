; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_result_has_new_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_result_has_new_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dpaa2_dq* }
%struct.dpaa2_dq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@QMAN_DQ_TOKEN_VALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qbman_result_has_new_result(%struct.qbman_swp* %0, %struct.dpaa2_dq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qbman_swp*, align 8
  %5 = alloca %struct.dpaa2_dq*, align 8
  store %struct.qbman_swp* %0, %struct.qbman_swp** %4, align 8
  store %struct.dpaa2_dq* %1, %struct.dpaa2_dq** %5, align 8
  %6 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %5, align 8
  %7 = getelementptr inbounds %struct.dpaa2_dq, %struct.dpaa2_dq* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QMAN_DQ_TOKEN_VALID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %5, align 8
  %15 = getelementptr inbounds %struct.dpaa2_dq, %struct.dpaa2_dq* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %18 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %19, align 8
  %21 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %5, align 8
  %22 = icmp eq %struct.dpaa2_dq* %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %25 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store %struct.dpaa2_dq* null, %struct.dpaa2_dq** %26, align 8
  %27 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %28 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @atomic_inc(i32* %29)
  br label %31

31:                                               ; preds = %23, %13
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
