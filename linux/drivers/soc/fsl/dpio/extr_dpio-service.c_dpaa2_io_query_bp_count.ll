; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_query_bp_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_query_bp_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { i32, %struct.qbman_swp* }
%struct.qbman_swp = type { i32 }
%struct.qbman_bp_query_rslt = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa2_io_query_bp_count(%struct.dpaa2_io* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpaa2_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qbman_bp_query_rslt, align 4
  %9 = alloca %struct.qbman_swp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %13 = call %struct.dpaa2_io* @service_select(%struct.dpaa2_io* %12)
  store %struct.dpaa2_io* %13, %struct.dpaa2_io** %5, align 8
  %14 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %15 = icmp ne %struct.dpaa2_io* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %21 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %20, i32 0, i32 1
  %22 = load %struct.qbman_swp*, %struct.qbman_swp** %21, align 8
  store %struct.qbman_swp* %22, %struct.qbman_swp** %9, align 8
  %23 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %24 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %23, i32 0, i32 0
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.qbman_swp*, %struct.qbman_swp** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @qbman_bp_query(%struct.qbman_swp* %27, i32 %28, %struct.qbman_bp_query_rslt* %8)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %31 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %30, i32 0, i32 0
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %19
  %39 = call i32 @qbman_bp_info_num_free_bufs(%struct.qbman_bp_query_rslt* %8)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %36, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.dpaa2_io* @service_select(%struct.dpaa2_io*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qbman_bp_query(%struct.qbman_swp*, i32, %struct.qbman_bp_query_rslt*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qbman_bp_info_num_free_bufs(%struct.qbman_bp_query_rslt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
