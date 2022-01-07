; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { %struct.qbman_swp* }
%struct.qbman_swp = type { i32 }
%struct.dpaa2_dq = type { i32 }
%struct.dpaa2_io_notification_ctx = type { i32 (%struct.dpaa2_io_notification_ctx*)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"fsl-mc-dpio: Unrecognised/ignored DQRR entry\0A\00", align 1
@DPAA_POLL_MAX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa2_io_irq(%struct.dpaa2_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa2_io*, align 8
  %4 = alloca %struct.dpaa2_dq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qbman_swp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpaa2_io_notification_ctx*, align 8
  %9 = alloca i64, align 8
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.dpaa2_io*, %struct.dpaa2_io** %3, align 8
  %11 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %10, i32 0, i32 0
  %12 = load %struct.qbman_swp*, %struct.qbman_swp** %11, align 8
  store %struct.qbman_swp* %12, %struct.qbman_swp** %6, align 8
  %13 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %14 = call i32 @qbman_swp_interrupt_read_status(%struct.qbman_swp* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %21 = call %struct.dpaa2_dq* @qbman_swp_dqrr_next(%struct.qbman_swp* %20)
  store %struct.dpaa2_dq* %21, %struct.dpaa2_dq** %4, align 8
  br label %22

22:                                               ; preds = %52, %19
  %23 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %4, align 8
  %24 = icmp ne %struct.dpaa2_dq* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  %26 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %4, align 8
  %27 = call i64 @qbman_result_is_SCN(%struct.dpaa2_dq* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %4, align 8
  %31 = call i64 @qbman_result_SCN_ctx(%struct.dpaa2_dq* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.dpaa2_io_notification_ctx*
  store %struct.dpaa2_io_notification_ctx* %34, %struct.dpaa2_io_notification_ctx** %8, align 8
  %35 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.dpaa2_io_notification_ctx, %struct.dpaa2_io_notification_ctx* %35, i32 0, i32 0
  %37 = load i32 (%struct.dpaa2_io_notification_ctx*)*, i32 (%struct.dpaa2_io_notification_ctx*)** %36, align 8
  %38 = load %struct.dpaa2_io_notification_ctx*, %struct.dpaa2_io_notification_ctx** %8, align 8
  %39 = call i32 %37(%struct.dpaa2_io_notification_ctx* %38)
  br label %42

40:                                               ; preds = %25
  %41 = call i32 @pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %29
  %43 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %44 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %4, align 8
  %45 = call i32 @qbman_swp_dqrr_consume(%struct.qbman_swp* %43, %struct.dpaa2_dq* %44)
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DPAA_POLL_MAX, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  %53 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %54 = call %struct.dpaa2_dq* @qbman_swp_dqrr_next(%struct.qbman_swp* %53)
  store %struct.dpaa2_dq* %54, %struct.dpaa2_dq** %4, align 8
  br label %22

55:                                               ; preds = %22
  br label %56

56:                                               ; preds = %55, %51
  %57 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @qbman_swp_interrupt_clear_status(%struct.qbman_swp* %57, i32 %58)
  %60 = load %struct.qbman_swp*, %struct.qbman_swp** %6, align 8
  %61 = call i32 @qbman_swp_interrupt_set_inhibit(%struct.qbman_swp* %60, i32 0)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %56, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @qbman_swp_interrupt_read_status(%struct.qbman_swp*) #1

declare dso_local %struct.dpaa2_dq* @qbman_swp_dqrr_next(%struct.qbman_swp*) #1

declare dso_local i64 @qbman_result_is_SCN(%struct.dpaa2_dq*) #1

declare dso_local i64 @qbman_result_SCN_ctx(%struct.dpaa2_dq*) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @qbman_swp_dqrr_consume(%struct.qbman_swp*, %struct.dpaa2_dq*) #1

declare dso_local i32 @qbman_swp_interrupt_clear_status(%struct.qbman_swp*, i32) #1

declare dso_local i32 @qbman_swp_interrupt_set_inhibit(%struct.qbman_swp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
