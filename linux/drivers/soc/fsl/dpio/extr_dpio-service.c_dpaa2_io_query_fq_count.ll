; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_query_fq_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_query_fq_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { i32, %struct.qbman_swp* }
%struct.qbman_swp = type { i32 }
%struct.qbman_fq_query_np_rslt = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa2_io_query_fq_count(%struct.dpaa2_io* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpaa2_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.qbman_fq_query_np_rslt, align 4
  %11 = alloca %struct.qbman_swp*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %15 = call %struct.dpaa2_io* @service_select(%struct.dpaa2_io* %14)
  store %struct.dpaa2_io* %15, %struct.dpaa2_io** %6, align 8
  %16 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %17 = icmp ne %struct.dpaa2_io* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %23 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %22, i32 0, i32 1
  %24 = load %struct.qbman_swp*, %struct.qbman_swp** %23, align 8
  store %struct.qbman_swp* %24, %struct.qbman_swp** %11, align 8
  %25 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %26 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %25, i32 0, i32 0
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.qbman_swp*, %struct.qbman_swp** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @qbman_fq_query_state(%struct.qbman_swp* %29, i32 %30, %struct.qbman_fq_query_np_rslt* %10)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %33 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %32, i32 0, i32 0
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %21
  %41 = call i32 @qbman_fq_state_frame_count(%struct.qbman_fq_query_np_rslt* %10)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = call i32 @qbman_fq_state_byte_count(%struct.qbman_fq_query_np_rslt* %10)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %38, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.dpaa2_io* @service_select(%struct.dpaa2_io*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qbman_fq_query_state(%struct.qbman_swp*, i32, %struct.qbman_fq_query_np_rslt*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qbman_fq_state_frame_count(%struct.qbman_fq_query_np_rslt*) #1

declare dso_local i32 @qbman_fq_state_byte_count(%struct.qbman_fq_query_np_rslt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
