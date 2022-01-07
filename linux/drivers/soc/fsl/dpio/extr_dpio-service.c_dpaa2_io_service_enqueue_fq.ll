; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_enqueue_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_enqueue_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { i32 }
%struct.dpaa2_fd = type { i32 }
%struct.qbman_eq_desc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa2_io_service_enqueue_fq(%struct.dpaa2_io* %0, i32 %1, %struct.dpaa2_fd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpaa2_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpaa2_fd*, align 8
  %8 = alloca %struct.qbman_eq_desc, align 4
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dpaa2_fd* %2, %struct.dpaa2_fd** %7, align 8
  %9 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %10 = call %struct.dpaa2_io* @service_select(%struct.dpaa2_io* %9)
  store %struct.dpaa2_io* %10, %struct.dpaa2_io** %5, align 8
  %11 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %12 = icmp ne %struct.dpaa2_io* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %3
  %17 = call i32 @qbman_eq_desc_clear(%struct.qbman_eq_desc* %8)
  %18 = call i32 @qbman_eq_desc_set_no_orp(%struct.qbman_eq_desc* %8, i32 0)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @qbman_eq_desc_set_fq(%struct.qbman_eq_desc* %8, i32 %19)
  %21 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %22 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %7, align 8
  %25 = call i32 @qbman_swp_enqueue(i32 %23, %struct.qbman_eq_desc* %8, %struct.dpaa2_fd* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.dpaa2_io* @service_select(%struct.dpaa2_io*) #1

declare dso_local i32 @qbman_eq_desc_clear(%struct.qbman_eq_desc*) #1

declare dso_local i32 @qbman_eq_desc_set_no_orp(%struct.qbman_eq_desc*, i32) #1

declare dso_local i32 @qbman_eq_desc_set_fq(%struct.qbman_eq_desc*, i32) #1

declare dso_local i32 @qbman_swp_enqueue(i32, %struct.qbman_eq_desc*, %struct.dpaa2_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
