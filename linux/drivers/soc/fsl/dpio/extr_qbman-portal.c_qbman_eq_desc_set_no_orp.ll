; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_eq_desc_set_no_orp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_eq_desc_set_no_orp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_eq_desc = type { i32 }

@QB_ENQUEUE_CMD_ORP_ENABLE_SHIFT = common dso_local global i32 0, align 4
@enqueue_response_always = common dso_local global i32 0, align 4
@enqueue_rejects_to_fq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qbman_eq_desc_set_no_orp(%struct.qbman_eq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.qbman_eq_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.qbman_eq_desc* %0, %struct.qbman_eq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @QB_ENQUEUE_CMD_ORP_ENABLE_SHIFT, align 4
  %6 = shl i32 1, %5
  %7 = xor i32 %6, -1
  %8 = load %struct.qbman_eq_desc*, %struct.qbman_eq_desc** %3, align 8
  %9 = getelementptr inbounds %struct.qbman_eq_desc, %struct.qbman_eq_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @enqueue_response_always, align 4
  %16 = load %struct.qbman_eq_desc*, %struct.qbman_eq_desc** %3, align 8
  %17 = getelementptr inbounds %struct.qbman_eq_desc, %struct.qbman_eq_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @enqueue_rejects_to_fq, align 4
  %22 = load %struct.qbman_eq_desc*, %struct.qbman_eq_desc** %3, align 8
  %23 = getelementptr inbounds %struct.qbman_eq_desc, %struct.qbman_eq_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
