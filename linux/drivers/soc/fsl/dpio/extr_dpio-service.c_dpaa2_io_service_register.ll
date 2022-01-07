; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dpaa2_io_notification_ctx = type { i64, i64, i64, i32, %struct.dpaa2_io*, i32, i32 }
%struct.device = type { i32 }
%struct.device_link = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DL_FLAG_AUTOREMOVE_CONSUMER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa2_io_service_register(%struct.dpaa2_io* %0, %struct.dpaa2_io_notification_ctx* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpaa2_io*, align 8
  %6 = alloca %struct.dpaa2_io_notification_ctx*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_link*, align 8
  %9 = alloca i64, align 8
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %5, align 8
  store %struct.dpaa2_io_notification_ctx* %1, %struct.dpaa2_io_notification_ctx** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %10 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %11 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dpaa2_io* @service_select_by_cpu(%struct.dpaa2_io* %10, i32 %13)
  store %struct.dpaa2_io* %14, %struct.dpaa2_io** %5, align 8
  %15 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %16 = icmp ne %struct.dpaa2_io* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %23 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DL_FLAG_AUTOREMOVE_CONSUMER, align 4
  %26 = call %struct.device_link* @device_link_add(%struct.device* %21, i32 %24, i32 %25)
  store %struct.device_link* %26, %struct.device_link** %8, align 8
  %27 = load %struct.device_link*, %struct.device_link** %8, align 8
  %28 = icmp ne %struct.device_link* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %76

32:                                               ; preds = %20
  %33 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %34 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %40 = ptrtoint %struct.dpaa2_io_notification_ctx* %39 to i64
  %41 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %44 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %44, i32 0, i32 4
  store %struct.dpaa2_io* %43, %struct.dpaa2_io** %45, align 8
  %46 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %47 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %46, i32 0, i32 1
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %50, i32 0, i32 3
  %52 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %53 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %52, i32 0, i32 2
  %54 = call i32 @list_add(i32* %51, i32* %53)
  %55 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %56 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %55, i32 0, i32 1
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %32
  %64 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %65 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @qbman_swp_CDAN_set_context_enable(i32 %66, i32 %70, i64 %73)
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %63, %29, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.dpaa2_io* @service_select_by_cpu(%struct.dpaa2_io*, i32) #1

declare dso_local %struct.device_link* @device_link_add(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qbman_swp_CDAN_set_context_enable(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
