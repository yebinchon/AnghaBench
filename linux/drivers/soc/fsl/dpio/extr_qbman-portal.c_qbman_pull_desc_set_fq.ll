; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_pull_desc_set_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_pull_desc_set_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_pull_desc = type { i32, i32 }

@QB_VDQCR_VERB_DCT_SHIFT = common dso_local global i32 0, align 4
@qb_pull_dt_framequeue = common dso_local global i32 0, align 4
@QB_VDQCR_VERB_DT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qbman_pull_desc_set_fq(%struct.qbman_pull_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.qbman_pull_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.qbman_pull_desc* %0, %struct.qbman_pull_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @QB_VDQCR_VERB_DCT_SHIFT, align 4
  %6 = shl i32 1, %5
  %7 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %3, align 8
  %8 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @qb_pull_dt_framequeue, align 4
  %12 = load i32, i32* @QB_VDQCR_VERB_DT_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %3, align 8
  %15 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = load %struct.qbman_pull_desc*, %struct.qbman_pull_desc** %3, align 8
  %21 = getelementptr inbounds %struct.qbman_pull_desc, %struct.qbman_pull_desc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
