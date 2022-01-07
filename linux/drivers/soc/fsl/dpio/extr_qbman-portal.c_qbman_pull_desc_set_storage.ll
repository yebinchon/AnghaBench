; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_pull_desc_set_storage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_pull_desc_set_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_pull_desc = type { i32, i32, i64 }
%struct.dpaa2_dq = type { i32 }

@QB_VDQCR_VERB_RLS_SHIFT = common dso_local global i32 0, align 4
@QB_VDQCR_VERB_WAE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qbman_pull_desc_set_storage(%struct.qbman_pull_desc* %0, %struct.dpaa2_dq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qbman_pull_desc*, align 8
  %6 = alloca %struct.dpaa2_dq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qbman_pull_desc* %0, %struct.qbman_pull_desc** %5, align 8
  store %struct.dpaa2_dq* %1, %struct.dpaa2_dq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %6, align 8
  %10 = ptrtoint %struct.dpaa2_dq* %9 to i64
  %11 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %12 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %11, i32 0, i32 2
  store i64 %10, i64* %12, align 8
  %13 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %6, align 8
  %14 = icmp ne %struct.dpaa2_dq* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @QB_VDQCR_VERB_RLS_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %20 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %52

23:                                               ; preds = %4
  %24 = load i32, i32* @QB_VDQCR_VERB_RLS_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %27 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load i32, i32* @QB_VDQCR_VERB_WAE_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %36 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %47

39:                                               ; preds = %23
  %40 = load i32, i32* @QB_VDQCR_VERB_WAE_SHIFT, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %44 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %39, %32
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cpu_to_le64(i32 %48)
  %50 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %5, align 8
  %51 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %15
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
