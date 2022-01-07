; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_rearm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_rearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { i32, i32 }
%struct.dpaa2_io_notification_ctx = type { i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa2_io_service_rearm(%struct.dpaa2_io* %0, %struct.dpaa2_io_notification_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa2_io*, align 8
  %5 = alloca %struct.dpaa2_io_notification_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %4, align 8
  store %struct.dpaa2_io_notification_ctx* %1, %struct.dpaa2_io_notification_ctx** %5, align 8
  %8 = load %struct.dpaa2_io*, %struct.dpaa2_io** %4, align 8
  %9 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.dpaa2_io* @service_select_by_cpu(%struct.dpaa2_io* %8, i32 %11)
  store %struct.dpaa2_io* %12, %struct.dpaa2_io** %4, align 8
  %13 = load %struct.dpaa2_io*, %struct.dpaa2_io** %4, align 8
  %14 = call i32 @unlikely(%struct.dpaa2_io* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.dpaa2_io*, %struct.dpaa2_io** %4, align 8
  %21 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.dpaa2_io*, %struct.dpaa2_io** %4, align 8
  %30 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @qbman_swp_CDAN_enable(i32 %31, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %19
  %38 = load %struct.dpaa2_io*, %struct.dpaa2_io** %4, align 8
  %39 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @qbman_swp_fq_schedule(i32 %40, i64 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %28
  %46 = load %struct.dpaa2_io*, %struct.dpaa2_io** %4, align 8
  %47 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.dpaa2_io* @service_select_by_cpu(%struct.dpaa2_io*, i32) #1

declare dso_local i32 @unlikely(%struct.dpaa2_io*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qbman_swp_CDAN_enable(i32, i32) #1

declare dso_local i32 @qbman_swp_fq_schedule(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
