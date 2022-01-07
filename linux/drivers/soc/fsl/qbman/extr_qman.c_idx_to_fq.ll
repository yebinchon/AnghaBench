; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_idx_to_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_idx_to_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32 }

@fq_table = common dso_local global %struct.qman_fq** null, align 8
@num_fqids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qman_fq* (i32)* @idx_to_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qman_fq* @idx_to_fq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qman_fq*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.qman_fq**, %struct.qman_fq*** @fq_table, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.qman_fq*, %struct.qman_fq** %4, i64 %6
  %8 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  store %struct.qman_fq* %8, %struct.qman_fq** %3, align 8
  %9 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %10 = icmp ne %struct.qman_fq* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %14 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @DPAA_ASSERT(i32 %19)
  %21 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  ret %struct.qman_fq* %21
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
