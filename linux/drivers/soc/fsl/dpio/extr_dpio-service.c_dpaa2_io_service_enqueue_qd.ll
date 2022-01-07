; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_enqueue_qd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_enqueue_qd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { i32 }
%struct.dpaa2_fd = type { i32 }
%struct.qbman_eq_desc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa2_io_service_enqueue_qd(%struct.dpaa2_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpaa2_fd* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpaa2_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpaa2_fd*, align 8
  %12 = alloca %struct.qbman_eq_desc, align 4
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dpaa2_fd* %4, %struct.dpaa2_fd** %11, align 8
  %13 = load %struct.dpaa2_io*, %struct.dpaa2_io** %7, align 8
  %14 = call %struct.dpaa2_io* @service_select(%struct.dpaa2_io* %13)
  store %struct.dpaa2_io* %14, %struct.dpaa2_io** %7, align 8
  %15 = load %struct.dpaa2_io*, %struct.dpaa2_io** %7, align 8
  %16 = icmp ne %struct.dpaa2_io* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %32

20:                                               ; preds = %5
  %21 = call i32 @qbman_eq_desc_clear(%struct.qbman_eq_desc* %12)
  %22 = call i32 @qbman_eq_desc_set_no_orp(%struct.qbman_eq_desc* %12, i32 0)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @qbman_eq_desc_set_qd(%struct.qbman_eq_desc* %12, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.dpaa2_io*, %struct.dpaa2_io** %7, align 8
  %28 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %11, align 8
  %31 = call i32 @qbman_swp_enqueue(i32 %29, %struct.qbman_eq_desc* %12, %struct.dpaa2_fd* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %20, %17
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.dpaa2_io* @service_select(%struct.dpaa2_io*) #1

declare dso_local i32 @qbman_eq_desc_clear(%struct.qbman_eq_desc*) #1

declare dso_local i32 @qbman_eq_desc_set_no_orp(%struct.qbman_eq_desc*, i32) #1

declare dso_local i32 @qbman_eq_desc_set_qd(%struct.qbman_eq_desc*, i32, i32, i32) #1

declare dso_local i32 @qbman_swp_enqueue(i32, %struct.qbman_eq_desc*, %struct.dpaa2_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
