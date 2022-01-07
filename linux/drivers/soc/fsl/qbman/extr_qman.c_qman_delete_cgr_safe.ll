; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_delete_cgr_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_delete_cgr_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_cgr = type { i64 }

@qman_cgr_cpus = common dso_local global i64* null, align 8
@qman_delete_cgr_smp_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qman_delete_cgr_safe(%struct.qman_cgr* %0) #0 {
  %2 = alloca %struct.qman_cgr*, align 8
  store %struct.qman_cgr* %0, %struct.qman_cgr** %2, align 8
  %3 = call i32 (...) @preempt_disable()
  %4 = load i64*, i64** @qman_cgr_cpus, align 8
  %5 = load %struct.qman_cgr*, %struct.qman_cgr** %2, align 8
  %6 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i64, i64* %4, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = call i64 (...) @smp_processor_id()
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i64*, i64** @qman_cgr_cpus, align 8
  %14 = load %struct.qman_cgr*, %struct.qman_cgr** %2, align 8
  %15 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @qman_delete_cgr_smp_call, align 4
  %20 = load %struct.qman_cgr*, %struct.qman_cgr** %2, align 8
  %21 = call i32 @smp_call_function_single(i64 %18, i32 %19, %struct.qman_cgr* %20, i32 1)
  %22 = call i32 (...) @preempt_enable()
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.qman_cgr*, %struct.qman_cgr** %2, align 8
  %25 = call i32 @qman_delete_cgr(%struct.qman_cgr* %24)
  %26 = call i32 (...) @preempt_enable()
  br label %27

27:                                               ; preds = %23, %12
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @smp_call_function_single(i64, i32, %struct.qman_cgr*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @qman_delete_cgr(%struct.qman_cgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
